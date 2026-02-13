from qiskit import QuantumCircuit
from qiskit.primitives import StatevectorSampler
from qiskit.visualization import plot_histogram
import matplotlib.pyplot as plt

# -----------------------------
# 1. Create circuit: 1 input + 1 output qubit
# -----------------------------
qc = QuantumCircuit(2)
# Initialize output qubit in |1> and apply H
qc.x(1)
qc.h(1)

# Put input qubit in superposition
qc.h(0)

# -----------------------------
# 2. Oracle: choose function
# -----------------------------
# Example: balanced function f(x) = x
qc.cx(0, 1)  # Comment this line for constant function f(x) = 0

# -----------------------------
# 3. Interference: apply H to input qubit again
# -----------------------------
qc.h(0)

# Measure all qubits
qc.measure_all()

# -----------------------------
# 4. Run circuit using StatevectorSampler
# -----------------------------
sampler = StatevectorSampler()
result = sampler.run([qc], shots=1024).result()

# Get measurement counts
counts = result[0].data.meas.get_counts()
print("Measurement results:", counts)

# -----------------------------
# 5. Plot histogram
# -----------------------------
plot_histogram(counts)
plt.savefig("dj_statevector_histogram.png")
print("Histogram saved as dj_statevector_histogram.png")
