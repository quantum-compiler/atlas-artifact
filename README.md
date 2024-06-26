# Atlas: Hierarchical Partitioning for Quantum Circuit Simulation on GPUs

We use the Perlmutter supercomputer to evaluate the performance of Atlas,
and use a single-core CPU (can be a laptop) to evaluate the algorithms Stage and Kernelize.

Atlas is built on [Quartz](https://github.com/quantum-compiler/quartz).
To run the artifact, please create a Python environment for Quartz and copy the necessary circuits first.
This needs to be done on both the single-core CPU and Perlmutter.

### Prerequisites

- Conda 23.3 or later (`module load conda` on Perlmutter)
- CMake 3.18 or later

The following parts will assume that these commands are executed (please replace `YOUR_ACCOUNT` with your account name):

```shell
# clone this repo
git clone git@github.com:quantum-compiler/atlas-artifact.git --recursive

# Create Python environment
cd atlas-artifact/deps/quartz
conda env create --name quartz --file env.yml
conda activate quartz
pip install matplotlib

# Build Quartz
mkdir build
cd build
cmake ..

# Copy circuits
cd ../../../circuit
bash copy.sh

# The above needs to be done on both the single-core CPU and Perlmutter.
# The following only needs to be done on Perlmutter.

# Replace the account name (not necessary if you are only viewing the results and not reproducing any experiments)
cd ../perlmutter/e2e
python replace_account_name.py
YOUR_ACCOUNT
# (input your account name above)
cd ../..
```

## Circuit Staging

To plot the existing results in Figure 8:

```shell
# in quartz conda environment
cd staging_bench
python ilp_plot.py
cd ..
```

To run the experiment and reproduce the results (takes ~14 hours on a single-core CPU):

```shell
# in quartz conda environment
cd deps/quartz/build
make benchmark_ilp_num_stages
cd ..
./build/benchmark_ilp_num_stages
cp ilp_result.csv ../../staging_bench
cd ../..
```

## Circuit Kernelization

To plot the existing results in Figure 9:

```shell
# in quartz conda environment
cd kernelization_bench
python dp_plot.py
cd ..
```

To run the experiment and reproduce the results (takes ~17 hours on a single-core CPU):

```shell
# in quartz conda environment
cd deps/quartz/build
make benchmark_dp
./benchmark_dp
cd ..
cp dp_result.csv ../../kernelization_bench
cd ../..
```

## End-to-end experiments

We run the end-to-end experiments on Perlmutter.

To plot the existing results in Figures 5 and 10:

```shell
# in quartz conda environment
cd perlmutter/e2e/logs
python plot.py
cd ../../..
```

Following are the instructions to run the experiment and reproduce the results.

### Atlas

1. Set related environment variables in `config/config.linux` (please download cuQuantum if needed).
   We support two modes for simulation in Atlas. First one is distributed GPU-based simulation (`USE_LEGION=OFF`). The
   other one is CPU-offload enabled simulation (`USE_LEGION=ON`), which support simulating more qubits on a single
   machine. Note that the second mode has not been tested for multi-node execution.

In this section (end-to-end experiments), please make sure that the distributed GPU-based simulation is used (`USE_LEGION=OFF`).

In addition, please run `export ATLAS_HOME=${The_directory_running_git_clone}/atlas-artifact`.

2. Install the HiGHS solver in Quartz:

```shell
cd deps/quartz/external/HiGHS
mkdir build
cd build
cmake ..
make -j 12
cd ../../../../..
```

3. Create a Python 3.8 environment with PuLP (with HiGHS solver), pybind11, and Qiskit (Qiskit is not necessary for the end-to-end
   experiments but
   necessary for the DRAM offloading experiments):

```shell
conda create --name pulp python=3.8
conda activate pulp
pip install git+https://github.com/coin-or/pulp@2.7.0
pip install qiskit pybind11
```

4. Build and install:

```shell
# in pulp conda environment
mkdir build
cd build
bash ../config/config.linux
make -j 12
cd ..
```

5. Run the sbatch scripts:

```shell
# in pulp conda environment
cd perlmutter/e2e
export PATH=$PATH:$ATLAS_HOME/deps/quartz/external/HiGHS/build/bin  # please replace $ATLAS_HOME with the directory of atlas-artifact if this variable is not set
sbatch srun-1-quartz.sh  # takes around 2 minutes (in background)
sbatch srun-2-quartz.sh  # takes around 1 minute
sbatch srun-4-quartz.sh  # takes around 2 minutes
sbatch srun-8-quartz.sh  # takes around 2 minutes
sbatch srun-16-quartz.sh  # takes around 2 minutes
# Following are additional experiments
# sbatch srun-32-quartz.sh  # takes around 2 minutes
# sbatch srun-64-quartz.sh  # takes around 3 minutes
```

#### Troubleshooting

- Please do not build Atlas with different options (`USE_LEGION=OFF`/`USE_LEGION=ON`)
  when the jobs are submitted but still pending. If you submit the jobs with `USE_LEGION=OFF`
  and then build Atlas with `USE_LEGION=ON` (or vice versa), overwriting the previous executable, for example,
  the jobs with `USE_LEGION=OFF` may not run properly.

### HyQuas

1. Download our modified HyQuas from the `perlmutter` branch of the [Repo](https://github.com/caoshiyi/HyQuas):

```shell
cd $ATLAS_HOME
cd ..
# It is recommended to let HyQuas and atlas-artifact share the same parent directory.
git clone -b perlmutter https://github.com/caoshiyi/HyQuas --recursive
```

2. Config Env

```shell
module load cudatoolkit/11.7
module load nccl/2.15.5
module load gcc/11.2.0
module load cray-mpich/8.1.25
export HYQUAS_ROOT=${The_directory_running_git_clone}/HyQuas
cd ${HYQUAS_ROOT}
bash ./update_cutt_makefile.sh
```

3. Compile the `cutt` lib:

```shell
cd ${HYQUAS_ROOT}/third-party/cutt
make -j
```

4. To reproduce the results we displayed in the paper, build HyQuas using:

```shell
cd ${HYQUAS_ROOT}/scripts
source ../scripts/init.sh -DBACKEND=mix -DSHOW_SUMMARY=on -DSHOW_SCHEDULE=off -DMICRO_BENCH=on -DUSE_DOUBLE=on -DDISABLE_ASSERT=off -DENABLE_OVERLAP=on -DMEASURE_STAGE=off -DEVALUATOR_PREPROCESS=on -DUSE_MPI=on -DMAT=7
```

5. Use the scripts `*-hyquas.sh` under `atlas-artifact/perlmutter/e2e` to run the experiments on different number of
   GPUs.

```shell
# assume HyQuas and atlas-artifact share the same parent directory
cd ../../atlas-artifact/perlmutter/e2e
sbatch srun-1-hyquas.sh  # takes around 3 minutes (in background)
sbatch srun-2-hyquas.sh  # takes around 2 minutes
sbatch srun-4-hyquas.sh  # takes around 2 minutes
sbatch srun-8-hyquas.sh  # takes around 3 minutes
sbatch srun-16-hyquas.sh  # takes around 3 minutes
# Following are additional experiments
# sbatch srun-32-hyquas.sh  # takes around 4 minutes
# sbatch srun-64-hyquas.sh  # takes around 4 minutes
```

### cuQuantum

1. Make sure that the account name in `perlmutter/e2e/cuQuantum.sh` is replaced when running the script at the beginning
   of this document.
2. Run:

```shell
# conda environment is not necessary
# cd perlmutter/e2e
bash cuQuantum.sh 1 1 28  # takes around 1 minute (in foreground)
bash cuQuantum.sh 1 2 29  # takes around 1 minute
bash cuQuantum.sh 1 4 30  # takes around 2 minutes
bash cuQuantum.sh 2 4 31  # takes around 2 minutes
bash cuQuantum.sh 4 4 32  # takes around 2 minutes
bash cuQuantum.sh 8 4 33  # takes around 2 minutes
bash cuQuantum.sh 16 4 34 # takes around 2 minutes
# Following are additional experiments
# bash cuQuantum.sh 32 4 35 # takes around 2 minutes
# bash cuQuantum.sh 64 4 36 # takes around 4 minutes
```

### Qiskit

1. Make sure that the account name in `perlmutter/e2e/Qiskit.sh` is replaced when running the script at the beginning of
   this document.
2. Run:

```shell
# in quartz conda environment
# cd perlmutter/e2e
bash Qiskit.sh 1 1 28  # takes around 3 minutes (in foreground)
bash Qiskit.sh 1 2 29  # takes around 12 minutes
bash Qiskit.sh 1 4 30  # takes around 47 minutes, recommended to allocate a node first
```

## DRAM Offloading

We run the DRAM offloading experiments on Perlmutter.

To plot the existing results in Figures 6 and 7:

```shell
# in quartz conda environment
cd $ATLAS_HOME
cd perlmutter/offload
python plot_offload.py
cd ../..
```

Following are the instructions to run the experiment and reproduce the results.

### Atlas

1. Set related environment variables in `config/config.linux` (setting `USE_LEGION=ON`), and use a Python 3.8
   environment with PuLP and Qiskit.
2. Make sure the `setenv("PYTHONPATH", ...)` in `examples/legion-based/test_sim_legion.cc` is pointing to the correct
   location.
3. Build and run in interactive mode (please replace `YOUR_ACCOUNT` with your account name):

```shell
cd build
bash ../config/config.linux
make -j 12
cd ../perlmutter/offload
salloc --nodes 1 -q regular --time 00:30:00 --constraint gpu --gpus-per-node 4 --account=YOUR_ACCOUNT
conda activate pulp && time bash offload.sh && exit  # takes around 22 minutes
cd ../..
```

### QDAO

1. Download and build QDAO v0.1.0 (assuming `qdao/` and `atlas-artifact/` share the same parent directory):

```shell
cd ..
# at the parent directory of atlas-artifact now
git clone https://github.com/Zhaoyilunnn/qdao.git
cd qdao
git checkout tags/v0.1.0
conda create --name qdao python=3.9
conda activate qdao
pip install .
```

2. Comment out
   this [line](https://github.com/Zhaoyilunnn/qdao/blob/fd2dc544301fe0c67ef1b77b40ba926c03b055e6/qdao/qiskit/circuit.py#L58)
   in the QDAO directory you just downloaded,
   and append these two lines after
   this [line](https://github.com/Zhaoyilunnn/qdao/blob/fd2dc544301fe0c67ef1b77b40ba926c03b055e6/qdao/qiskit/simulator.py#L26):

```python
        self._sim.set_options(blocking_enable=True)
        self._sim.set_options(blocking_qubits=28)
```

3. Copy the scripts to QDAO directory and run in interactive mode (please replace `YOUR_ACCOUNT` with your account
   name):

```shell
cp ../atlas-artifact/perlmutter/offload/run_qdao.py .
cp ../atlas-artifact/perlmutter/offload/run_qdao.sh .
salloc --nodes 1 -q regular --time 01:20:00 --constraint gpu --gpus-per-node 4 --account=YOUR_ACCOUNT
conda activate qdao
LD_LIBRARY_PATH="" time bash run_qdao.sh 0 && exit  # takes around 60 minutes
```

The results are stored in `qdao/logs`.

4. Copy the results back:

```shell
cp logs/* ../atlas-artifact/perlmutter/offload/logs/qdao-qiskit
```

## How to generate and preprocess the circuits used in evaluation (optional)

We include all circuits used in evaluation in this repository so there is no need to generate them again.
These instructions are only for your information.

### Generating

MQT Bench:

1. Download the circuits from https://www.cda.cit.tum.de/mqtbench/. Choose scalable benchmarks and "Target-independent
   Level"->"Qiskit".
2. Copy the circuits to `$ATLAS_HOME/circuit/MQTBench_${number_of_qubits}q` and replace the SWAP gates with logical
   qubit swaps because some previous work does not support SWAP gates, and this replacement does not affect the result:

(You may need to edit `$ATLAS_HOME/deps/quartz/src/test/test_remove_swap.cpp` as needed if you use other circuits that
are not in this repository.)

```shell
cd deps/quartz/build
make test_remove_swap
./test_remove_swap
```

NWQBench:

1. Clone the repository:

```shell
git clone git@github.com:pnnl/nwqbench.git
cd nwqbench
git checkout 3c322b789f5a26636d368253817c8d3f4676ae52  # optional
```

2. Manually remove the line "pip==21.1.2" from requirements.txt (optional) and then follow the instructions of NWQBench
   to install it (i.e., `pip install -r requirements.txt`).
3. Run the following commands to generate the `qsvm` circuits:

```shell
cd NWQ_Bench
cd qsvm
python qsvm_raw.py 28
python qsvm_raw.py 29
# The 30-qubit circuit already exists
python qsvm_raw.py 31
python qsvm_raw.py 32
python qsvm_raw.py 33
python qsvm_raw.py 34
python qsvm_raw.py 35
python qsvm_raw.py 36
python qsvm_raw.py 37
python qsvm_raw.py 38
python qsvm_raw.py 42
```

Similar for `ising` and `ising.py`, `vqc` and `vqc_raw.py`.

4. The result circuits are in the folder `(path/to/nwqbench)/NWQ_Bench/qsvm/qasm/` (and similar for others).

5. Copy the circuits to `$ATLAS_HOME/circuit/NWQBench` and replace the SWAP gates with logical qubit swaps because some
   previous work does not support SWAP gates, and this replacement does not affect the result:

(You may need to edit `$ATLAS_HOME/deps/quartz/src/test/test_remove_swap.cpp` as needed if you use other circuits that
are not in this repository.)

```shell
cd deps/quartz/build
make test_remove_swap
./test_remove_swap
```

### Preprocessing

This is done on a single thread of an Intel(R) Xeon(R) W-1350 @ 3.30GHz CPU.

1. Follow the instruction at the beginning of this document to build Quartz and copy the circuits.

2. Create a Python 3.8 environment with PuLP (with HiGHS solver) and Qiskit:

```shell
conda create --name pulp python=3.8
conda activate pulp
pip install -U git+https://github.com/coin-or/pulp@2.7.0
pip install qiskit==0.39.2
```

3. Run preprocessing for 28 local qubits:

```shell
export ATLAS_HOME=${The_directory_running_git_clone}/atlas-artifact  # if not already set
cd $ATLAS_HOME
cd perlmutter/e2e
bash preprocess.sh  # takes around 17 minutes
```

4. For different numbers of local qubits, please change `local_values=(28)` in `perlmutter/e2e/preprocess.sh`
   accordingly.
   For best result, please also adjust the numbers in the `kernel_cost` object
   in `deps/quartz/src/test/test_simulation.cpp`
   according to the benchmark results of 1-to-7-qubit fusion kernels and shared-memory kernels.
