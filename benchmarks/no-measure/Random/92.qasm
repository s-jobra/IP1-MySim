OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[92];

z qubits[36];
cz qubits[50], qubits[6];
cz qubits[50], qubits[22];
cz qubits[91], qubits[46];
ccx qubits[54], qubits[14], qubits[45];
s qubits[83];
rx(pi/2) qubits[78];
z qubits[17];
h qubits[44];
h qubits[72];
y qubits[24];
cz qubits[8], qubits[27];
z qubits[88];
cz qubits[49], qubits[46];
t qubits[62];
s qubits[79];
t qubits[84];
s qubits[25];
y qubits[88];
ccx qubits[22], qubits[80], qubits[61];
h qubits[50];
cz qubits[38], qubits[2];
ccx qubits[18], qubits[53], qubits[49];
cx qubits[62], qubits[24];
ccx qubits[58], qubits[35], qubits[68];
y qubits[0];
rx(pi/2) qubits[45];
rx(pi/2) qubits[22];
s qubits[62];
y qubits[72];
z qubits[66];
cz qubits[86], qubits[75];
y qubits[44];
cz qubits[77], qubits[87];
rx(pi/2) qubits[43];
t qubits[84];
ccx qubits[18], qubits[16], qubits[5];
h qubits[91];
rx(pi/2) qubits[25];
x qubits[59];
s qubits[28];
ry(pi/2) qubits[4];
y qubits[25];
s qubits[56];
h qubits[66];
rx(pi/2) qubits[23];
z qubits[43];
x qubits[51];
s qubits[69];
cx qubits[35], qubits[9];
t qubits[53];
t qubits[75];
y qubits[65];
cx qubits[91], qubits[13];
rx(pi/2) qubits[17];
h qubits[42];
s qubits[79];
cx qubits[45], qubits[44];
ccx qubits[20], qubits[43], qubits[78];
ry(pi/2) qubits[34];
h qubits[33];
t qubits[88];
ry(pi/2) qubits[56];
cz qubits[14], qubits[57];
y qubits[37];
x qubits[85];
y qubits[82];
z qubits[53];
ry(pi/2) qubits[88];
ry(pi/2) qubits[69];
rx(pi/2) qubits[59];
ry(pi/2) qubits[68];
z qubits[83];
cz qubits[8], qubits[25];
x qubits[67];
ry(pi/2) qubits[22];
s qubits[43];
t qubits[58];
z qubits[84];
h qubits[42];
h qubits[71];
t qubits[54];
t qubits[33];
x qubits[23];
t qubits[79];
s qubits[83];
t qubits[75];
cx qubits[41], qubits[42];
z qubits[14];
ccx qubits[77], qubits[21], qubits[54];
x qubits[64];
cx qubits[3], qubits[69];
z qubits[81];
s qubits[4];
rx(pi/2) qubits[38];
ccx qubits[35], qubits[19], qubits[68];
cx qubits[84], qubits[3];
ccx qubits[75], qubits[54], qubits[36];
s qubits[43];
y qubits[46];
ry(pi/2) qubits[57];
cz qubits[27], qubits[19];
cz qubits[91], qubits[8];
cz qubits[16], qubits[28];
ccx qubits[23], qubits[32], qubits[17];
rx(pi/2) qubits[38];
t qubits[69];
y qubits[46];
cx qubits[58], qubits[7];
y qubits[60];
ccx qubits[69], qubits[51], qubits[57];
rx(pi/2) qubits[57];
ry(pi/2) qubits[43];
x qubits[42];
y qubits[71];
rx(pi/2) qubits[39];
cz qubits[26], qubits[88];
cx qubits[7], qubits[53];
z qubits[45];
s qubits[85];
x qubits[47];
ry(pi/2) qubits[66];
h qubits[86];
s qubits[45];
y qubits[33];
x qubits[36];
t qubits[72];
x qubits[71];
y qubits[47];
t qubits[60];
ccx qubits[86], qubits[35], qubits[71];
cx qubits[42], qubits[32];
ccx qubits[35], qubits[73], qubits[50];
ry(pi/2) qubits[28];
t qubits[57];
z qubits[46];
s qubits[23];
y qubits[21];
x qubits[2];
s qubits[53];
ry(pi/2) qubits[79];
ry(pi/2) qubits[25];
y qubits[32];
h qubits[73];
ccx qubits[27], qubits[74], qubits[57];
y qubits[39];
t qubits[40];
rx(pi/2) qubits[84];
cx qubits[89], qubits[90];
ccx qubits[43], qubits[77], qubits[17];
z qubits[46];
ccx qubits[52], qubits[54], qubits[0];
z qubits[42];
cx qubits[4], qubits[68];
cz qubits[12], qubits[49];
cz qubits[40], qubits[71];
s qubits[47];
h qubits[66];
z qubits[55];
t qubits[52];
t qubits[5];
cx qubits[44], qubits[30];
t qubits[2];
x qubits[11];
ccx qubits[79], qubits[11], qubits[33];
cz qubits[75], qubits[37];
s qubits[27];
rx(pi/2) qubits[3];
cx qubits[37], qubits[23];
z qubits[33];
ry(pi/2) qubits[87];
ry(pi/2) qubits[45];
h qubits[69];
ry(pi/2) qubits[47];
ccx qubits[37], qubits[26], qubits[77];
z qubits[11];
cx qubits[42], qubits[38];
t qubits[23];
h qubits[70];
cz qubits[62], qubits[5];
s qubits[13];
t qubits[83];
y qubits[62];
cz qubits[66], qubits[5];
h qubits[19];
t qubits[58];
t qubits[43];
h qubits[50];
ccx qubits[56], qubits[37], qubits[28];
h qubits[79];
h qubits[87];
rx(pi/2) qubits[83];
h qubits[58];
x qubits[58];
cz qubits[14], qubits[7];
x qubits[91];
cz qubits[27], qubits[65];
z qubits[16];
x qubits[19];
s qubits[84];
h qubits[1];
ry(pi/2) qubits[40];
z qubits[80];
y qubits[45];
t qubits[43];
x qubits[14];
cx qubits[1], qubits[72];
cx qubits[60], qubits[84];
z qubits[15];
ccx qubits[77], qubits[33], qubits[62];
rx(pi/2) qubits[4];
t qubits[70];
ry(pi/2) qubits[9];
ry(pi/2) qubits[33];
z qubits[53];
x qubits[16];
y qubits[90];
rx(pi/2) qubits[44];
z qubits[50];
h qubits[12];
s qubits[79];
s qubits[59];
s qubits[21];
ry(pi/2) qubits[15];
ccx qubits[4], qubits[77], qubits[44];
cz qubits[12], qubits[22];
h qubits[61];
z qubits[12];
cz qubits[86], qubits[34];
ccx qubits[75], qubits[72], qubits[5];
ry(pi/2) qubits[61];
cz qubits[34], qubits[21];
z qubits[61];
x qubits[10];
t qubits[78];
z qubits[3];
s qubits[77];
h qubits[77];
t qubits[41];
z qubits[12];
x qubits[41];
rx(pi/2) qubits[29];
rx(pi/2) qubits[6];
ry(pi/2) qubits[6];
x qubits[18];
t qubits[88];
ry(pi/2) qubits[15];
z qubits[63];
cx qubits[22], qubits[21];
h qubits[9];
z qubits[16];
cz qubits[79], qubits[45];
h qubits[20];
z qubits[75];
ry(pi/2) qubits[84];
t qubits[5];
cx qubits[47], qubits[11];
z qubits[1];
h qubits[1];
z qubits[74];
ry(pi/2) qubits[38];
y qubits[73];
h qubits[10];
s qubits[36];
cz qubits[45], qubits[0];
t qubits[73];
cz qubits[36], qubits[1];
x qubits[60];
y qubits[61];
z qubits[39];
t qubits[28];
s qubits[66];
cx qubits[76], qubits[15];
ccx qubits[6], qubits[25], qubits[91];
z qubits[46];
rx(pi/2) qubits[4];
