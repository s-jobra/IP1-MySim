OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[18];
creg c[18];
h qubits[12];
h qubits[13];
h qubits[14];
h qubits[15];
h qubits[16];
h qubits[12];
ccx qubits[5],qubits[7],qubits[12];
h qubits[12];
h qubits[12];
ccx qubits[4],qubits[8],qubits[12];
h qubits[12];
h qubits[12];
ccx qubits[3],qubits[9],qubits[12];
h qubits[12];
h qubits[12];
ccx qubits[2],qubits[10],qubits[12];
h qubits[12];
h qubits[12];
ccx qubits[1],qubits[11],qubits[12];
h qubits[12];
h qubits[13];
ccx qubits[5],qubits[8],qubits[13];
h qubits[13];
h qubits[13];
ccx qubits[4],qubits[9],qubits[13];
h qubits[13];
h qubits[13];
ccx qubits[3],qubits[10],qubits[13];
h qubits[13];
h qubits[13];
ccx qubits[2],qubits[11],qubits[13];
h qubits[13];
h qubits[14];
ccx qubits[5],qubits[9],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[4],qubits[10],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[3],qubits[11],qubits[14];
h qubits[14];
h qubits[15];
ccx qubits[5],qubits[10],qubits[15];
h qubits[15];
h qubits[15];
ccx qubits[4],qubits[11],qubits[15];
h qubits[15];
h qubits[16];
ccx qubits[5],qubits[11],qubits[16];
h qubits[16];
h qubits[12];
h qubits[13];
h qubits[14];
h qubits[15];
h qubits[16];
cx qubits[16],qubits[17];
cx qubits[15],qubits[16];
cx qubits[14],qubits[15];
cx qubits[13],qubits[14];
cx qubits[12],qubits[13];
h qubits[12];
h qubits[13];
h qubits[14];
h qubits[15];
h qubits[16];
h qubits[17];
h qubits[17];
ccx qubits[5],qubits[6],qubits[17];
h qubits[17];
h qubits[17];
ccx qubits[4],qubits[7],qubits[17];
h qubits[17];
h qubits[17];
ccx qubits[3],qubits[8],qubits[17];
h qubits[17];
h qubits[17];
ccx qubits[2],qubits[9],qubits[17];
h qubits[17];
h qubits[17];
ccx qubits[1],qubits[10],qubits[17];
h qubits[17];
h qubits[17];
ccx qubits[0],qubits[11],qubits[17];
h qubits[17];
h qubits[16];
ccx qubits[4],qubits[6],qubits[16];
h qubits[16];
h qubits[16];
ccx qubits[3],qubits[7],qubits[16];
h qubits[16];
h qubits[16];
ccx qubits[2],qubits[8],qubits[16];
h qubits[16];
h qubits[16];
ccx qubits[1],qubits[9],qubits[16];
h qubits[16];
h qubits[16];
ccx qubits[0],qubits[10],qubits[16];
h qubits[16];
h qubits[15];
ccx qubits[3],qubits[6],qubits[15];
h qubits[15];
h qubits[15];
ccx qubits[2],qubits[7],qubits[15];
h qubits[15];
h qubits[15];
ccx qubits[1],qubits[8],qubits[15];
h qubits[15];
h qubits[15];
ccx qubits[0],qubits[9],qubits[15];
h qubits[15];
h qubits[14];
ccx qubits[2],qubits[6],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[1],qubits[7],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[0],qubits[8],qubits[14];
h qubits[14];
h qubits[13];
ccx qubits[1],qubits[6],qubits[13];
h qubits[13];
h qubits[13];
ccx qubits[0],qubits[7],qubits[13];
h qubits[13];
h qubits[12];
ccx qubits[0],qubits[6],qubits[12];
h qubits[12];
h qubits[12];
h qubits[13];
h qubits[14];
h qubits[15];
h qubits[16];
h qubits[17];
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