import os

circuit_names = ["ae", "dj", "ghz", "graphstate", "qft", "qpeexact", "su2random", "wstate", "ising", "qsvm", "vqc"]
description = {
    "ae": "amplitude estimation",
    "dj": "Deutsch–Jozsa algorithm",
    "ghz": "GHZ state",
    "graphstate": "graph state",
    "qft": "quantum Fourier transform",
    "qpeexact": "exact quantum phase estimation",
    "su2random": "SU2 ansatz with random param.",
    "wstate": "W state",
    "ising": "Ising model",
    "qsvm": "quantum support vector machine",
    "vqc": "variational quantum classifier"
}


def print_circuit_num_gates():
    for circuit_name in sorted(circuit_names):
        print(f'{circuit_name} & {description[circuit_name]}', end='')
        for qubit in range(28, 37):
            nwq_path = f'../circuit/NWQBench/{circuit_name}_n{qubit}_no_swap.qasm'
            mqt_path = f'../circuit/MQTBench_{qubit}q/{circuit_name}_indep_qiskit_{qubit}_no_swap.qasm'
            if os.path.exists(nwq_path):
                with open(nwq_path) as f:
                    s = f.read()
            else:
                with open(mqt_path) as f:
                    s = f.read()
            number = s.count(';') - 3
            print(f' & {number}', end='')
        print(' \\\\')

    print(f'hhl', end='')
    for qubit in [4, 7, 9, 10]:
        nwq_path = f'../circuit/NWQBench/hhl_{qubit}_no_swap.qasm'
        with open(nwq_path) as f:
            s = f.read()
        number = s.count(';') - 3
        print(f' & {number}', end='')
    print(' \\\\')


if __name__ == '__main__':
    print_circuit_num_gates()
