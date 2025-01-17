OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[60];

t qubits[33];
ccx qubits[49], qubits[14], qubits[47];
cx qubits[51], qubits[56];
cx qubits[59], qubits[51];
t qubits[52];
h qubits[50];
cz qubits[17], qubits[38];
cz qubits[34], qubits[0];
cx qubits[13], qubits[9];
h qubits[35];
z qubits[37];
h qubits[57];
h qubits[40];
y qubits[48];
ry(pi/2) qubits[14];
ccx qubits[37], qubits[10], qubits[11];
rx(pi/2) qubits[53];
cx qubits[29], qubits[12];
x qubits[10];
cx qubits[17], qubits[25];
cz qubits[9], qubits[40];
cx qubits[11], qubits[53];
h qubits[49];
h qubits[29];
x qubits[21];
x qubits[13];
cz qubits[56], qubits[27];
rx(pi/2) qubits[25];
cz qubits[31], qubits[2];
h qubits[27];
s qubits[27];
ry(pi/2) qubits[25];
ry(pi/2) qubits[15];
ccx qubits[37], qubits[25], qubits[23];
cz qubits[28], qubits[17];
z qubits[17];
cx qubits[22], qubits[56];
s qubits[31];
y qubits[55];
cz qubits[28], qubits[22];
s qubits[49];
h qubits[31];
z qubits[13];
cz qubits[30], qubits[11];
cz qubits[11], qubits[19];
rx(pi/2) qubits[49];
rx(pi/2) qubits[19];
cx qubits[4], qubits[28];
cx qubits[21], qubits[59];
z qubits[17];
y qubits[59];
h qubits[39];
z qubits[38];
rx(pi/2) qubits[47];
ry(pi/2) qubits[39];
x qubits[31];
ry(pi/2) qubits[6];
cz qubits[56], qubits[18];
t qubits[7];
y qubits[54];
x qubits[25];
ccx qubits[39], qubits[53], qubits[12];
x qubits[44];
cx qubits[10], qubits[29];
y qubits[20];
ry(pi/2) qubits[49];
z qubits[54];
cx qubits[26], qubits[34];
cx qubits[49], qubits[18];
s qubits[43];
cx qubits[4], qubits[48];
z qubits[18];
y qubits[48];
t qubits[40];
ccx qubits[28], qubits[52], qubits[20];
t qubits[32];
h qubits[25];
h qubits[34];
cx qubits[51], qubits[33];
ccx qubits[20], qubits[52], qubits[46];
x qubits[41];
ry(pi/2) qubits[53];
rx(pi/2) qubits[3];
x qubits[12];
t qubits[7];
s qubits[57];
ccx qubits[19], qubits[17], qubits[2];
cz qubits[29], qubits[6];
cz qubits[51], qubits[24];
x qubits[25];
ccx qubits[21], qubits[51], qubits[10];
rx(pi/2) qubits[43];
cx qubits[33], qubits[24];
z qubits[18];
ry(pi/2) qubits[57];
s qubits[45];
ry(pi/2) qubits[14];
s qubits[4];
cx qubits[35], qubits[21];
rx(pi/2) qubits[30];
cz qubits[48], qubits[58];
x qubits[12];
x qubits[50];
rx(pi/2) qubits[33];
x qubits[5];
ccx qubits[16], qubits[54], qubits[40];
z qubits[48];
ccx qubits[6], qubits[37], qubits[5];
rx(pi/2) qubits[44];
y qubits[15];
ccx qubits[59], qubits[42], qubits[53];
z qubits[13];
ry(pi/2) qubits[21];
cx qubits[0], qubits[26];
cx qubits[42], qubits[12];
x qubits[16];
x qubits[3];
ccx qubits[3], qubits[35], qubits[49];
x qubits[25];
rx(pi/2) qubits[13];
ccx qubits[47], qubits[57], qubits[33];
ccx qubits[29], qubits[24], qubits[37];
ccx qubits[57], qubits[50], qubits[49];
z qubits[53];
cz qubits[29], qubits[16];
cx qubits[41], qubits[4];
rx(pi/2) qubits[51];
s qubits[4];
z qubits[35];
h qubits[30];
z qubits[41];
s qubits[23];
y qubits[32];
x qubits[22];
ry(pi/2) qubits[5];
z qubits[15];
z qubits[41];
cx qubits[6], qubits[26];
s qubits[35];
t qubits[8];
ry(pi/2) qubits[39];
s qubits[7];
y qubits[44];
ccx qubits[14], qubits[21], qubits[16];
s qubits[2];
z qubits[31];
cz qubits[23], qubits[20];
cx qubits[16], qubits[25];
ccx qubits[31], qubits[20], qubits[10];
ccx qubits[26], qubits[28], qubits[4];
rx(pi/2) qubits[3];
x qubits[10];
y qubits[52];
cx qubits[29], qubits[28];
ry(pi/2) qubits[43];
z qubits[11];
ry(pi/2) qubits[44];
h qubits[22];
cz qubits[25], qubits[34];
rx(pi/2) qubits[41];
x qubits[12];
x qubits[12];
rx(pi/2) qubits[31];
cx qubits[43], qubits[35];
z qubits[46];
ccx qubits[42], qubits[28], qubits[24];
x qubits[49];
y qubits[47];
h qubits[35];
cz qubits[7], qubits[11];
z qubits[29];
cz qubits[18], qubits[55];
z qubits[0];
ry(pi/2) qubits[7];
cx qubits[59], qubits[13];
rx(pi/2) qubits[29];
cx qubits[3], qubits[1];
rx(pi/2) qubits[35];
s qubits[54];
t qubits[27];
