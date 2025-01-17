#include <string.h>
#include <math.h>
#include "mtbdd.h"
#include "mtbdd_out.h"
#include "sylvan_int.h" // for cache_next_opid()
#include "hash.h"
#include "error.h"

// Custom leaf implementation is taken from: https://github.com/MichalHe/sylvan-custom-leaf-example

/// leaf type id generated by "circuit_init(...)" func
uint32_t ltype_id;
/// Opid id generated by "init_my_leaf(...)" func
uint64_t mtbdd_apply_gate_id;
/// Opid id generated by "init_my_leaf(...)" func
uint64_t mtbdd_apply_cgate_id;
/// coefficient k common for all MTBDD leaf values
coef_t c_k;


/// Max. size of string written as leaf value in output file
#define MAX_LEAF_STR_LEN 250

/// Max. number of digits written in the .dot output file of a single number
#define MAX_NUM_LEN 50

/// Return min from two numbers
#define GET_MIN(a, b) ((a) < (b))? (a) : (b)


/**
 * Function for calculating the probability from a given complex number
 */
static inline prob_t calculate_prob(cnum* prob);

/* SETUP */
void init_sylvan() {
    lace_start(1, 0); // 1 thread, default task queue size
    sylvan_set_limits(2000LL*1024*1024, 3, 5); // Allocate 2GB
    sylvan_init_package();
    sylvan_init_mtbdd();
}

void init_my_leaf(bool is_prob)
{
    ltype_id = sylvan_mt_create_type();
    mtbdd_apply_gate_id = cache_next_opid();
    mtbdd_apply_cgate_id = cache_next_opid();

    sylvan_mt_set_create(ltype_id, my_leaf_create);
    sylvan_mt_set_destroy(ltype_id, my_leaf_destroy);
    sylvan_mt_set_equals(ltype_id, my_leaf_equals);
    if (is_prob) {
        sylvan_mt_set_to_str(ltype_id, my_leaf_to_str_prob);
    }
    else {
        sylvan_mt_set_to_str(ltype_id, my_leaf_to_str);
    }
    sylvan_mt_set_hash(ltype_id, my_leaf_hash);
}

void circuit_init(MTBDD *c, const uint32_t n)
{
    BDDSET variables = mtbdd_set_empty();
    for (uint32_t i = 0; i < n; i++) {
        variables = mtbdd_set_add(variables, i);
    }

    cnum point; // can be local, mtbdd_makeleaf makes realloc
    mpz_init_set_ui(point.a, 1);
    mpz_inits(point.b, point.c, point.d, c_k, NULL);
    uint8_t point_symbol[n];
    memset(point_symbol, 0, n*sizeof(uint8_t));
    MTBDD leaf  = mtbdd_makeleaf(ltype_id, (uint64_t) &point);
    *c = mtbdd_cube(variables, point_symbol, leaf);

    mpz_clears(point.a, point.b, point.c, point.d, NULL);
}

void circuit_delete(MTBDD *c)
{
    mtbdd_unprotect(c);
    mpz_clear(c_k);
}

void stop_sylvan()
{
    sylvan_quit();
    lace_stop();
}

/* CUSTOM HANDLES */
void my_leaf_create(uint64_t *ldata_p_raw)
{
    cnum** ldata_p = (cnum**)ldata_p_raw; // Leaf data type is uint64_t, we store there ptr to our actual data
    
    cnum* orig_ldata = *ldata_p;
    cnum* new_ldata = (cnum*)my_malloc(sizeof(cnum));

    mpz_init_set(new_ldata->a, orig_ldata->a);
    mpz_init_set(new_ldata->b, orig_ldata->b);
    mpz_init_set(new_ldata->c, orig_ldata->c);
    mpz_init_set(new_ldata->d, orig_ldata->d);

    *ldata_p = new_ldata;
}

void my_leaf_destroy(uint64_t ldata)
{
    cnum *data_p = (cnum*) ldata; // Data in leaf = pointer to my data
    mpz_clears(data_p->a, data_p->b, data_p->c, data_p->d, NULL);
    free(data_p);
}

