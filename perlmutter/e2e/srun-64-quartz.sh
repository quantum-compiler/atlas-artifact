#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 64
#SBATCH --gpus-per-node=4

module load cray-mpich/8.1.28
module load nccl
module load cudatoolkit
export MPICH_GPU_SUPPORT_ENABLED=1

strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate")

mkdir -p logs
mkdir -p logs/atlas

for str in "${strings[@]}"; do
    # Execute the command with the current string
    srun -u \
         --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
         --ntasks-per-node=1\
         ../../build/examples/mpi-based/simulate --import-circuit ${str} --n 36 --local 28 --device 4 --use-ilp > logs/atlas/${str}_36_28.log
    srun -u \
         --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
         --ntasks-per-node=1\
         ../../build/examples/mpi-based/simulate --import-circuit ${str} --n 37 --local 29 --device 4 --use-ilp > logs/atlas/${str}_37_29.log
done
