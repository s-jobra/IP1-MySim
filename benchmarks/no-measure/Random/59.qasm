OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[59];

cx qubits[19], qubits[1];
h qubits[43];
cz qubits[55], qubits[53];
x qubits[11];
cx qubits[30], qubits[28];
rx(pi/2) qubits[54];
y qubits[0];
x qubits[56];
rx(pi/2) qubits[58];
ry(pi/2) qubits[10];
rx(pi/2) qubits[50];
t qubits[43];
cx qubits[17], qubits[0];
ccx qubits[51], qubits[23], qubits[8];
z qubits[47];
cx qubits[36], qubits[0];
rx(pi/2) qubits[11];
z qubits[4];
rx(pi/2) qubits[36];
t qubits[9];
cz qubits[54], qubits[8];
t qubits[5];
z qubits[6];
rx(pi/2) qubits[18];
ccx qubits[22], qubits[19], qubits[4];
ry(pi/2) qubits[42];
x qubits[7];
h qubits[43];
z qubits[2];
z qubits[58];
t qubits[35];
h qubits[25];
cx qubits[13], qubits[33];
z qubits[50];
t qubits[12];
rx(pi/2) qubits[34];
cz qubits[12], qubits[38];
ry(pi/2) qubits[57];
t qubits[24];
x qubits[20];
y qubits[37];
x qubits[7];
x qubits[30];
h qubits[45];
y qubits[30];
z qubits[11];
y qubits[12];
ry(pi/2) qubits[29];
x qubits[15];
h qubits[27];
h qubits[37];
ry(pi/2) qubits[37];
y qubits[24];
s qubits[22];
cz qubits[42], qubits[46];
cx qubits[21], qubits[18];
x qubits[42];
h qubits[30];
z qubits[27];
y qubits[58];
s qubits[57];
z qubits[7];
x qubits[35];
cx qubits[31], qubits[3];
x qubits[9];
t qubits[34];
ccx qubits[46], qubits[11], qubits[55];
h qubits[53];
t qubits[49];
h qubits[5];
ccx qubits[7], qubits[58], qubits[37];
t qubits[30];
h qubits[43];
rx(pi/2) qubits[42];
cx qubits[25], qubits[15];
cz qubits[52], qubits[46];
rx(pi/2) qubits[48];
h qubits[9];
cz qubits[29], qubits[0];
cz qubits[26], qubits[44];
y qubits[13];
rx(pi/2) qubits[56];
z qubits[41];
ry(pi/2) qubits[22];
ry(pi/2) qubits[48];
cz qubits[4], qubits[33];
s qubits[46];
s qubits[41];
s qubits[17];
ry(pi/2) qubits[52];
cx qubits[27], qubits[52];
ry(pi/2) qubits[55];
rx(pi/2) qubits[22];
x qubits[48];
rx(pi/2) qubits[16];
h qubits[41];
rx(pi/2) qubits[26];
rx(pi/2) qubits[22];
s qubits[47];
x qubits[45];
ccx qubits[45], qubits[2], qubits[42];
cz qubits[47], qubits[48];
cz qubits[26], qubits[41];
s qubits[57];
y qubits[19];
z qubits[1];
cz qubits[37], qubits[54];
s qubits[53];
t qubits[32];
cx qubits[32], qubits[0];
cz qubits[25], qubits[47];
cz qubits[15], qubits[43];
h qubits[17];
ry(pi/2) qubits[9];
h qubits[19];
cx qubits[35], qubits[5];
ccx qubits[34], qubits[43], qubits[19];
ccx qubits[45], qubits[2], qubits[14];
rx(pi/2) qubits[51];
t qubits[46];
s qubits[25];
rx(pi/2) qubits[29];
cz qubits[44], qubits[21];
t qubits[0];
x qubits[34];
ry(pi/2) qubits[36];
t qubits[31];
ccx qubits[45], qubits[8], qubits[6];
x qubits[46];
cx qubits[5], qubits[23];
y qubits[7];
cz qubits[21], qubits[3];
y qubits[12];
rx(pi/2) qubits[17];
ry(pi/2) qubits[10];
cz qubits[20], qubits[31];
y qubits[20];
cx qubits[0], qubits[46];
y qubits[47];
rx(pi/2) qubits[24];
ccx qubits[31], qubits[30], qubits[20];
ry(pi/2) qubits[21];
rx(pi/2) qubits[45];
t qubits[40];
x qubits[27];
ccx qubits[20], qubits[39], qubits[24];
y qubits[11];
z qubits[6];
z qubits[11];
cz qubits[1], qubits[52];
s qubits[47];
cz qubits[19], qubits[11];
ry(pi/2) qubits[53];
y qubits[16];
ccx qubits[9], qubits[41], qubits[51];
x qubits[44];
ccx qubits[32], qubits[12], qubits[24];
cz qubits[56], qubits[53];
ccx qubits[12], qubits[28], qubits[50];
t qubits[43];
t qubits[49];
x qubits[56];
cx qubits[57], qubits[16];
h qubits[43];
x qubits[44];
cx qubits[36], qubits[58];
ry(pi/2) qubits[32];
ry(pi/2) qubits[34];
cx qubits[35], qubits[51];
rx(pi/2) qubits[33];
ccx qubits[27], qubits[14], qubits[5];
x qubits[5];
s qubits[44];
z qubits[47];
x qubits[28];
cz qubits[29], qubits[48];
ccx qubits[17], qubits[3], qubits[13];