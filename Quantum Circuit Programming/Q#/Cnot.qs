@EntryPoint()
operation Cnot() : (Result, Result) {  
    // Two qubits, q0 and q1, in the 0 state.
    use (q0, q1) = (Qubit(), Qubit());
    // Entangle q0 and q1, making q1 depend on q0.
    CNOT(q0, q1);
    // Measure q0 and q1 and store the results in m1 and m2.
    let (m0, m1) = (M(q0), M(q1));
    // Reset q0 and q1 to the 0 state.
    Reset(q0);
    Reset(q1);
    // Return the measurement results.
    return (m0, m1);
}