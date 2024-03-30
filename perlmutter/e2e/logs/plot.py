import numpy as np
# import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
# import seaborn as sns
import argparse
import glob
# from cycler import cycler
from matplotlib.pyplot import cm
import re
import os

# Define the regular expression pattern to match the simulation time information
pattern = r"\[NCCL Rank (\d+)\] Total Simulation Time: (\d+\.\d+)ms"
pattern_hyquas = r"Logger\[(\d+)\]: Time Cost: (\d+) us"
pattern_cusv = r"(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2},\d{3}) INFO\s+- \[GPU\] Averaged elapsed time: (\d+\.\d+) s"
pattern_cusvaer = r"(\d+\.\d+)ms"
pattern_quartz_compile_time = r"Time Cost Compiling: (\d+) us, Total: (\d+) us"
pattern_shuffles_quartz = r"Num Shuffles: (\d+)"
pattern_shuffles_hyquas = r"Logger\[(\d+)\]: Total Groups: (\d+) (\d+) (\d+) (\d+)"
# process data
benchmark = {"ae", "dj", "ghz", "graphstate", "ising", "qft", "qpeexact", "qsvm", "su2random", "vqc", "wstate"}
# benchmark = {"ae", "qft", "qftentangled", "ghz", "graphstate", "twolocalrandom", "realamprandom", "su2random"}
num_qubits = [28,29,30,31,32,33,34]
num_gpus = [1,2,4,8,16,32,64]
# num_qubits = [28,29,30,31,32,33]
# num_gpus = [1,2,4,8,16,32]
launch_method = "result-srun"
# benchmark = {"qft"}
# num_qubits = [28,30,31,32,33]
# num_qubits = [28,30]
simu_time_quartz = {}
simu_time_hyquas = {}
simu_time_cusv = {}
simu_time_qiskit = {}
compile_time_quartz = {}
num_shuffles_quartz = {}
num_shuffles_hyquas = {}

#read data from file: quartz
for bench in benchmark:
    simulation_time = []
    num_shuffles = []
    for nq in num_qubits:
        t = 0
        try:
            with open('./atlas/'+bench+'_'+str(nq)+'.log', 'r') as f:
                last_lines = f.readlines()[-1000:]
                for line in last_lines:
                    match = re.search(pattern, line)
                    if match:
                        t_rank = float(match.group(2))
                        t = max(t,t_rank)
                    # shuffle = re.search(pattern_shuffles_quartz, line)
                    # if shuffle:
                    #     num_shuffles.append(int(shuffle.group(1)))
                simulation_time.append(t)
        except IOError as e:
            simulation_time.append(None)
            num_shuffles.append(None)
    simu_time_quartz[bench] = simulation_time
    num_shuffles_quartz[bench] = num_shuffles

print(simu_time_quartz['graphstate'])

#read data from file: hyquas
for bench in benchmark:
    simulation_time = []
    num_shuffles = []
    for nq in num_qubits:
        t = 0
        try:
            with open('./hyquas/on_'+bench+'_'+str(nq)+'.log', 'r') as f:
                last_lines = f.readlines()
                for line in last_lines:
                    match = re.search(pattern_hyquas, line)
                    if match:
                        t_rank = float(match.group(2))
                        t = max(t,t_rank)
                    # shuffle = re.search(pattern_shuffles_hyquas, line)
                    # if shuffle:
                    #     num_shuffles.append(int(shuffle.group(2))-1)
                simulation_time.append(t/1000)
        except IOError as e:
            simulation_time.append(None)
            num_shuffles.append(None)
    simu_time_hyquas[bench] = simulation_time
    num_shuffles_hyquas[bench] = num_shuffles

print(simu_time_hyquas['graphstate'])

#read data from file: cusv
for bench in benchmark:
    simulation_time = []
    for i, nq in enumerate(num_qubits):
        t = 0
        num_ranks = num_gpus[i]
        try:
            for rank in range(num_ranks):
                with open('./cusvaer/'+bench+'_'+str(nq)+'_'+str(rank)+'.log', 'r') as f:
                    last_lines = f.readlines()
                    for line in last_lines:
                        match = re.search(pattern_cusvaer, line)
                        if match:
                            t_rank = float(match.group(1))
                            t = max(t,t_rank)
            simulation_time.append(t)
        except IOError as e:
            simulation_time.append(None)
    simu_time_cusv[bench] = simulation_time

