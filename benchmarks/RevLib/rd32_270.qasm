OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[5];
creg c[5];

ccx qubits[0], qubits[2], qubits[3];
ccx qubits[1], qubits[2], qubits[4];
ccx qubits[1], qubits[2], qubits[3];
ccx qubits[0], qubits[1], qubits[3];
x qubits[1];
x qubits[2];
ccx qubits[1], qubits[2], qubits[4];
x qubits[0];
cx qubits[0], qubits[4];
measure qubits[0] -> c[0];
measure qubits[1] -> c[1];
measure qubits[2] -> c[2];
measure qubits[3] -> c[3];
measure qubits[4] -> c[4];