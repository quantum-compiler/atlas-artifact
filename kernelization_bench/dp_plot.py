import math
import numpy as np

import matplotlib.pyplot as plt
from matplotlib import ticker

num_of_num_local_qubits = {}
max_global_qubits = 24
circuit_name = None
ts = [-5, 0, 2, 4, 10, 16, 20, 32,
      50, 70, 100, 150, 200, 300, 400, 500,
      650, 800, 1000, 1500, 2000, 3000, 4000]
num_t = len(ts)
results = [{} for _ in range(num_t)]
running_time = [{} for _ in range(num_t)]
ilp_time = {}
total_time = 0.0
total_preprocessing_time = {}
keep_circuit_names = {"ae", "dj", "ghz", "graphstate", "qft", "qpeexact", "su2random", "wstate", "ising", "qsvm",
                      "vqc", "hhl"}
num_circuits = len(keep_circuit_names)
with open('dp_result.csv') as f:
    for line in f:
        line = line.strip()
        numbers = line.split(',')
        if len(numbers) <= 1:
            # circuit name line
            circuit_name = line
            continue
        if circuit_name not in keep_circuit_names:
            continue
        num_qubits = int(numbers[0].strip())
        if len(numbers) < num_t * 2 + 3:
            # not finished, discard this line
            continue
        for i in range(num_t):
            if circuit_name not in results[i].keys():
                results[i][circuit_name] = []
        for i in range(num_t):
            results[i][circuit_name].append(float(numbers[i + 1].strip()))
        for i in range(num_t):
            if circuit_name not in running_time[i].keys():
                running_time[i][circuit_name] = []
        if circuit_name not in ilp_time.keys():
            ilp_time[circuit_name] = []
            total_preprocessing_time[circuit_name] = 0.0
        for i in range(num_t):
            running_time[i][circuit_name].append(float(numbers[i + num_t + 2].strip()))
            total_time += float(numbers[i + num_t + 2].strip())
        ilp_time[circuit_name].append(float(numbers[num_t * 2 + 2].strip()))
        total_preprocessing_time[circuit_name] += float(numbers[num_t * 2 + 2].strip()) + float(
            numbers[15 + num_t + 2].strip())
        total_time += float(numbers[num_t * 2 + 2].strip())

results_without_hhl = [
    {k: v for k, v in results_item.items() if k != "hhl"}
    for results_item in results
]
results_circuit_geomean = [
    [
        math.prod(result) ** (1.0 / len(result))
        for circuit, result in sorted(results_item.items())
    ]
    for results_item in results_without_hhl
]
results_circuit_names_without_hhl = [
    circuit
    for circuit, result in sorted(results_without_hhl[0].items())
]
results_geomean_without_hhl = [
    math.prod(results_item) ** (1.0 / len(results_item))
    for results_item in results_circuit_geomean
]

running_time_without_hhl = [
    {k: v for k, v in time_item.items() if k != "hhl"}
    for time_item in running_time
]
running_time_geomean = [
    math.prod([
        math.prod(result) ** (1.0 / len(result))
        for circuit, result in sorted(time_item.items())
    ]) ** (1.0 / len(time_item))
    for time_item in running_time_without_hhl
]

labels = ['Baseline', 'Atlas-Naive'] + ['Atlas'] * (num_t - 2)
styles = ['.-', '+-'] + ['x-'] * (num_t - 2)
markersize = [8] * num_t
plot_loc = [15, 1, 0]


