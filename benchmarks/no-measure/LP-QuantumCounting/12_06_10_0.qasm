OPENQASM 2.0;
include "qelib1.inc";
qreg q[19];

h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
x q[18];
h q[18];
for int i in [0:0] {
  mcx q[0], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[0], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[0], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[0], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[0], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[0], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[0], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[0], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[0], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[0], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[0], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:1] {
  mcx q[1], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[1], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[1], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[1], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[1], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[1], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[1], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[1], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[1], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[1], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[1], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:3] {
  mcx q[2], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[2], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[2], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[2], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[2], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[2], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[2], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[2], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[2], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[2], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[2], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:7] {
  mcx q[3], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[3], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[3], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[3], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[3], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[3], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[3], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[3], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[3], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[3], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[3], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:15] {
  mcx q[4], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[4], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[4], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[4], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[4], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[4], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[4], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[4], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[4], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[4], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[4], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:31] {
  mcx q[5], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[5], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[5], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[5], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[5], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[5], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[5], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[5], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[5], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[5], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[5], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:63] {
  mcx q[6], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[6], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[6], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[6], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[6], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[6], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[6], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[6], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[6], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[6], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[6], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:127] {
  mcx q[7], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[7], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[7], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[7], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[7], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[7], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[7], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[7], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[7], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[7], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[7], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:255] {
  mcx q[8], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[8], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[8], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[8], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[8], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[8], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[8], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[8], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[8], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[8], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[8], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:511] {
  mcx q[9], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[9], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[9], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[9], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[9], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[9], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[9], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[9], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[9], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[9], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[9], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:1023] {
  mcx q[10], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[10], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[10], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[10], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[10], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[10], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[10], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[10], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[10], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[10], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[10], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}
for int i in [0:2047] {
  mcx q[11], q[14], q[16], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  mcx q[11], q[12], q[14], q[16], q[17], q[18];
  x q[12];
  x q[14];
  x q[16];
  x q[17];
  x q[14];
  mcx q[11], q[15], q[14], q[18];
  x q[14];
  x q[14];
  mcx q[11], q[13], q[15], q[14], q[18];
  x q[14];
  x q[17];
  mcx q[11], q[15], q[17], q[18];
  x q[17];
  x q[12];
  x q[14];
  mcx q[11], q[12], q[14], q[18];
  x q[12];
  x q[14];
  mcx q[11], q[12], q[18];
  x q[16];
  x q[17];
  mcx q[11], q[15], q[16], q[17], q[18];
  x q[16];
  x q[17];
  x q[14];
  x q[16];
  mcx q[11], q[13], q[14], q[16], q[18];
  x q[14];
  x q[16];
  mcx q[11], q[16], q[18];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[17];
  mcx q[11], q[12], q[13], q[14], q[15], q[16], q[17];
  h q[17];
  x q[12];
  x q[13];
  x q[14];
  x q[15];
  x q[16];
  x q[17];
  h q[12];
  h q[13];
  h q[14];
  h q[15];
  h q[16];
  h q[17];
}