#!/bin/bash
set -u

# Experiment C: the -O3 kernel split across 1..8 std::threads, measured with
# the same protocol as contend.sh (33 in-process trials, 3 warmup, STATS line,
# cooldown after load, trailing drift control). No spinners: the threads
# themselves are the load.

TRIALS=33
WARMUP=3
THREAD_COUNTS=(1 2 3 4 5 6 7 8)
FLAGS="-O3"

RESULTS_FILE="threads_results.txt"
: > "$RESULTS_FILE"

log() {
    echo "$1" | tee -a "$RESULTS_FILE"
}

# Runs one thread-count cell and logs one row.
run_threads() {
    local label="$1"
    local threads="$2"

    output=$(./threaded "$TRIALS" "$WARMUP" "$threads")
    stats=$(echo "$output" | grep "^STATS:")
    spread=$(echo "$output" | grep "^THREADS:" | sed 's/^THREADS: //')

    log "$(printf '%-22s threads=%-2s %s  %s' "$label" "$threads" "$stats" "$spread")"
}

clang++ $FLAGS -std=c++17 threaded.cpp -o threaded

log ""
log "=== $FLAGS, $(sysctl -n hw.perflevel0.physicalcpu)P + $(sysctl -n hw.perflevel1.physicalcpu)E cores ==="

for threads in "${THREAD_COUNTS[@]}"; do
    run_threads "$FLAGS" "$threads"
    if [ "$threads" -ne 1 ]; then
        sleep 5   # cooldown after multi-core load, before the next cell
    fi
done

# Drift control: re-measure threads=1 at the end. If this disagrees materially
# with the leading threads=1 row, the sweep is thermally confounded -- report
# it as such rather than interpreting it.
run_threads "$FLAGS (drift control)" 1

log ""
log "Thread sweep complete. Results in $RESULTS_FILE"
