# Torque: Fast and Scalable Quantum Circuit Simulation on a Machine Learning System

Torque is built on [Quartz](https://github.com/quantum-compiler/quartz).
To run the artifact, please install Quartz and copy the necessary circuits first.
Following parts will assume that these commands are executed:
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
```

## Circuit Partitioner

To plot the existing results:
```shell
cd partitioner_bench
python ilp_plot.py
```

To run the experiment and update the results (takes ~14 hours):
```shell
cd deps/quartz/build
make benchmark_ilp_num_stages
cd ..
./build/benchmark_ilp_num_stages
cp ilp_result.csv ../../partitioner_bench
```

## Circuit Kernelizer

To plot the existing results:
```shell
cd kernelizer_bench
python dp_plot.py
```

To run the experiment and update the results (takes ~17 hours):
```shell
cd deps/quartz/build
make benchmark_dp
./benchmark_dp
cd ..
cp dp_result.csv ../../kernelizer_bench
```

## How to generate the circuits used in evaluation (optional)

We include all circuits used in evaluation in this repository so there is no need to generate them again.
These instructions are only for your information.

MQT Bench:
1. Download the circuits from https://www.cda.cit.tum.de/mqtbench/. Choose scalable benchmarks and "Target-independent Level"->"Qiskit".
2. Change the SWAP gates to logical qubit swaps:
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
