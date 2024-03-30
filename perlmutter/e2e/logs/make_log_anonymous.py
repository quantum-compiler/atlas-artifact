benchmark = {"ae", "dj", "ghz", "graphstate", "ising", "qft", "qpeexact", "qsvm", "su2random", "vqc", "wstate"}
num_qubits = [28, 29, 30, 31, 32, 33, 34]
for bench in benchmark:
    for nq in num_qubits:
        try:
            result_lines = []
            with open('./atlas/' + bench + '_' + str(nq) + '.log', 'r') as f:
                lines = f.readlines()
                for line in lines:
                    if line.startswith('Use cached schedule'):
                        result_lines.append('Use cached schedule\n')
                    elif line.startswith('Computed and cached schedule'):
                        result_lines.append('Computed and cached schedule in' + line.split('in')[-1])
                    elif 'Use cached schedule' in line:
                        s = line.split('Use cached schedule')
                        assert len(s) == 2
                        t = s[1].split('.schedule')
                        assert(len(t) == 2)
                        result_lines.append(s[0] + t[1])
                    elif 'Computed and cached schedule' in line:
                        s = line.split('Computed and cached schedule')
                        assert len(s) == 2
                        t = s[1].split('in')
                        assert(len(t) >= 2)
                        result_lines.append(s[0] + 'Computed and cached schedule in' + t[-1])
                    else:
                        result_lines.append(line)
            with open('./atlas/' + bench + '_' + str(nq) + '.log', 'w') as f:
                f.writelines(result_lines)
        except IOError as e:
            pass