# print(simu_time_cusv)

#read data from file: qiskit
for bench in benchmark:
    simulation_time = []
    for nq in num_qubits:
        t = 0
        try:
            with open('./qiskit/'+bench+'_'+str(nq)+'_0.log', 'r') as f:
                last_lines = f.readlines()
                for line in last_lines:
                    match = re.search(pattern_cusvaer, line)
                    if match:
                        t_rank = float(match.group(1))
                        t = max(t,t_rank)
                simulation_time.append(t)
        except IOError as e:
            simulation_time.append(None)
    simu_time_qiskit[bench] = simulation_time

# print(simu_time_qiskit)

#read data from file: quartz compile time
# for bench in benchmark:
#     nq = 34
#     t = 0
#     try:
#         with open('./result-compiletime-quartz/quartz/'+bench+'_'+str(nq)+'.log', 'r') as f:
#             last_lines = f.readlines()[-100:]
#             for line in last_lines:
#                 match = re.search(pattern_quartz_compile_time, line)
#                 if match:
#                     t_rank = float(match.group(1))
#                     t = max(t,t_rank)
#     except IOError as e:
#         t = None
#     compile_time_quartz[bench] = t/1000000

# print(compile_time_quartz)

baselines = {'Atlas':simu_time_quartz, "HyQuas":simu_time_hyquas, "cuQuantum": simu_time_cusv, "Qiskit": simu_time_qiskit}
# baselines = {'Atlas':simu_time_quartz, "HyQuas":simu_time_hyquas,"cuQuantum": simu_time_cusv}
for baseline, simu_time in baselines.items():
    if baseline == 'Atlas':
        continue
    speedups = []
    mean_speedups = []
    for circuit in benchmark:
        cuquantum = np.array(simu_time[circuit])
        quartz = np.array(simu_time_quartz[circuit])
        if baseline == 'Qiskit':
            cuquantum = cuquantum[:3]
            quartz = quartz[:3]
        speedup = cuquantum / quartz
        mean_speedups.append(speedup.mean())
        speedups.append(speedup.max())
    print('max speedup over', baseline, np.array(speedups).max())
    print('mean speedup over', baseline, np.array(mean_speedups).mean())
speedups = []
mean_speedups = []
for circuit in benchmark:
    best = np.minimum(np.array(simu_time_hyquas[circuit]), np.array(simu_time_cusv[circuit]))
    quartz = np.array(simu_time_quartz[circuit])
    speedup = best / quartz
    mean_speedups.append(speedup.mean())
    speedups.append(speedup.max())
