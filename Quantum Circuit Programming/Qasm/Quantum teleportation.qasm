OPENQASM 3;
include 'customgates.inc';

bit[3] c;
qubit[3] q;

h q[1];
cx q[1], q[2];
cx q[0], q[1];
h q[0];

c[0] = measure q[0];
c[1] = measure q[1];
c[2] = measure q[2];