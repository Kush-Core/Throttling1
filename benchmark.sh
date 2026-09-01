#!/bin/bash

run_benchmark() {
    name="$1"
    flags="$2"

    clang++ $flags main.cpp -o main

    output=$(./main)
    stats=$(echo "$output" | grep "^STATS:")

    printf "%-20s %s\n" "$name" "$stats"
}

echo "config               stats"
run_benchmark "-O0" "-O0"
run_benchmark "-O2" "-O2"
run_benchmark "-O3" "-O3"
run_benchmark "-O3 -march=native" "-O3 -march=native"

# main_O3.s and main_native.s are byte-identical (diff confirms) -- M1 IS
# the default arm64 target, so -march=native adds nothing here. That is
# why the -O3 and -O3-native rows above never separate; it is not a
# measurement artifact.
echo
echo "note: -O3 and -O3 -march=native compile to identical code on this machine (M1 is the default arm64 target)"