print('max speedup over best for each individual circuit', np.array(speedups).max())
print('mean speedup over best for each individual circuit', np.array(mean_speedups).mean())
def plot_perf(circuit):
    # plt.style.use('seaborn-bright')
    # plt.figure(figsize=(18, 9))
    plt.cla()
    # plt.grid(linestyle="--", axis='y')
    # mpl.rcParams['axes.linewidth'] = 1
    color_cycler =  [(0.2980392156862745, 0.4470588235294118, 0.6901960784313725), (0.8666666666666667, 0.5176470588235295, 0.3215686274509804), (0.3333333333333333, 0.6588235294117647, 0.40784313725490196), (0.7686274509803922, 0.3058823529411765, 0.3215686274509804),
    (0.5058823529411764, 0.4470588235294118, 0.7019607843137254), (0.5364705882352941, 0.06058823529411764, 0.3964705882352941), (0.8549019607843137, 0.5450980392156862, 0.7647058823529411), (0.5490196078431373, 0.5490196078431373, 0.5490196078431373), (0.8, 0.7254901960784313, 0.4549019607843137), (0.39215686274509803, 0.7098039215686275, 0.803921568627451)]
    marker_cycler = ['x-', '.--', '^-', '*-', 's', 'D', 'v', 'd', '>', 'h', 'D']

    marker = iter(marker_cycler)
    ax = plt.gca()
    plt.grid(False, axis='y')
    best_baseline = np.repeat(1e12,len(num_qubits))
    show_full_qiskit = False
    max_y = 0
    for baseline in baselines:
        if baseline != 'Qiskit':
            max_y = max(max_y, max(baselines[baseline][circuit]) * 1.05)
    for baseline in baselines:
        # c = next(color)
        m = next(marker)
        name = baseline
        if baseline == 'Qiskit' and not show_full_qiskit and baselines[baseline][circuit][0] * 1.05 >= max_y:
            # out of plot, do not plot
            continue
        plt.plot(num_qubits, baselines[baseline][circuit], m, label=name, markersize=8)
        if baseline != 'Atlas':
            tmp = np.array(baselines[baseline][circuit])
            tmp[tmp==None] = 1e10
            best_baseline = np.minimum(best_baseline, tmp)

    print(circuit)
    print(simu_time_quartz[circuit])
    ours = np.array(simu_time_quartz[circuit])
    improve = best_baseline / ours
    # i=0
    # for v in improve:
    #     plt.text(x=num_qubits[i]-0.3,y=ours[i]+200,s=str(round(v,2))+'x')
    #     i += 1

    plt.xticks(num_qubits,labels=[str(num_gpus[x])+'\n('+str(round(improve[x],1))+'x)' for x in range(len(num_gpus))],fontsize=13)
    # plt.xticks(num_qubits,labels=[str(num_gpus[x]) for x in range(len(num_gpus))],fontsize=12)
    plt.yticks(fontsize=12)
    if show_full_qiskit:
        plt.yscale('log')
    else:
        plt.ylim(bottom=0, top=max_y)

    plt.xlabel('Number of GPUs / Speedup of Atlas', fontsize=14, fontweight='bold')
    plt.ylabel('Simulation Time (ms)', fontsize=14, fontweight='bold')
    fig = plt.gcf()
    plt.legend(fontsize=13, ncol=1)
    fig.set_size_inches(6, 2.9)
    plt.savefig(f'./figures/{circuit}_perf{"_log" if show_full_qiskit else ""}.pdf', dpi=1000, bbox_inches='tight')

def plot_scalability():
    gpu = ["1", "2", "4"]
    num_q = [28,29,30,31,32]
    #  v100
    # results=[[0.86,1.6,3.29,6.65,14.4],[0.8781,1.3451,2.7082,5.3902,11.1126],[0.506,0.894,1.3431,2.7688,5.6538]]
    #  A100 perlmutter
    results=[[0.62,1.15,2.35,3.8,8.3],[],[]]
    plt.cla()
    color_cycler =  [(0.2980392156862745, 0.4470588235294118, 0.6901960784313725), (0.8666666666666667, 0.5176470588235295, 0.3215686274509804), (0.3333333333333333, 0.6588235294117647, 0.40784313725490196), (0.7686274509803922, 0.3058823529411765, 0.3215686274509804),
    (0.5058823529411764, 0.4470588235294118, 0.7019607843137254), (0.5364705882352941, 0.06058823529411764, 0.3964705882352941), (0.8549019607843137, 0.5450980392156862, 0.7647058823529411), (0.5490196078431373, 0.5490196078431373, 0.5490196078431373), (0.8, 0.7254901960784313, 0.4549019607843137), (0.39215686274509803, 0.7098039215686275, 0.803921568627451)]
    marker_cycler = ['x', '.', '^', 's', 'D', 'v', '*', 'd', '>', 'h', 'D']
    marker = iter(marker_cycler)
    ax = plt.gca()
    plt.grid(False, axis='y')
    total_width, n = 150, len(gpu)
    width = total_width / n
    total_width = total_width + width
    x_pos = total_width*np.arange(len(num_q))
    plt.xticks(x_pos, num_q, fontsize=12)
    x_pos = x_pos - (total_width - 2 * width) / 2
    idx=0
    for device_num in gpu:
        m = next(marker)
        plt.bar(x_pos, results[idx], width=width, label=device_num+" GPU")
        x_pos += width
        idx += 1

    plt.yticks(fontsize=12)

    plt.xlabel('Number of Qubits', fontsize=12, fontweight='bold')
    plt.ylabel('Simulation Time (s)', fontsize=12, fontweight='bold')
    fig = plt.gcf()
    plt.legend(fontsize=12, ncol=1)
    fig.set_size_inches(6, 2.7)
    plt.savefig('figures/scalability.pdf', dpi=1000, bbox_inches='tight')



if not os.path.exists('figures'):
    os.makedirs('figures')
for circuit in benchmark:
    plot_perf(circuit)
# plot_scalability()
