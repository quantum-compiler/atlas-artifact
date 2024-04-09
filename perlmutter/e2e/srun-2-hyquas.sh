#!/bin/bash
#SBATCH -A YOUR_ACCOUNT
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 2
#SBATCH --gpus-per-node=4

module load cray-mpich/8.1.28
module load nccl
module load cudatoolkit
export MPICH_GPU_SUPPORT_ENABLED=1

cd $HYQUAS_ROOT/build

strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate" "bv")

for str in "${strings[@]}"; do
    # Execute the command with the current string
    srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
    ./main ../../atlas-artifact/circuit/MQTBench_31q/${str}_indep_qiskit_31_no_swap.qasm > ../../atlas-artifact/perlmutter/e2e/logs/hyquas/on_${str}_31.log
done
