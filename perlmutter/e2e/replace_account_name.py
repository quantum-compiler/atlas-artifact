file_list = [f'srun-{n}-{s}.sh' for n in [1, 2, 4, 8, 16, 32, 64, 128, 256]
             for s in ['hyquas', 'quartz']] + ['cuQuantum.sh', 'Qiskit.sh', '../offload/srun_offload.sh']


def replace_account_name(input_line, file_list):
    for file_path in file_list:
        try:
            # Read the file contents
            with open(file_path, 'r') as file:
                lines = file.readlines()

            if len(lines) >= 2 and lines[1].startswith('#SBATCH -A'):
                # Replace the second line
                lines[1] = "#SBATCH -A " + input_line + '\n'
            else:
                found = False
                for i in range(len(lines)):
                    if lines[i].startswith('srun --account='):
                        lines[i] = f"srun --account={input_line} \\\n"
                        found = True
                        break
                if not found:
                    print(f"The place to update account name of '{file_path}' is not found.")
                    continue

            # Write the updated contents back to the file
            with open(file_path, 'w') as file:
                file.writelines(lines)

            print(f"Updated the account name of '{file_path}' successfully.")

        except FileNotFoundError:
            print(f"File '{file_path}' not found.")
        except Exception as e:
            print(f"An error occurred while processing '{file_path}': {e}")


# Example usage
if __name__ == "__main__":
    input_line = input("Enter your account name: ")
    replace_account_name(input_line, file_list)
