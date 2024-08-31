import math
import os

import matplotlib.pyplot as plt

plt.rcParams['pdf.fonttype'] = 42  # TrueType
results = [{}, {}, {}, {}]  # heuristics (#stages, #swaps), ilp (#stages, #swaps)
num_of_num_local_qubits = {}
max_global_qubits = 24
circuit_name = None
keep_circuit_names = {"ae", "dj", "ghz", "graphstate", "qft", "qpeexact", "su2random", "wstate", "ising", "qsvm",
                      "vqc"}
num_circuits = len(keep_circuit_names)
with open('ilp_result.csv') as f:
    for line in f:
        numbers = line.split(',')[:-1]
        if len(numbers) <= 1:
            # circuit name line
            circuit_name = line
            continue
        num_qubits = int(numbers[0].strip())
        for i in range(4):
            if num_qubits not in results[i].keys():
                results[i][num_qubits] = {}
        if num_qubits not in num_of_num_local_qubits.keys():
            num_of_num_local_qubits[num_qubits] = len(numbers) - 1
        elif num_of_num_local_qubits[num_qubits] != len(numbers) - 1:
            # not finished, discard this line
            continue
        # heuristic results come first
        for j in range(4):
            if circuit_name not in results[j][num_qubits].keys():
                results[j][num_qubits][circuit_name] = [
                    int(num.strip()) for num in numbers[1:]
                ]
                break
        else:
            assert False

results_geomean = [
    {
        num_qubits: [
            math.prod([numbers[i] for circuit_name, numbers in result.items()])
            ** (1.0 / len(result))
            for i in reversed(range(num_of_num_local_qubits[num_qubits]))
        ]
        for num_qubits, result in results_item.items()
    }
    for results_item in results
]
labels = ['SnuQS', 'SnuQS', 'Atlas', 'Atlas']
styles = ['x-', 'x-', '.-', '.-']
markersize = [4, 4, 8, 8]

for num_qubits in num_of_num_local_qubits.keys():
    plt.cla()
    plt.figure(constrained_layout=True)
    for i in [2, 0]:
        plt.plot(
            range(
                num_qubits - num_of_num_local_qubits[num_qubits] + 1,
                num_qubits + 1,
            ),
            results_geomean[i][num_qubits],
            styles[i],
            markersize=markersize[i],
            label=labels[i],
        )
    plt.xlabel('Number of local qubits', fontsize=12, fontweight='bold')
    plt.xticks(
        range(
            num_qubits - num_of_num_local_qubits[num_qubits] + 1,
            num_qubits + 1,
            2 if num_qubits == 31 else 3,
        ),
        fontsize=12,
    )
    plt.ylabel('Geomean\nof #stages', fontsize=12, fontweight='bold')
    plt.yticks(fontsize=12)
    plt.ylim(bottom=0, top=6 if num_qubits == 31 else 8)
    fig = plt.gcf()
    legend = plt.legend(fontsize=12, ncol=2, loc='upper right')
    # text = legend.get_texts()[0]
    # text.set_fontfamily('Sans Serif')
    fig.set_size_inches(5.6, 1.5)
    fig.savefig(f'ilp_plot_{num_qubits}.pdf', dpi=800)
    print(
        f'''
\\begin{{minipage}}{{2.3in}}
\\includegraphics[width=0.99\linewidth]{{figures/ilp_plot_{num_qubits}.pdf}}
\\caption{{The geometric mean of the number of stages among {num_circuits} circuits with {num_qubits} qubits.}}
\\label{{fig:ilp_{num_qubits}}}
\\end{{minipage}}
'''
    )
    plt.close()

    plt.cla()
    plt.figure(constrained_layout=True)
    for i in [3, 1]:
        plt.plot(
            range(
                num_qubits - num_of_num_local_qubits[num_qubits] + 1,
                num_qubits + 1,
            ),
            results_geomean[i][num_qubits],
            styles[i],
            markersize=markersize[i],
            label=labels[i],
        )
    plt.xlabel('Number of local qubits', fontsize=12, fontweight='bold')
    plt.xticks(
        range(
            num_qubits - num_of_num_local_qubits[num_qubits] + 1,
            num_qubits + 1,
            2 if num_qubits == 31 else 3,
        ),
        fontsize=12,
    )
    plt.ylabel('Geomean of #swaps', fontsize=12, fontweight='bold')
    plt.yticks(fontsize=12)
    plt.ylim(bottom=0)
    fig = plt.gcf()
    legend = plt.legend(fontsize=12, ncol=2, loc='lower left')
    # text = legend.get_texts()[0]
    # text.set_fontfamily('Sans Serif')
    fig.set_size_inches(5.6, 2.7)
    fig.savefig(f'ilp_swaps_{num_qubits}.pdf', dpi=800)
    print(
        f'''
\\begin{{figure}}[t]
\\centering
\\includegraphics[width=0.99\linewidth]{{figures/ilp_swaps_{num_qubits}.pdf}}
\\caption{{The geometric mean of the number of swaps among {num_circuits} circuits with {num_qubits} qubits.}}
\\label{{fig:ilp_swaps_{num_qubits}}}
\\end{{figure}}
'''
    )
    plt.close()