int my_leaf_equals(const uint64_t ldata_a_raw, const uint64_t ldata_b_raw)
{
    cnum *ldata_a = (cnum*) ldata_a_raw;
    cnum *ldata_b = (cnum*) ldata_b_raw;

    return !mpz_cmp(ldata_a->a, ldata_b->a) && !mpz_cmp(ldata_a->b, ldata_b->b) && !mpz_cmp(ldata_a->c, ldata_b->c) \
           && !mpz_cmp(ldata_a->d, ldata_b->d);
}

/**
 * Saves the leaf value string representation into the given buffer. If the number is too large, adds it into the map.
 * 
 * Needs both a,b,c,d,k and leaf data - to save the leaf data ptr in lnum_map
 * and to check the length agains a,b,c,d (possibly reduced).
 */
static int _leaf_to_str_output(char *buf, cnum *ldata, mpz_t a, mpz_t b, mpz_t c, mpz_t d, mpz_t k, mp_bitcnt_t shift_cnt)
{
    char buf_a[MAX_NUM_LEN + 2] = {0}; // +2 for sign and '\0'
    char buf_b[MAX_NUM_LEN + 2] = {0};
    char buf_c[MAX_NUM_LEN + 2] = {0};
    char buf_d[MAX_NUM_LEN + 2] = {0};
    int chars_written;
    
    if (mpz_sizeinbase(a, 10) > MAX_NUM_LEN) {
        chars_written = snprintf(buf_a, MAX_NUM_LEN + 2, VAR_NAME_FMT, lnum_map_add(&(ldata->a), shift_cnt));
        // variable length shouldn't exceed the max length but check to make sure
        assert(chars_written < MAX_NUM_LEN + 2 && chars_written >= 0);
    }
    else {
        // will always fit
        gmp_snprintf(buf_a, MAX_NUM_LEN + 2, "%Zd", a);
    }

    if (mpz_sizeinbase(b, 10) > MAX_NUM_LEN) {
        chars_written = snprintf(buf_b, MAX_NUM_LEN + 2, "+"VAR_NAME_FMT, lnum_map_add(&(ldata->b), shift_cnt));
        assert(chars_written < MAX_NUM_LEN + 2 && chars_written >= 0);
    }
    else {
        gmp_snprintf(buf_b, MAX_NUM_LEN + 2, "%+Zd", b);
    }

    if (mpz_sizeinbase(c, 10) > MAX_NUM_LEN) {
        chars_written = snprintf(buf_c, MAX_NUM_LEN + 2, "+"VAR_NAME_FMT, lnum_map_add(&(ldata->c), shift_cnt));
        assert(chars_written < MAX_NUM_LEN + 2 && chars_written >= 0);
    }
    else {
        gmp_snprintf(buf_c, MAX_NUM_LEN + 2, "%+Zd", c);
    }

    if (mpz_sizeinbase(d, 10) > MAX_NUM_LEN) {
        chars_written = snprintf(buf_d, MAX_NUM_LEN + 2, "+"VAR_NAME_FMT, lnum_map_add(&(ldata->d), shift_cnt));
        assert(chars_written < MAX_NUM_LEN + 2 && chars_written >= 0);
    }
    else {
        gmp_snprintf(buf_d, MAX_NUM_LEN + 2, "%+Zd", d);
    }

    chars_written = gmp_snprintf(buf, MAX_LEAF_STR_LEN, "(1/√2)^(%Zd) * (%s%sω%sω²%sω³)", k, buf_a, buf_b, buf_c, buf_d);
    return chars_written;
}

