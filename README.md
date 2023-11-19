# Torque: Fast and Scalable Quantum Circuit Simulation on a Machine Learning System

## Circuit Partitioner

To run the experiment:
```shell
./build/benchmark_ilp_num_stages
```

To plot the results:
```shell
cd scripts
python ilp_plot.py
```

## How to generate the circuits used in evaluation (optional)

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
python qsvm_raw.py 31
python qsvm_raw.py 32
python qsvm_raw.py 33
python qsvm_raw.py 34
python qsvm_raw.py 42
```
Similar for `ising` and `ising.py`, `vqc` and `vqc_raw.py`.
4. Copy the result circuits from `(path/to/nwqbench)/NWQ_Bench/bv/qasm/` (and similar for others) to `(path/to/torque-artifact)/deps/quartz/circuit/NWQBench`.
