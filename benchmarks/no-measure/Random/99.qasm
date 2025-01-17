OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[99];

cz qubits[93], qubits[26];
z qubits[32];
s qubits[9];
z qubits[34];
cx qubits[63], qubits[58];
t qubits[27];
cx qubits[28], qubits[69];
y qubits[49];
t qubits[69];
x qubits[24];
x qubits[16];
z qubits[52];
ry(pi/2) qubits[25];
s qubits[33];
y qubits[73];
s qubits[56];
rx(pi/2) qubits[61];
cz qubits[74], qubits[94];
rx(pi/2) qubits[36];
ry(pi/2) qubits[21];
cz qubits[93], qubits[47];
ccx qubits[6], qubits[96], qubits[4];
ccx qubits[31], qubits[26], qubits[98];
h qubits[18];
rx(pi/2) qubits[85];
ccx qubits[30], qubits[19], qubits[20];
t qubits[76];
cz qubits[11], qubits[39];
t qubits[84];
y qubits[64];
ccx qubits[85], qubits[83], qubits[79];
x qubits[17];
ry(pi/2) qubits[29];
cx qubits[59], qubits[60];
z qubits[56];
rx(pi/2) qubits[62];
ry(pi/2) qubits[91];
s qubits[38];
x qubits[24];
ccx qubits[87], qubits[97], qubits[52];
t qubits[34];
z qubits[59];
x qubits[55];
z qubits[83];
rx(pi/2) qubits[24];
t qubits[54];
ry(pi/2) qubits[45];
rx(pi/2) qubits[66];
rx(pi/2) qubits[17];
z qubits[10];
z qubits[31];
z qubits[83];
y qubits[11];
rx(pi/2) qubits[9];
cx qubits[5], qubits[60];
y qubits[39];
ry(pi/2) qubits[82];
s qubits[51];
t qubits[22];
y qubits[52];
t qubits[44];
s qubits[81];
s qubits[25];
ccx qubits[32], qubits[49], qubits[95];
y qubits[78];
ry(pi/2) qubits[95];
y qubits[5];
y qubits[54];
z qubits[4];
s qubits[25];
cx qubits[12], qubits[7];
z qubits[61];
y qubits[0];
t qubits[84];
t qubits[92];
ccx qubits[20], qubits[8], qubits[68];
rx(pi/2) qubits[41];
t qubits[0];
ry(pi/2) qubits[92];
ry(pi/2) qubits[48];
t qubits[1];
h qubits[93];
h qubits[51];
ry(pi/2) qubits[27];
s qubits[17];
ccx qubits[72], qubits[79], qubits[66];
rx(pi/2) qubits[27];
rx(pi/2) qubits[9];
cz qubits[91], qubits[27];
ry(pi/2) qubits[58];
x qubits[68];
cx qubits[31], qubits[20];
y qubits[27];
x qubits[5];
s qubits[14];
ccx qubits[28], qubits[65], qubits[4];
x qubits[59];
x qubits[87];
cx qubits[0], qubits[52];
s qubits[27];
h qubits[11];
s qubits[92];
rx(pi/2) qubits[75];
ry(pi/2) qubits[70];
x qubits[26];
h qubits[62];
s qubits[30];
cx qubits[95], qubits[57];
x qubits[94];
cx qubits[9], qubits[96];
rx(pi/2) qubits[66];
cx qubits[25], qubits[96];
cx qubits[77], qubits[1];
y qubits[79];
z qubits[91];
rx(pi/2) qubits[50];
y qubits[25];
ccx qubits[10], qubits[49], qubits[24];
s qubits[40];
cz qubits[1], qubits[36];
cz qubits[44], qubits[29];
rx(pi/2) qubits[51];
t qubits[32];
ry(pi/2) qubits[44];
z qubits[15];
ry(pi/2) qubits[33];
s qubits[8];
x qubits[26];
x qubits[84];
ccx qubits[65], qubits[8], qubits[97];
ry(pi/2) qubits[55];
y qubits[44];
rx(pi/2) qubits[74];
z qubits[29];
rx(pi/2) qubits[88];
s qubits[76];
ry(pi/2) qubits[84];
cz qubits[58], qubits[27];
cz qubits[73], qubits[89];
cz qubits[86], qubits[95];
ccx qubits[13], qubits[95], qubits[92];
y qubits[59];
ccx qubits[88], qubits[33], qubits[52];
ccx qubits[78], qubits[47], qubits[84];
y qubits[75];
z qubits[12];
x qubits[45];
rx(pi/2) qubits[16];
cx qubits[9], qubits[43];
rx(pi/2) qubits[80];
ccx qubits[13], qubits[68], qubits[28];
ccx qubits[81], qubits[23], qubits[14];
s qubits[82];
x qubits[59];
rx(pi/2) qubits[64];
y qubits[93];
ccx qubits[50], qubits[15], qubits[85];
cx qubits[27], qubits[19];
ry(pi/2) qubits[75];
x qubits[15];
t qubits[77];
cx qubits[63], qubits[10];
ccx qubits[30], qubits[38], qubits[65];
x qubits[61];
x qubits[81];
ccx qubits[89], qubits[39], qubits[58];
cx qubits[5], qubits[52];
t qubits[55];
y qubits[45];
rx(pi/2) qubits[92];
ry(pi/2) qubits[33];
x qubits[96];
z qubits[49];
cx qubits[76], qubits[11];
t qubits[18];
cz qubits[21], qubits[83];
ry(pi/2) qubits[81];
t qubits[31];
y qubits[48];
s qubits[81];
y qubits[75];
ccx qubits[59], qubits[29], qubits[97];
t qubits[2];
x qubits[68];
z qubits[55];
ccx qubits[81], qubits[5], qubits[38];
h qubits[16];
ccx qubits[74], qubits[56], qubits[40];
z qubits[6];
cz qubits[18], qubits[37];
ccx qubits[66], qubits[8], qubits[25];
ccx qubits[81], qubits[55], qubits[23];
x qubits[53];
ry(pi/2) qubits[11];
cz qubits[97], qubits[46];
cz qubits[61], qubits[28];
y qubits[0];
ry(pi/2) qubits[16];
ccx qubits[58], qubits[72], qubits[59];
t qubits[79];
h qubits[34];
s qubits[24];
ccx qubits[24], qubits[48], qubits[62];
s qubits[4];
rx(pi/2) qubits[14];
y qubits[13];
h qubits[98];
cz qubits[72], qubits[95];
s qubits[98];
cx qubits[68], qubits[82];
z qubits[89];
cx qubits[84], qubits[48];
x qubits[62];
ry(pi/2) qubits[87];
x qubits[53];
ry(pi/2) qubits[0];
x qubits[45];
t qubits[5];
ry(pi/2) qubits[19];
s qubits[43];
cz qubits[58], qubits[50];
s qubits[52];
x qubits[13];
rx(pi/2) qubits[88];
t qubits[61];
z qubits[33];
z qubits[26];
x qubits[9];
x qubits[74];
ccx qubits[9], qubits[59], qubits[87];
cx qubits[5], qubits[90];
x qubits[34];
cx qubits[70], qubits[75];
ry(pi/2) qubits[29];
t qubits[64];
h qubits[47];
cz qubits[31], qubits[36];
h qubits[92];
h qubits[1];
t qubits[40];
y qubits[47];
ry(pi/2) qubits[64];
x qubits[4];
x qubits[20];
y qubits[27];
x qubits[23];
t qubits[18];
t qubits[36];
h qubits[21];
rx(pi/2) qubits[32];
z qubits[9];
cz qubits[31], qubits[46];
y qubits[23];
t qubits[78];
rx(pi/2) qubits[0];
x qubits[7];
ry(pi/2) qubits[30];
rx(pi/2) qubits[0];
cx qubits[59], qubits[10];
y qubits[68];
x qubits[39];
cz qubits[25], qubits[73];
ccx qubits[45], qubits[36], qubits[87];
h qubits[43];
rx(pi/2) qubits[77];
y qubits[71];
y qubits[49];
rx(pi/2) qubits[62];
t qubits[18];
y qubits[43];
s qubits[7];
cz qubits[1], qubits[64];
cx qubits[77], qubits[34];
ry(pi/2) qubits[17];
cx qubits[8], qubits[89];
rx(pi/2) qubits[53];
s qubits[58];
z qubits[69];
cz qubits[79], qubits[58];
h qubits[78];
rx(pi/2) qubits[76];
cx qubits[53], qubits[92];
ry(pi/2) qubits[96];
cx qubits[15], qubits[39];
ry(pi/2) qubits[79];
z qubits[19];
y qubits[73];
y qubits[30];
s qubits[24];
y qubits[36];
rx(pi/2) qubits[59];
h qubits[19];
x qubits[16];
cz qubits[36], qubits[92];
s qubits[11];
y qubits[35];
s qubits[41];
