cd ../../deps/quartz
cd build
make test_simulation
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate")
n_values=(28 29 30 31 32 33 34 35 36 37 38)
local_values=(28 29 30)
for l in "${local_values[@]}"; do
    # Iterate over the strings
    for str in "${strings[@]}"; do
        # Iterate over the n values
        for n in "${n_values[@]}"; do
            if [ ${n} -lt ${l} ]; then
                continue
            fi
            echo "Preprocess ${str} ${n} ${l}..."
            ./test_simulation "MQTBench_${n}q/${str}_indep_qiskit_${n}_no_swap.qasm" ${n} ${l} "${ATLAS_HOME}/schedules/${str}${n}_${l}"
        done
    done
done
