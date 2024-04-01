# Atlas: Hierarchical Partitioning for Quantum Circuit Simulation on GPUs

Atlas is built on [Quartz](https://github.com/quantum-compiler/quartz).
To run the artifact, please create a Python environment for Quartz and copy the necessary circuits first.
Following parts will assume that these commands are executed (unless specified otherwise, the `quartz` conda environment is used):
```shell
# Create Python environment
cd deps/quartz
conda env create --name quartz --file env.yml
conda activate quartz

# Build Quartz
mkdir build
cd build
cmake ..

# Copy circuits
cd ../../..
yes | cp -rf circuit deps/quartz
cd circuit
bash copy.sh
cd ..
```

## Circuit Staging

To plot the existing results in Figure 7:
```shell
cd staging_bench
python ilp_plot.py
```

To run the experiment and reproduce the results (takes ~14 hours):
```shell
cd deps/quartz/build
make benchmark_ilp_num_stages
cd ..
./build/benchmark_ilp_num_stages
cp ilp_result.csv ../../staging_bench
```

## Circuit Kernelization

To plot the existing results in Figure 8 and Figures 12 to 36:
```shell
cd kernelization_bench
python dp_plot.py
```

To run the experiment and reproduce the results (takes ~17 hours):
```shell
cd deps/quartz/build
make benchmark_dp
./benchmark_dp
cd ..
cp dp_result.csv ../../kernelization_bench
```

## End-to-end experiments

We run the end-to-end experiments on Perlmutter.

To plot the existing results in Figure 9:
```shell
cd perlmutter/e2e/logs
python plot.py
```

Following are the instructions to run the experiment and reproduce the results.

### Atlas

1. Set related environment variables in `config/config.linux`
We support two modes for simulation in Atlas. First one is distributed GPU-based simulation (`USE_LEGION=OFF`). The other one is CPU-offload enabled simulation (`USE_LEGION=ON`), which support simulating more qubits on a single machine. Note that the second mode hasn't been tested for multi-node execution.

In addition, please also replace each occurrence of `$ATLAS_HOME` in `examples/legion-based/test_sim_legion.cc` and `examples/mpi-based/test_sim.cc` with the directory of atlas-artifact.

2. Install the HiGHS solver in Quartz:
```shell
cd deps/quartz/external/HiGHS
mkdir build
cd build
cmake ..
make -j 12
```

3. Create a Python 3.8 environment with PuLP and Qiskit (Qiskit is not necessary for the end-to-end experiments but necessary for the DRAM offloading experiments):
```shell
module load conda
conda create --name pulp python=3.8
conda activate pulp
pip install pulp qiskit
```

4. Build and install:
```shell
# in pulp conda environment
cd ../../../../..  # cd $ATLAS_HOME
mkdir build
cd build
bash ../config/config.linux
make -j 12
```

5. Replace `YOUR_ACCOUNT` with your account name in `perlmutter/e2e/srun-1-quartz.sh`, `perlmutter/e2e/srun-2-quartz.sh`, `perlmutter/e2e/srun-4-quartz.sh`, `perlmutter/e2e/srun-8-quartz.sh`, `perlmutter/e2e/srun-16-quartz.sh`.

6. Run the sbatch scripts:
```shell
# in pulp conda environment
cd ../perlmutter/e2e
export PATH=$PATH:$ATLAS_HOME/deps/quartz/external/HiGHS/build/bin  # please replace $ATLAS_HOME with the directory of atlas-artifact
sbatch srun-1-quartz.sh
sbatch srun-2-quartz.sh
sbatch srun-4-quartz.sh
sbatch srun-8-quartz.sh
sbatch srun-16-quartz.sh
```

### HyQuas

TODO

### cuQuantum
1. Replace `YOUR_ACCOUNT` with your account name in `perlmutter/e2e/cuQuantum.sh`.
2. Run:
```shell
# cd perlmutter/e2e
bash cuQuantum.sh 1 1 28  # takes less than 1 minute each
bash cuQuantum.sh 1 2 29
bash cuQuantum.sh 1 4 30
bash cuQuantum.sh 2 4 31
bash cuQuantum.sh 4 4 32
bash cuQuantum.sh 8 4 33
bash cuQuantum.sh 16 4 34
```

### Qiskit
1. Replace `YOUR_ACCOUNT` with your account name in `perlmutter/e2e/Qiskit.sh`.
2. Run:
```shell
# cd perlmutter/e2e
bash Qiskit.sh 1 1 28  # takes around 3 minutes
bash Qiskit.sh 1 2 29  # takes around 12 minutes
bash Qiskit.sh 1 4 30  # takes around 47 minutes, recommended to allocate a node first
```

## DRAM Offloading

We run the DRAM offloading experiments on Perlmutter.

To plot the existing results in Figure 6:
```shell
cd perlmutter/offload
python plot_offload.py
```

Following are the instructions to run the experiment and reproduce the results.

### Atlas

1. Set related environment variables in `config/config.linux` (setting `USE_LEGION=ON`), replace each occurrence of `$ATLAS_HOME` in `examples/legion-based/test_sim_legion.cc` and `examples/mpi-based/test_sim.cc` with the directory of atlas-artifact,
and use a Python 3.8 environment with PuLP and Qiskit.

2. Make sure the `setenv("PYTHONPATH", ...)` in `examples/legion-based/test_sim_legion.cc` is pointing to the correct location.

3. Build and run in interactive mode (please replace `YOUR_ACCOUNT` with your account name):
```shell
cd build
bash ../config/config.linux
make -j 12
cd ../perlmutter/offload
salloc --nodes 1 -q regular --time 00:30:00 --constraint gpu --gpus-per-node 4 --account=YOUR_ACCOUNT
conda activate pulp
time bash offload.sh && exit  # takes around 22 minutes
```

### QDAO

1. Download and build QDAO v0.1.0 (assuming `qdao/` and `atlas-artifact/` share the same parent directory):
```shell
module load conda
# at the parent directory of atlas-artifact now
git clone https://github.com/Zhaoyilunnn/qdao.git
cd qdao
git checkout tags/v0.1.0
conda create --name qdao python=3.9
conda activate qdao
pip install .
```
2. Comment out this [line](https://github.com/Zhaoyilunnn/qdao/blob/fd2dc544301fe0c67ef1b77b40ba926c03b055e6/qdao/qiskit/circuit.py#L58) in the QDAO directory you just downloaded,
and append these two lines after this [line](https://github.com/Zhaoyilunnn/qdao/blob/fd2dc544301fe0c67ef1b77b40ba926c03b055e6/qdao/qiskit/simulator.py#L26):
```python
        self._sim.set_options(blocking_enable=True)
        self._sim.set_options(blocking_qubits=28)
```
3. Copy the scripts to QDAO directory and run in interactive mode (please replace `YOUR_ACCOUNT` with your account name):
```shell
cp ../atlas-artifact/perlmutter/offload/run_qdao.py .
cp ../atlas-artifact/perlmutter/offload/run_qdao.sh .
salloc --nodes 1 -q regular --time 01:20:00 --constraint gpu --gpus-per-node 4 --account=YOUR_ACCOUNT
conda activate qdao
LD_LIBRARY_PATH="" time bash run_qdao.sh 0 && exit  # takes around 1 hour
```
The results are stored in `qdao/logs`.
4. Copy the results back:
```shell
cp logs/* ../atlas-artifact/perlmutter/offload/logs/qdao-qiskit
```


## How to generate the circuits used in evaluation (optional)

We include all circuits used in evaluation in this repository so there is no need to generate them again.
These instructions are only for your information.

MQT Bench:
1. Download the circuits from https://www.cda.cit.tum.de/mqtbench/. Choose scalable benchmarks and "Target-independent Level"->"Qiskit".
2. Replace the SWAP gates with logical qubit swaps because some previous work does not support SWAP gates, and this replacement does not affect the result:
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
2. Manually remove the line "pip==21.1.2" from requirements.txt (optional) and then follow the instructions of NWQBench to install it (i.e., `pip install -r requirements.txt`).
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
python qsvm_raw.py 42
```
Similar for `ising` and `ising.py`, `vqc` and `vqc_raw.py`.
4. The result circuits are in the folder `(path/to/nwqbench)/NWQ_Bench/qsvm/qasm/` (and similar for others).