def plot_individual():
    keep_circuit_names_sorted = [x for x in sorted(keep_circuit_names) if x != 'hhl'] + ["hhl"]

    # to_ref = ','.join([f'fig:dp_{circuit}' for circuit in keep_circuit_names_sorted[:-1]])
    # print(f'\\Cref{{{to_ref}}} show the resulting cost of \\Syss kernelizer for each circuit'
    #       ' compared against a baseline greedily packing gates into'
    #       'fusion kernels up to 5 qubits. ``\\Sys-Na\\"ive\'\' stands for \\tcd{OrderedKernelizer}.')
    # to_ref = ','.join([f'fig:dp_time_{circuit}' for circuit in keep_circuit_names_sorted[:-1]])
    # print(f'\\Cref{{{to_ref}}} show the preprocessing time of them.')

    for circuit in keep_circuit_names_sorted:
        qubit_range = range(28, 35) if circuit != "hhl" else [4, 7, 9, 10]
        plt.cla()
        plt.figure(constrained_layout=True)
        for i in plot_loc:
            plt.plot(
                qubit_range,
                results[i][circuit],
                styles[i],
                markersize=markersize[i],
                label=labels[i],
            )
        plt.xlabel('Number of qubits', fontsize=12, fontweight='bold')
        plt.xticks(
            qubit_range,
            fontsize=12,
        )
        plt.ylabel('Cost', fontsize=12, fontweight='bold')
        plt.yticks(fontsize=12)
        plt.ylim(bottom=0)
        fig = plt.gcf()
        legend = plt.legend(fontsize=12, ncol=2)  # , loc='lower right')
        # text = legend.get_texts()[0]
        # text.set_fontfamily('Sans Serif')
        fig.set_size_inches(5.6, 2.7)
        fig.savefig(f'dp_plot_{circuit}.pdf', dpi=800)
        #         print(
        #             f'''
        # \\begin{{figure}}
        # \\small
        # \\begin{{minipage}}{{0.48\\linewidth}}
        # \\includegraphics[width=0.99\\linewidth]{{figures/dp/dp_plot_{circuit}.pdf}}
        # \\end{{minipage}}'''
        #         )
        print(
            f'''
\\begin{{figure}}[H]
\\centering
\\includegraphics[width=0.97\\linewidth]{{figures/dp/dp_plot_{circuit}.pdf}}
\\caption{{The total execution cost of different kernelization algorithms on the circuit \\tcd{{{circuit}}}.}}
\\label{{fig:dp_{circuit}}}
\\end{{figure}}'''
        )
        plt.close()

    for circuit in keep_circuit_names_sorted:
        qubit_range = range(28, 35) if circuit != "hhl" else [4, 7, 9, 10]
        plt.cla()
        plt.figure(constrained_layout=True)
        for i in plot_loc:
            plt.plot(
                qubit_range,
                running_time[i][circuit],
                styles[i],
                markersize=markersize[i],
                label=labels[i],
            )
        plt.xlabel('Number of qubits', fontsize=12, fontweight='bold')
        plt.xticks(
            qubit_range,
            fontsize=12,
        )
        plt.ylabel('Preprocessing time (s)', fontsize=12, fontweight='bold')
        plt.yticks(fontsize=12)
        # if circuit == "hhl":
        plt.yscale("log")
        # else:
        #     plt.ylim(bottom=0)
        fig = plt.gcf()
        legend = plt.legend(fontsize=12, ncol=2)  # , loc='lower right')
        # text = legend.get_texts()[0]
        # text.set_fontfamily('Sans Serif')
        fig.set_size_inches(5.6, 2.7)
        fig.savefig(f'dp_time_{circuit}.pdf', dpi=800)
        #         print(
        #             f'''\\hfill
        # \\begin{{minipage}}{{0.48\\linewidth}}
        # \\includegraphics[width=0.99\\linewidth]{{figures/dp/dp_time_{circuit}.pdf}}
        # \\end{{minipage}}
        # \\caption{{The total execution cost and corresponding preprocessing time of different kernelizer algorithms on the circuit \\tcd{{{circuit}}}.}}
        # \\label{{fig:dp_{circuit}}}
        # \\end{{figure}}
        #     '''
        #         )

        print(
            f'''
\\begin{{figure}}[H]
\\centering
\\includegraphics[width=0.97\\linewidth]{{figures/dp/dp_time_{circuit}.pdf}}
\\caption{{The preprocessing time of different kernelization algorithms on the circuit \\tcd{{{circuit}}}.}}
\\label{{fig:dp_time_{circuit}}}
\\end{{figure}}'''
        )
        plt.close()

    to_ref = ','.join([f'fig:dp_{circuit}' for circuit in keep_circuit_names_sorted[:-1]])
    print(f'\\Cref{{{to_ref}}} show the resulting cost of kernelization algorithms for each circuit'
          ' compared against a baseline greedily packing gates into'
          'fusion kernels up to 5 qubits. ``\\Sys\'\' denotes \\kernelize{}. ``\\Sys-Naive\'\' denotes \\dpordered{}.')
    to_ref = ','.join([f'fig:dp_time_{circuit}' for circuit in keep_circuit_names_sorted[:-1]])
    print(f'\\Cref{{{to_ref}}} show the preprocessing time of them.')


