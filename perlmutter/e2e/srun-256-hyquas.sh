#!/bin/bash
#SBATCH -A YOUR_ACCOUNT
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 00:30:00
#SBATCH -N 256
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
    srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
    ./main ../../atlas-artifact/circuit/MQTBench_38q/${str}_indep_qiskit_38_no_swap.qasm > ../../atlas-artifact/perlmutter/e2e/logs/hyquas/on_${str}_38.log
done
