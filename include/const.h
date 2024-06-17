#ifndef _CONST_H_
#define _CONST_H_

#include "helper.h" // HANDLE_ERROR, HANDLE_CUDA_ERROR
#include "mpi.h"
#include "nccl.h"
#include <cuComplex.h>        // cuDoubleComplex
#include <cuda_runtime_api.h> // cudaMalloc, cudaMemcpy, etc.
#include <custatevec.h>       // custatevecApplyMatrix

constexpr bool kDebug = false;

// form HyQuas
#ifdef USE_FLOAT
typedef float qreal;
typedef long long qindex;
typedef cuFloatComplex qComplex;
#define make_qComplex make_cuFloatComplex
#define MPI_Complex MPI_C_COMPLEX
#define NCCL_FLOAT_TYPE ncclFloat
#else
typedef double qreal;
typedef long long qindex;
typedef cuDoubleComplex qComplex;
#define make_qComplex make_cuDoubleComplex
#define MPI_Complex MPI_C_DOUBLE_COMPLEX
#define NCCL_FLOAT_TYPE ncclDouble
#endif

#define SHARED_MEM_SIZE 10
#define MAX_SHM_GATE_BATCH 600
#define THREAD_DEP 7
#define MAX_KERNEL_SIZE 6
#define MAX_BATCHED_TASKS 80
#define MAX_DEVICES 4
#define MAX_QUBIT 40

enum class KernelGateType {
  CCX,
  CNOT,
  CY,
  CZ,
  CRX,
  CRY,
  CU1,
  CRZ,
  U1,
  U2,
  U3,
  H,
  X,
  Y,
  Z,
  S,
  SDG,
  T,
  TDG,
  RX,
  RY,
  RZ,
  TOTAL,
  ID,
  GII,
  GZZ,
  GOC,
  GCC
};

enum SimGateType {
  FUSED,
  SHM,
  SHUFFLE,
};


#endif // _CONST_H_