def plot_geomean():
    x = np.arange(len(results_circuit_names_without_hhl))  # the label locations
    width = 1.0 / 4  # the width of the bars
    multiplier = 0

    plt.cla()
    fig, ax = plt.subplots(layout='constrained')
    for i in plot_loc:
        offset = width * multiplier
        rects = ax.bar(
            x + offset,
            results_circuit_geomean[i],
            width,
            label=labels[i]
        )
        ax.bar_label(rects, fmt="%.3f", padding=3, rotation=90)
        multiplier += 1
    plt.xlabel('Circuit name', fontsize=12, fontweight='bold')
    ax.set_xticks(x + 0.5 - width, results_circuit_names_without_hhl)
    # ax.set_xticklabels(ax.get_xticklabels(), rotation=45, ha='right')
    plt.ylabel('Geometric mean cost', fontsize=12, fontweight='bold')
    plt.yticks(fontsize=12)
    plt.ylim(bottom=0, top=3200)
    fig = plt.gcf()
    legend = plt.legend(fontsize=12, ncol=2, loc='upper left')
    # text = legend.get_texts()[0]
    # text.set_fontfamily('Sans Serif')
    fig.set_size_inches(11, 5)
    fig.savefig(f'dp_circuit_geomean.pdf', dpi=800)
    print(f'''
\\begin{{figure}}
\\centering
\\includegraphics[width=0.99\\linewidth]{{figures/dp/dp_circuit_geomean.pdf}}
\\end{{figure}}'''
          )
    plt.close()


def plot_geomean_relative_backup():
    x = np.arange(len(results_circuit_names_without_hhl))  # the label locations
    width = 1.0 / 4  # the width of the bars
    multiplier = 0
    plt.cla()
    fig, ax = plt.subplots(layout='constrained')
    for i in plot_loc:
        offset = width * multiplier
        to_plot = [results_circuit_geomean[i][j] / results_circuit_geomean[0][j] for j in
                   range(len(results_circuit_geomean[i]))]
        print(f'Geomean of {labels[i]}: {np.array(to_plot).prod() ** (1.0 / len(to_plot))}')
        rects = ax.bar(
            x + offset,
            to_plot,
            width,
            label=labels[i]
        )
        ax.bar_label(rects, fmt="%.3f", padding=3, rotation=90)
        multiplier += 1
    plt.xlabel('Circuit Name', fontsize=12, fontweight='bold')
    ax.set_xticks(x + 0.5 - width, results_circuit_names_without_hhl)
    # ax.set_xticklabels(ax.get_xticklabels(), rotation=45, ha='right')
    plt.ylabel('Relative Geomean Cost   ', fontsize=12, fontweight='bold')
    plt.yticks(fontsize=12)
    plt.ylim(bottom=0, top=1.71)
    fig = plt.gcf()
    legend = plt.legend(fontsize=12, ncol=3, loc='upper left')
    # text = legend.get_texts()[0]
    # text.set_fontfamily('Sans Serif')
    fig.set_size_inches(11, 2.5)
    fig.savefig(f'dp_circuit_geomean_relative.pdf', dpi=800)
    print(f'''
\\begin{{figure}}
\\centering
\\includegraphics[width=0.99\\linewidth]{{figures/dp/dp_circuit_geomean_relative.pdf}}
\\end{{figure}}'''
          )
    plt.close()


