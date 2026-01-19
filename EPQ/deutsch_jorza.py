from qiskit import QuantumCircuit
import matplotlib.pyplot as plt

# -----------------------------
# 1. Create a simple Deutsch–Jozsa circuit using balanced function
# -----------------------------
qc = QuantumCircuit(2, 1)

# Step 1: prepare output qubit
qc.x(1)
qc.h(1)

# Step 2: put input qubit in superposition
qc.h(0)

# Step 3: oracle (balanced function)
qc.cx(0, 1)  # comment out for constant function

# Step 4: interference
qc.h(0)

# Step 5: measure input qubit
qc.measure(0, 0)

# -----------------------------
# 2. Draw circuit
# -----------------------------
qc.draw(output='mpl')  # Matplotlib visual
plt.savefig("dj_circuit.png")  # Save for viewing in Codespaces
print("Circuit diagram saved as dj_circuit.png")
