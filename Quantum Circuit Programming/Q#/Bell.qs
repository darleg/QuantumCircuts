
@EntryPoint()
operation Bell() : (Result, Result) {  
    // Two qubits, q0 and q1, in the 0 state.
    use (q0, q1) = (Qubit(), Qubit());
    // Put q0 into an even superposition.
    // 50% chance of being measured as 0 or 1.
    H(q0);
    // Entangle q0 and q1, making q1 depend on q0.
    CNOT(q0, q1);
    // Measure q0 and q1 and store the results in m1 and m2.
    let (m0, m1) = (M(q0), M(q1));
    // Reset q0 and q1 to the 0 state.
    Reset(q0);
    Reset(q1);
    return (m0, m1);
}