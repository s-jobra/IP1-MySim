OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[12];
creg c[12];

ccx qubits[0], qubits[1], qubits[9];
cx qubits[0], qubits[1];
ccx qubits[2], qubits[9], qubits[10];
ccx qubits[1], qubits[2], qubits[9];
cx qubits[1], qubits[2];
ccx qubits[3], qubits[10], qubits[11];
ccx qubits[3], qubits[9], qubits[10];
ccx qubits[2], qubits[3], qubits[9];
cx qubits[2], qubits[3];
ccx qubits[4], qubits[10], qubits[11];
ccx qubits[4], qubits[9], qubits[10];
ccx qubits[3], qubits[4], qubits[9];
cx qubits[3], qubits[4];
ccx qubits[5], qubits[10], qubits[11];
ccx qubits[5], qubits[9], qubits[10];
ccx qubits[4], qubits[5], qubits[9];
cx qubits[4], qubits[5];
ccx qubits[6], qubits[10], qubits[11];
ccx qubits[6], qubits[9], qubits[10];
ccx qubits[5], qubits[6], qubits[9];
cx qubits[5], qubits[6];
ccx qubits[7], qubits[10], qubits[11];
ccx qubits[7], qubits[9], qubits[10];
ccx qubits[6], qubits[7], qubits[9];
cx qubits[6], qubits[7];
ccx qubits[8], qubits[10], qubits[11];
ccx qubits[8], qubits[9], qubits[10];
cx qubits[10], qubits[11];
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