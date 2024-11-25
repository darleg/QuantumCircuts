# Bell States
from qiskit import QuantumCircuit, transpile
from qiskit_aer import AerSimulator

# Create Bell Quantum Circuit
qc = QuantumCircuit(2)
qc.h(0)  # Hadamard gate to qubit 0
qc.cx(0, 1)  # Controlled-NOT gate (control q0 and target q1)
qc.measure_all()  # Measure all qubits

# Use this imulator
simulator = AerSimulator()

# Transpile the circuit
compiled_circuit = transpile(qc, simulator)

# Execute the circuit on the qasm simulator
job = simulator.run(compiled_circuit)

# Get results from the job
result = job.result()

# Print title and show circuit in text
print('Bell Quantum Circuit Diagram')
print(qc.draw(output='text'))

# Get the counts of the results
counts = result.get_counts(qc)
print("\nTotal count for 00 and 11 are:", counts)