def plot_geomean_relative():
    width = 1.0 / 3  # the width of the bars
    x = np.array(np.arange(len(results_circuit_names_without_hhl) + 1), dtype=float)  # the label locations
    x[-1] += 0.5
    plt.cla()
    fig, ax = plt.subplots(layout='constrained')
    current_plot_loc = plot_loc[0]
    to_plot = [results_circuit_geomean[current_plot_loc][j] / results_circuit_geomean[0][j] for j in
               range(len(results_circuit_geomean[current_plot_loc]))]
    geomean = np.array(to_plot).prod() ** (1.0 / len(to_plot))
    to_plot.append(geomean)
    print(f'Geomean of {labels[current_plot_loc]}: {geomean}')
    ones_loc = np.array(x)
    ones_loc[-1] += width
    plt.plot(ones_loc + 0.5 - 1.5 * width, np.ones(len(to_plot)), '--', label=labels[0], color='orange')
    rects = ax.bar(
        x + 0.5 - width,
        to_plot,
        width,
        label=labels[current_plot_loc]
    )
    ax.bar_label(rects, fmt="%.3f", padding=3, rotation=90)
    plt.xlabel('Circuit Name', fontsize=12, fontweight='bold')
    ax.set_xticks(x + 0.5 - width, results_circuit_names_without_hhl + ['Geomean'])
    ax.set_xticklabels(ax.get_xticklabels(), rotation=25, ha='right')
    plt.ylabel('Relative Geomean Cost   ', fontsize=12, fontweight='bold')
    plt.yticks(fontsize=12)
    plt.ylim(bottom=0, top=1.71)
    fig = plt.gcf()
    legend = plt.legend(fontsize=12, ncol=3, loc='upper left')
    # text = legend.get_texts()[0]
    # text.set_fontfamily('Sans Serif')
    fig.set_size_inches(5.6, 2.8)
    fig.savefig(f'dp_circuit_geomean_relative.pdf', dpi=800)
    print(f'''
\\begin{{figure}}
\\centering
\\includegraphics[width=0.99\\linewidth]{{figures/dp/dp_circuit_geomean_relative.pdf}}
\\end{{figure}}'''
          )
    plt.close()


def plot_pruning_threshold():
    plt.cla()
    fig, ax = plt.subplots(layout='constrained')
    xs = []
    ys = []
    for i in range(3, num_t):
        xs.append(running_time_geomean[i])
        ys.append(results_geomean_without_hhl[i] / results_geomean_without_hhl[0])
    plt.yscale("log")
    plt.xscale("log")
    for x, y, text in zip(xs, ys, ts[3:]):
        ax.annotate(text, xy=(x, y * 1.003), fontsize=8)
        # plt.text(x, y, text)
    ax.plot(xs, ys, 'x-', label=labels[2])
    ax.plot(running_time_geomean[1], results_geomean_without_hhl[1] / results_geomean_without_hhl[0], '*',
            label=labels[1], markersize=12)
    ax.annotate('Atlas-Naive',
                xy=(running_time_geomean[1] * 1.1, results_geomean_without_hhl[1] / results_geomean_without_hhl[0]),
                fontsize=8)
    # ax.plot(running_time_geomean[0], results_geomean_without_hhl[0] / results_geomean_without_hhl[0], '^', label=labels[0])
    legend = plt.legend(fontsize=12, ncol=2)  # , loc='lower right')
    # text = legend.get_texts()[0]
    # text.set_fontfamily('Sans Serif')
    plt.xlabel('Geomean Preprocessing Time (s)', fontsize=12, fontweight='bold')
    plt.ylabel('Relative Geomean Cost', fontsize=12, fontweight='bold')
    fmt = ticker.StrMethodFormatter("{x:.2f}")
    ax.yaxis.set_major_formatter(fmt)
    ax.yaxis.set_minor_formatter(fmt)
    fig.set_size_inches(11, 5.6)
    fig.savefig('dp_pruning_threshold.pdf', dpi=800)
    print(f'''
\\begin{{figure*}}
\\centering
\\includegraphics[width=0.99\\linewidth]{{figures/dp/dp_pruning_threshold.pdf}}
\\label{{fig:dp-pruning}}
\\end{{figure*}}'''
          )
    plt.close()


if __name__ == '__main__':
    plot_individual()
    plot_geomean()
    plot_geomean_relative()
    plot_pruning_threshold()
    print('total time =', total_time)
    print('total preprocessing time =', total_preprocessing_time)
    print(sum(v for k, v in total_preprocessing_time.items() if k != 'hhl'))
