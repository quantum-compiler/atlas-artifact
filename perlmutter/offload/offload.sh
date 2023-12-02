#!/bin/bash

for gpu in {1..4}; do
    ./test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 200000 --local-qubits 26 --all-qubits 32 --circuit qft
    ./test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 100000 --local-qubits 26 --all-qubits 31 --circuit qft
    ./test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 70000 --local-qubits 26 --all-qubits 30 --circuit qft
    ./test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 70000 --local-qubits 26 --all-qubits 29 --circuit qft
    ./test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 70000 --local-qubits 26 --all-qubits 28 --circuit qft
done