#!/bin/bash
#SBATCH -A YOUR_ACCOUNT
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH --gpus-per-node=4

module load cudatoolkit/11.7
module load nccl/2.15.5
module load gcc/11.2.0
module load cray-mpich/8.1.25
export MPICH_GPU_SUPPORT_ENABLED=1

cd $HYQUAS_ROOT/build

strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate")

for str in "${strings[@]}"; do
    # Execute the command with the current string
    CUDA_VISIBLE_DEVICES=0 ./main ../../atlas-artifact/circuit/MQTBench_28q/${str}_indep_qiskit_28_no_swap.qasm > ../../atlas-artifact/perlmutter/e2e/logs/hyquas/on_${str}_28.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    CUDA_VISIBLE_DEVICES=0,1 ./main ../../atlas-artifact/circuit/MQTBench_29q/${str}_indep_qiskit_29_no_swap.qasm > ../../atlas-artifact/perlmutter/e2e/logs/hyquas/on_${str}_29.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    ./main ../../atlas-artifact/circuit/MQTBench_30q/${str}_indep_qiskit_30_no_swap.qasm > ../../atlas-artifact/perlmutter/e2e/logs/hyquas/on_${str}_30.log
done