#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 00:30:00
#SBATCH -N 1
#SBATCH --gpus-per-node=4

module load cray-mpich/8.1.28
module load nccl
module load cudatoolkit
export MPICH_GPU_SUPPORT_ENABLED=1

mkdir -p logs

for gpu in 1 2 4; do
  if [ $gpu -lt 2 ]; then
    ../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 38000 -ll:zsize 70000 --local-qubits 28 --all-qubits 28 --circuit qft >logs/offload_${gpu}_28.log
  fi
  if [ $gpu -lt 4 ]; then
    ../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 38000 -ll:zsize 70000 --local-qubits 28 --all-qubits 29 --circuit qft >logs/offload_${gpu}_29.log
  fi
  ../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 38000 -ll:zsize 70000 --local-qubits 28 --all-qubits 30 --circuit qft >logs/offload_${gpu}_30.log
  ../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 38000 -ll:zsize 100000 --local-qubits 28 --all-qubits 31 --circuit qft >logs/offload_${gpu}_31.log
  ../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 38000 -ll:zsize 200000 --local-qubits 28 --all-qubits 32 --circuit qft >logs/offload_${gpu}_32.log
done
