#!/bin/bash

function run_cmake() {

# set CUDA dir
if [ -n "$CUDA_DIR" ]; then
  SET_CUDA="-DCUDA_PATH=${CUDA_DIR}"
fi

# set custatevec dir
if [ -n "$CUQUANTUM_DIR" ]; then
  SET_CUQUANTUM="-DCUQUANTUM_ROOT=${CUQUANTUM_DIR}"
fi

# set nccl dir
if [ -n "$NCCL_DIR" ]; then
  SET_NCCL="-DNCCL_ROOT=${NCCL_DIR}"
fi

if [ "$USE_LEGION" = "ON" ]; then
  SET_LEGION="-DUSE_LEGION=ON"
elif [ "$USE_LEGION" = "OFF" ]; then
  SET_LEGION="-DUSE_LEGION=OFF"
else
  SET_LEGION="-DUSE_LEGION=OFF"
fi


SRC_LOCATION=${SRC_LOCATION:=`dirname $0`/../}
CMAKE_COMMAND="cmake -DCMAKE_BUILD_TYPE=Release -DCUDA_USE_STATIC_CUDA_RUNTIME=OFF ${SET_CUDA} ${SET_CUQUANTUM} ${SET_NCCL} ${SET_SIM} ${SET_LEGION} $* ${SRC_LOCATION}"
echo $CMAKE_COMMAND
eval $CMAKE_COMMAND
}