char* my_leaf_to_str(int complemented, uint64_t ldata_raw, char *sylvan_buf, size_t sylvan_bufsize)
{
    (void) complemented;
    cnum *ldata = (cnum*) ldata_raw;
    char ldata_string[MAX_LEAF_STR_LEN] = {0};
    int chars_written;
    // Result in leaf will be divided by GCD for better clarity
    if (mpz_even_p(ldata->a) && mpz_even_p(ldata->b) && mpz_even_p(ldata->c) && mpz_even_p(ldata->d)) {
        mp_bitcnt_t greatest_pow2_a = mpz_scan1(ldata->a, 0);
        mp_bitcnt_t greatest_pow2_b = mpz_scan1(ldata->b, 0);
        mp_bitcnt_t greatest_pow2_c = mpz_scan1(ldata->c, 0);
        mp_bitcnt_t greatest_pow2_d = mpz_scan1(ldata->d, 0);

        mp_bitcnt_t greatest_pow2 = GET_MIN(GET_MIN(GET_MIN(greatest_pow2_a, greatest_pow2_b), greatest_pow2_c), greatest_pow2_d);

        // Get the power of 2, by which the result will be divided
        // Will be k/2 for even k and (k-1)/2 for odd k
        assert(mpz_fits_uint_p(c_k));
        mp_bitcnt_t pow2 = mpz_get_ui(c_k) >> 1;

        mp_bitcnt_t shift_cnt = GET_MIN(greatest_pow2, pow2);

        mpz_t a,b,c,d,k;
        mpz_inits(a, b, c, d, k, NULL);
        mpz_fdiv_q_2exp(a, ldata->a, shift_cnt);
        mpz_fdiv_q_2exp(b, ldata->b, shift_cnt);
        mpz_fdiv_q_2exp(c, ldata->c, shift_cnt);
        mpz_fdiv_q_2exp(d, ldata->d, shift_cnt);
        unsigned long k_decrement = shift_cnt << 1; // need to subtract 2*shift_cnt from c_k
        mpz_sub_ui(k, c_k, k_decrement);

        chars_written = _leaf_to_str_output(ldata_string, ldata, a, b, c, d,k, shift_cnt);
        mpz_clears(a, b, c, d, k, NULL);
    }
    else {
        chars_written = _leaf_to_str_output(ldata_string, ldata, ldata->a, ldata->b, ldata->c, ldata->d, c_k, 0);
    }

    // Was string truncated?
    if (chars_written >= MAX_LEAF_STR_LEN) {
        error_exit("Allocated string length for leaf value output has not been sufficient.\n");
    }
    else if (chars_written < 0) {
        error_exit("An encoding error has occured when producing leaf value output.\n");
    }

    // Is buffer large enough?
    if (chars_written < sylvan_bufsize) {
        memcpy(sylvan_buf, ldata_string, chars_written * sizeof(char));
        sylvan_buf[chars_written] = '\0';
        return sylvan_buf;
    }
    
    // Else return newly allocated string
    char *new_buf = (char*)my_malloc((chars_written + 1) * sizeof(char));
    memcpy(new_buf, ldata_string, chars_written * sizeof(char));
    new_buf[chars_written] = '\0';
    return new_buf;
}

char* my_leaf_to_str_prob(int complemented, uint64_t ldata_raw, char *sylvan_buf, size_t sylvan_bufsize)
{
    (void) complemented;
    char ldata_string[MAX_LEAF_STR_LEN] = {0};
    int chars_written;

    prob_t p = calculate_prob((cnum*) ldata_raw);
    chars_written = snprintf(ldata_string, MAX_LEAF_STR_LEN, "%f", p);

    // Was string truncated?
    if (chars_written >= MAX_LEAF_STR_LEN) {
        error_exit("Allocated string length for the probability leaf value output has not been sufficient.\n");
    }
    else if (chars_written < 0) {
        error_exit("An encoding error has occured when producing probability leaf value output.\n");
    }

    // Is buffer large enough?
    if (chars_written < sylvan_bufsize) {
        memcpy(sylvan_buf, ldata_string, chars_written * sizeof(char));
        sylvan_buf[chars_written] = '\0';
        return sylvan_buf;
    }
    
    // Else return newly allocated string
    char *new_buf = (char*)my_malloc((chars_written + 1) * sizeof(char));
    memcpy(new_buf, ldata_string, chars_written * sizeof(char));
    new_buf[chars_written] = '\0';
    return new_buf;
}

