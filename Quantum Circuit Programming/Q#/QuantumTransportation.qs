
@EntryPoint()
operation QuantumTransportation() : (Result, Result, Result) {  
    // Two qubits, q0 and q1, in the 0 state.
    use (q0, q1, q2) = (Qubit(), Qubit(), Qubit());
    // Transportation
    H(q1);
    CNOT(q1, q2);
    CNOT(q0, q1);
    H(q0);
    // Measure q0, q1. q2 and store the results in m0, m1 and m2.
    let (m0, m1, m2) = (M(q0), M(q1), M(q2));
    // Reset q0, q1 and q2 to the 0 state.
    Reset(q0);
    Reset(q1);
    Reset(q2);
    // Return the measurement results.
    return (m0, m1, m2);
}
