from qiskit import transpile, QuantumCircuit
from qiskit.circuit.random import random_circuit
from qiskit_aer import Aer
import time
import argparse

from qdao import Engine

parser = argparse.ArgumentParser(description='Run QDAO')
parser.add_argument('-n', '--num-qubits')
parser.add_argument('-m', '--num-primary')
parser.add_argument('-t', '--num-local')

args = parser.parse_args()

num_qubits = int(args.num_qubits)
num_primary = int(args.num_primary)
num_local = int(args.num_local)
circ = QuantumCircuit.from_qasm_file(
    f'../atlas-artifact/circuit/MQTBench_{num_qubits}q/qft_indep_qiskit_{num_qubits}_no_swap.qasm')
backend = Aer.get_backend("aer_simulator")
circ = transpile(circ, backend=backend)

# `num_primary`: size of a compute unit
# `num_local`: size of a storage unit
st = time.time()
eng = Engine(circuit=circ, num_primary=num_primary, num_local=num_local, sv_location="memory", device="GPU")
eng.run()
ed = time.time()
print(ed - st)

# from qdao.util import retrieve_sv
#
# res = retrieve_sv(num_qubits, num_local=num_local)
# print(res)
