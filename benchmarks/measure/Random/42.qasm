OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[42];
creg c[42];

x qubits[0];
ry(pi/2) qubits[10];
ry(pi/2) qubits[13];
cx qubits[24], qubits[29];
s qubits[0];
t qubits[1];
s qubits[18];
cx qubits[2], qubits[26];
ry(pi/2) qubits[7];
t qubits[30];
x qubits[33];
t qubits[16];
rx(pi/2) qubits[27];
y qubits[9];
x qubits[16];
t qubits[14];
s qubits[40];
ry(pi/2) qubits[39];
z qubits[14];
s qubits[21];
s qubits[20];
ccx qubits[29], qubits[8], qubits[15];
t qubits[21];
y qubits[35];
y qubits[15];
ry(pi/2) qubits[34];
ccx qubits[30], qubits[18], qubits[9];
ccx qubits[8], qubits[25], qubits[1];
h qubits[8];
h qubits[5];
ccx qubits[20], qubits[18], qubits[24];
y qubits[27];
rx(pi/2) qubits[12];
cx qubits[9], qubits[27];
z qubits[29];
ccx qubits[16], qubits[35], qubits[22];
ry(pi/2) qubits[25];
cz qubits[27], qubits[1];
ry(pi/2) qubits[20];
ry(pi/2) qubits[0];
ry(pi/2) qubits[27];
h qubits[19];
cx qubits[11], qubits[39];
ry(pi/2) qubits[34];
x qubits[34];
cx qubits[6], qubits[5];
x qubits[33];
rx(pi/2) qubits[29];
t qubits[2];
cx qubits[19], qubits[1];
cz qubits[27], qubits[26];
cz qubits[3], qubits[2];
s qubits[1];
t qubits[38];
h qubits[0];
x qubits[21];
x qubits[32];
rx(pi/2) qubits[32];
h qubits[4];
cx qubits[28], qubits[4];
h qubits[14];
y qubits[23];
ry(pi/2) qubits[12];
y qubits[15];
h qubits[25];
y qubits[20];
z qubits[40];
rx(pi/2) qubits[28];
y qubits[25];
rx(pi/2) qubits[20];
rx(pi/2) qubits[15];
h qubits[41];
y qubits[4];
h qubits[30];
ccx qubits[9], qubits[32], qubits[24];
ry(pi/2) qubits[22];
ccx qubits[36], qubits[33], qubits[4];
ry(pi/2) qubits[5];
t qubits[3];
x qubits[12];
t qubits[12];
cx qubits[21], qubits[36];
y qubits[0];
t qubits[8];
y qubits[2];
cx qubits[20], qubits[25];
cx qubits[16], qubits[32];
cz qubits[41], qubits[11];
ccx qubits[2], qubits[5], qubits[22];
y qubits[11];
h qubits[34];
z qubits[9];
ccx qubits[15], qubits[19], qubits[1];
z qubits[13];
rx(pi/2) qubits[34];
rx(pi/2) qubits[2];
cx qubits[17], qubits[32];
cz qubits[40], qubits[8];
ccx qubits[30], qubits[17], qubits[40];
s qubits[6];
x qubits[1];
ccx qubits[5], qubits[12], qubits[11];
t qubits[26];
z qubits[39];
t qubits[38];
cx qubits[31], qubits[9];
h qubits[24];
z qubits[36];
y qubits[39];
t qubits[13];
ry(pi/2) qubits[35];
cx qubits[21], qubits[10];
cx qubits[18], qubits[14];
cx qubits[19], qubits[40];
cx qubits[29], qubits[9];
z qubits[13];
cz qubits[40], qubits[8];
h qubits[39];
h qubits[31];
y qubits[22];
x qubits[24];
rx(pi/2) qubits[6];
x qubits[19];
cx qubits[40], qubits[29];
ccx qubits[6], qubits[35], qubits[37];
rx(pi/2) qubits[40];
measure qubits[0] -> c[0];
measure qubits[1] -> c[1];
measure qubits[2] -> c[2];
measure qubits[3] -> c[3];
measure qubits[4] -> c[4];
measure qubits[5] -> c[5];
measure qubits[6] -> c[6];
measure qubits[7] -> c[7];
measure qubits[8] -> c[8];
measure qubits[9] -> c[9];
measure qubits[10] -> c[10];
measure qubits[11] -> c[11];
measure qubits[12] -> c[12];
measure qubits[13] -> c[13];
measure qubits[14] -> c[14];
measure qubits[15] -> c[15];
measure qubits[16] -> c[16];
measure qubits[17] -> c[17];
measure qubits[18] -> c[18];
measure qubits[19] -> c[19];
measure qubits[20] -> c[20];
measure qubits[21] -> c[21];
measure qubits[22] -> c[22];
measure qubits[23] -> c[23];
measure qubits[24] -> c[24];
measure qubits[25] -> c[25];
measure qubits[26] -> c[26];
measure qubits[27] -> c[27];
measure qubits[28] -> c[28];
measure qubits[29] -> c[29];
measure qubits[30] -> c[30];
measure qubits[31] -> c[31];
measure qubits[32] -> c[32];
measure qubits[33] -> c[33];
measure qubits[34] -> c[34];
measure qubits[35] -> c[35];
measure qubits[36] -> c[36];
measure qubits[37] -> c[37];
measure qubits[38] -> c[38];
measure qubits[39] -> c[39];
measure qubits[40] -> c[40];
measure qubits[41] -> c[41];