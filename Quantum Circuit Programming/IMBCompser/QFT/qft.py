from qiskit import QuantumRegister, ClassicalRegister, QuantumCircuit
from numpy import pi

qreg_q = QuantumRegister(4, 'q')
creg_c = ClassicalRegister(4, 'c')
circuit = QuantumCircuit(qreg_q, creg_c)

# quantum Fourier transform
circuit.x(qreg_q[0])
circuit.x(qreg_q[2])
circuit.barrier(qreg_q)
circuit.h(qreg_q[0])
circuit.cp(pi / 2, qreg_q[1], qreg_q[0])
circuit.h(qreg_q[1])
circuit.cp(pi / 4, qreg_q[2], qreg_q[0])
circuit.cp(pi / 2, qreg_q[2], qreg_q[1])
circuit.h(qreg_q[2])
circuit.cp(pi / 8, qreg_q[3], qreg_q[0])
circuit.cp(pi / 4, qreg_q[3], qreg_q[1])
circuit.cp(pi / 2, qreg_q[3], qreg_q[2])
circuit.h(qreg_q[3])
circuit.measure(qreg_q, creg_c)