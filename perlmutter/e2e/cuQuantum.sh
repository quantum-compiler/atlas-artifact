#!/bin/bash

mkdir -p logs
mkdir -p logs/cusvaer

CONSTRAINT="gpu"
NUM_NODES=$1
GPUS_PER_TASK=1
GPUS_PER_NODE=$2

REGISTRY="nvcr.io/nvidia"
IMAGE_NAME="cuquantum-appliance"
IMAGE_TAG="23.03"

NUM_GPUS=$((${GPUS_PER_NODE}*${NUM_NODES}))
srun --account=m4138 \
     --qos=regular \
     --constraint=${CONSTRAINT} \
     --nodes=${NUM_NODES} \
     --gpus-per-node=${GPUS_PER_NODE} \
     --gpus-per-task=${GPUS_PER_TASK} \
     --gpu-bind=none \
     --ntasks=${NUM_GPUS} \
     --gpus=${NUM_GPUS} \
     shifter --image="${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}" \
     --module=cuda-mpich \
     python dist_cuquantum.py --nqubits $3
     
