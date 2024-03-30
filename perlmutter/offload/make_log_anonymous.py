num_gpus = [1, 2, 4]
num_qubits = [28, 29, 30, 31, 32]
for g in num_gpus:
    for nq in num_qubits:
        try:
            result_lines = []
            with open(f'logs/offload_{g}_{nq}.log', 'r') as f:
                lines = f.readlines()
                for line in lines:
                    if line.startswith('command line - '):
                        result_lines.append('command line - ...\n')
                    elif line.startswith('python path: '):
                        result_lines.append('python path: ...\n')
                    else:
                        result_lines.append(line)
            with open(f'logs/offload_{g}_{nq}.log', 'w') as f:
                f.writelines(result_lines)
        except IOError as e:
            pass