uint64_t my_leaf_hash(const uint64_t ldata_raw, const uint64_t seed)
{
    cnum *ldata = (cnum*) ldata_raw;

    uint64_t val = seed;
    
    val = MY_HASH_COMB_GMP(val, ldata->d);
    val = MY_HASH_COMB_GMP(val, ldata->c);
    val = MY_HASH_COMB_GMP(val, ldata->b);
    val = MY_HASH_COMB_GMP(val, ldata->a);

    return val;
}

/* CUSTOM MTBDD OPERATIONS */
// Basic operations:
TASK_IMPL_2(MTBDD, mtbdd_plus, MTBDD*, p_a, MTBDD*, p_b)
{
    MTBDD a = *p_a;
    MTBDD b = *p_b;

    // Partial function check
    if (a == mtbdd_false) return b;
    if (b == mtbdd_false) return a;

    // Compute a + b if both mtbdds are leaves
    if (mtbdd_isleaf(a) && mtbdd_isleaf(b)) {
        cnum *a_data = (cnum*) mtbdd_getvalue(a);
        cnum *b_data = (cnum*) mtbdd_getvalue(b);

        cnum res_data;
        mpz_init(res_data.a);
        mpz_init(res_data.b);
        mpz_init(res_data.c);
        mpz_init(res_data.d);
        mpz_add(res_data.a, a_data->a, b_data->a);
        mpz_add(res_data.b, a_data->b, b_data->b);
        mpz_add(res_data.c, a_data->c, b_data->c);
        mpz_add(res_data.d, a_data->d, b_data->d);
        
        if (!mpz_sgn(res_data.a) && !mpz_sgn(res_data.b) && !mpz_sgn(res_data.c) && !mpz_sgn(res_data.d)) {
            mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
            return mtbdd_false;
        }
        
        MTBDD res = mtbdd_makeleaf(ltype_id, (uint64_t) &res_data);
        mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
        return res;
    }

    /* Commutative, so swap a,b for better cache performance*/
    if (a < b) {
        *p_a = b;
        *p_b = a;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, mtbdd_minus, MTBDD*, p_a, MTBDD*, p_b)
{
    MTBDD a = *p_a;
    MTBDD b = *p_b;

    // Partial function check
    if (a == mtbdd_false){
        MTBDD b_minus = my_mtbdd_neg(b);
        return b_minus; // return -b
    } 
    if (b == mtbdd_false) return a;

    // Compute a - b if both mtbdds are leaves
    if (mtbdd_isleaf(a) && mtbdd_isleaf(b)) {
        cnum *a_data = (cnum*) mtbdd_getvalue(a);
        cnum *b_data = (cnum*) mtbdd_getvalue(b);

        cnum res_data;
        mpz_init(res_data.a);
        mpz_init(res_data.b);
        mpz_init(res_data.c);
        mpz_init(res_data.d);
        mpz_sub(res_data.a, a_data->a, b_data->a);
        mpz_sub(res_data.b, a_data->b, b_data->b);
        mpz_sub(res_data.c, a_data->c, b_data->c);
        mpz_sub(res_data.d, a_data->d, b_data->d);
        
        if (!mpz_sgn(res_data.a) && !mpz_sgn(res_data.b) && !mpz_sgn(res_data.c) && !mpz_sgn(res_data.d)) {
            mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
            return mtbdd_false;
        }
        
        MTBDD res = mtbdd_makeleaf(ltype_id, (uint64_t) &res_data);
        mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
        return res;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, mtbdd_times, MTBDD*, p_a, MTBDD*, p_b)
{
    MTBDD a = *p_a;
    MTBDD b = *p_b;

    // Partial function check
    if ((a == mtbdd_false) || (b == mtbdd_false)) return mtbdd_false; // 0 * X = 0

    // Compute a * b if both mtbdds are leaves
    if (mtbdd_isleaf(a) && mtbdd_isleaf(b)) {
        cnum *a_data = (cnum*) mtbdd_getvalue(a);
        cnum *b_data = (cnum*) mtbdd_getvalue(b);

        cnum res_data;
        mpz_init(res_data.a);
        mpz_init(res_data.b);
        mpz_init(res_data.c);
        mpz_init(res_data.d);
        mpz_mul(res_data.a, a_data->a, b_data->a);
        mpz_mul(res_data.b, a_data->b, b_data->b);
        mpz_mul(res_data.c, a_data->c, b_data->c);
        mpz_mul(res_data.d, a_data->d, b_data->d);

        if (!mpz_sgn(res_data.a) && !mpz_sgn(res_data.b) && !mpz_sgn(res_data.c) && !mpz_sgn(res_data.d)) {
            mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
            return mtbdd_false;
        }

        MTBDD res = mtbdd_makeleaf(ltype_id, (uint64_t) &res_data);
        mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
        return res;
    }

    /* Commutative, so swap a,b for better cache performance */
    if (a < b) {
        *p_a = b;
        *p_b = a;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, mtbdd_times_c, MTBDD, t, size_t, c_raw)
{
    // Partial function check
    if (t == mtbdd_false) return mtbdd_false;

    // Compute c*t if mtbdd is a leaf
    if (mtbdd_isleaf(t)) {
        cnum *ldata = (cnum*) mtbdd_getvalue(t);
        unsigned long c = (unsigned long)c_raw;

        cnum res_data;
        mpz_init(res_data.a);
        mpz_init(res_data.b);
        mpz_init(res_data.c);
        mpz_init(res_data.d);
        mpz_mul_ui(res_data.a, ldata->a, c);
        mpz_mul_ui(res_data.b, ldata->b, c);
        mpz_mul_ui(res_data.c, ldata->c, c);
        mpz_mul_ui(res_data.d, ldata->d, c);
        
        MTBDD res = mtbdd_makeleaf(ltype_id, (uint64_t) &res_data);
        mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
        return res;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, mtbdd_negate, MTBDD, t, size_t, x)
{
    (void)x; // extra parameter needed for task - not needed

    // Partial function check
    if (t == mtbdd_false) return mtbdd_false;

    // Compute -t if mtbdd is a leaf
    if (mtbdd_isleaf(t)) {
        cnum *ldata = (cnum*) mtbdd_getvalue(t);

        cnum res_data;
        mpz_init(res_data.a);
        mpz_init(res_data.b);
        mpz_init(res_data.c);
        mpz_init(res_data.d);
        mpz_neg(res_data.a, ldata->a);
        mpz_neg(res_data.b, ldata->b);
        mpz_neg(res_data.c, ldata->c);
        mpz_neg(res_data.d, ldata->d);
        
        MTBDD res = mtbdd_makeleaf(ltype_id, (uint64_t) &res_data);
        mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
        return res;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, mtbdd_coef_rot1, MTBDD, t, size_t, x)
{
    (void)x; // extra parameter needed for task - not needed

    // Partial function check
    if (t == mtbdd_false) return mtbdd_false;

    // Compute coeficient rotation if mtbdd is a leaf
    if (mtbdd_isleaf(t)) {
        cnum *ldata = (cnum*) mtbdd_getvalue(t);

        cnum res_data;
        mpz_init(res_data.a);
        mpz_neg(res_data.a, ldata->d);
        mpz_init_set(res_data.b, ldata->a);
        mpz_init_set(res_data.c, ldata->b);
        mpz_init_set(res_data.d, ldata->c);

        MTBDD res = mtbdd_makeleaf(ltype_id, (uint64_t) &res_data);
        mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
        return res;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, mtbdd_coef_rot2, MTBDD, t, size_t, x)
{
    (void)x; // extra parameter needed for task - not needed

    // Partial function check
    if (t == mtbdd_false) return mtbdd_false;

    // Compute coeficient rotation if mtbdd is a leaf
    if (mtbdd_isleaf(t)) {
        cnum *ldata = (cnum*) mtbdd_getvalue(t);

        cnum res_data;
        mpz_init(res_data.a);
        mpz_neg(res_data.a, ldata->c);
        mpz_init(res_data.b);
        mpz_neg(res_data.b, ldata->d);
        mpz_init_set(res_data.c, ldata->a);
        mpz_init_set(res_data.d, ldata->b);

        MTBDD res = mtbdd_makeleaf(ltype_id, (uint64_t) &res_data);
        mpz_clears(res_data.a, res_data.b, res_data.c, res_data.d, NULL);
        return res;
    }

    return mtbdd_invalid; // Recurse deeper
}

// Operations needed for gate representation:
TASK_IMPL_2(MTBDD, t_xt_create, MTBDD, t, uint64_t, xt)
{
    // Partial function check
    if (t == mtbdd_false) return mtbdd_false;

    // Skip and return high edge if node variable is target qubit
    if (mtbdd_isnode(t)) {
        if (mtbdd_getvar(t) == (uint32_t)xt) { // variables are uint32_t, but TASK_IMPL_2 needs 2 uint64_t
            return mtbdd_gethigh(t);
        }
    }
    // Else copy if mtbdd is leaf
    else {
        return t;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, t_xt_comp_create, MTBDD, t, uint64_t, xt)
{
    // Partial function check
    if (t == mtbdd_false) return mtbdd_false;

    // Skip and return low edge if node variable is target qubit
    if (mtbdd_isnode(t)) {
        if (mtbdd_getvar(t) == (uint32_t)xt) { // variables are uint32_t, but TASK_IMPL_2 needs 2 uint64_t
            return mtbdd_getlow(t);
        }
    }
    // Else copy if mtbdd is leaf
    else {
        return t;
    }

    return mtbdd_invalid; // Recurse deeper
}

TASK_IMPL_2(MTBDD, mtbdd_b_xt_mul, MTBDD*, p_t, MTBDD*, p_b)
{
    MTBDD t = *p_t;
    MTBDD b = *p_b;

    // Partial function check
    if (b == mtbdd_false || t == mtbdd_false) return mtbdd_false;

    if (mtbdd_isleaf(b) && mtbdd_isleaf(t)) return t; // mtbdd_isleaf(b) is basically == mtbdd_true

    return mtbdd_invalid; // Recurse deeper
}

MTBDD mtbdd_b_xt_mul_wrapper(MTBDD t, uint32_t xt)
{
    MTBDD n1 = mtbdd_int64(1); // used instead of nithvar as it creates all leafs F
    MTBDD b_xt = mtbdd_makenode(xt, mtbdd_false, n1);

    return mtbdd_apply(t, b_xt, TASK(mtbdd_b_xt_mul));
}


MTBDD mtbdd_b_xt_comp_mul_wrapper(MTBDD t, uint32_t xt)
{
    MTBDD n1 = mtbdd_int64(1); // used instead of nithvar as it creates all leafs F
    MTBDD b_xt_comp = mtbdd_makenode(xt, n1, mtbdd_false);

    return mtbdd_apply(t, b_xt_comp, TASK(mtbdd_b_xt_mul));
}

static inline prob_t calculate_prob(cnum* prob)
{
    mpf_t a, b, c, d;
    mpf_inits(a, b, c, d, NULL);
    mpf_set_z(a, prob->a);
    mpf_set_z(b, prob->b);
    mpf_set_z(c, prob->c);
    mpf_set_z(d, prob->d);

    prob_t prob_re, prob_im;
    prob_t c_a, c_b, c_c, c_d;

    assert(mpz_fits_uint_p(c_k));
    mp_bitcnt_t shift_cnt = mpz_get_ui(c_k);

    shift_cnt = shift_cnt >> 1; // for k odd actually: shift_cnt = (shift_cnt - 1) >> 1, but the result is same

    // k even, k+1 odd
    if (mpz_even_p(c_k) != 0) {
        mpf_div_2exp(a, a, shift_cnt); // k/2 right shifts
        mpf_div_2exp(b, b, shift_cnt);
        mpf_div_2exp(c, c, shift_cnt);
        mpf_div_2exp(d, d, shift_cnt);

        c_a = mpf_get_d(a);
        c_b = mpf_get_d(b);
        c_c = mpf_get_d(c);
        c_d = mpf_get_d(d);

        prob_re = pow(c_a + c_b * M_SQRT1_2 - c_d * M_SQRT1_2, 2);
        prob_im = pow(c_c + c_b * M_SQRT1_2 + c_d * M_SQRT1_2, 2);

    }
    // k odd, k+1 even
    else {
        mpf_div_2exp(a, a, shift_cnt); // k-1/2 right shifts
        mpf_div_2exp(b, b, shift_cnt + 1); // k+1/2 right shifts
        mpf_div_2exp(c, c, shift_cnt);
        mpf_div_2exp(d, d, shift_cnt + 1);

        c_a = mpf_get_d(a);
        c_b = mpf_get_d(b);
        c_c = mpf_get_d(c);
        c_d = mpf_get_d(d);

        prob_re = pow(c_a * M_SQRT1_2 + c_b - c_d, 2);
        prob_im = pow(c_c * M_SQRT1_2 + c_b + c_d, 2);
    }

    mpf_clears(a, b, c, d, NULL);
    return prob_re+prob_im;
}

long get_coef(uint32_t start, uint32_t end, uint32_t target, char *curr_state)
{
    long skip;
    if (end > target && start < target) {
        skip = 1 << (end - target - 1);
        for (uint32_t i = start; i < target; i++) {
            if (curr_state[i] == NOT_MEASURED_CHAR) {
                skip *= 2;
            }
        }
    }
    else if (end <= target) {
        // It is probable that some skipped qubits were measured
        skip = 1;
        for (uint32_t i = start; i < target; i++) {
            if (curr_state[i] == NOT_MEASURED_CHAR) {
                skip *= 2;
            }
        }
    }
    else {
        skip = 1 << (end - start - 1); // -1 as the first skip is done by having both skip_low, skip_high
    }
    return skip;
}

TASK_IMPL_4(prob_t, mtbdd_prob_sum, MTBDD, t, uint32_t, xt, char*, curr_state, int, n)
{
    // we must immediately convert to float else the skip coefficient will be also squared
    prob_t res = 0;

    // terminal cases
    if (t == mtbdd_false) {
        return res;
    }

    if (mtbdd_isleaf(t)) {
        cnum *ldata = (cnum*) mtbdd_getvalue(t);
        res = calculate_prob(ldata);
        return res;
    }

    // else node
    uint32_t var_a = mtbdd_getvar(t);

    MTBDD high = mtbdd_gethigh(t);
    uint32_t var_high;
    if (mtbdd_isleaf(high)) {
        var_high = n;
    }
    else {
        var_high = mtbdd_getvar(high);
    }
    long skip_high = get_coef(var_a, var_high, xt, curr_state);

    MTBDD low = mtbdd_getlow(t);
    uint32_t var_low;
    if (mtbdd_isleaf(low)) {
        var_low = n;
    }
    else {
        var_low = mtbdd_getvar(low);
    }
    long skip_low = get_coef(var_a, var_low, xt, curr_state);

    // recursion
    if (var_a == xt || curr_state[var_a] == '1') {
        res = CALL(mtbdd_prob_sum, high, xt, curr_state, n);
        res *= skip_high;
    }
    else if (curr_state[var_a] == '0') {
        res = CALL(mtbdd_prob_sum, low, xt, curr_state, n);
        res *= skip_low;
    }
    else {
        SPAWN(mtbdd_prob_sum, high, xt, curr_state, n);
        prob_t res_low = CALL(mtbdd_prob_sum, low, xt, curr_state, n);
        res_low *= skip_low;

        prob_t res_high = SYNC(mtbdd_prob_sum);
        res_high *= skip_high;

        res = res_low + res_high;
    }

    return res;
}

/* end of "mtbdd.c" */