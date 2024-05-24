#!/bin/bash

# Define the array of strings
strings=("ising" "qsvm" "vqc")
n_values=(28 29 30 31 32 33 34 35 36 37 38)

# Iterate over the strings
for str in "${strings[@]}"; do
    # Iterate over the n values
    for n in "${n_values[@]}"; do
        # Source and destination file paths
        src_file="NWQBench/${str}_n${n}_no_swap.qasm"
        dest_file="MQTBench_${n}q/${str}_indep_qiskit_${n}_no_swap.qasm"
        
        # Copy the file
        cp $src_file $dest_file
    done
done
