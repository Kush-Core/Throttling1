#!/bin/bash
set -u

# Orphaned spinners silently poison every subsequent measurement and quietly
# eat the user's battery -- this is non-negotiable.
trap 'kill $(jobs -p) 2>/dev/null' EXIT INT TERM

TRIALS=33
WARMUP=3
LEVELS=(0 1 4 8)
FLAG_SETS=("-O0" "-O2" "-O3" "-O3 -march=native")

RESULTS_FILE="contention_results.txt"
: > "$RESULTS_FILE"

log() {
    echo "$1" | tee -a "$RESULTS_FILE"
}

start_spinners() {
    local n="$1"
    for ((i = 0; i < n; i++)); do
        bash -c 'while :; do :; done' &
    done
}

stop_spinners() {
    local pids
    pids=$(jobs -p)
    if [ -n "$pids" ]; then
        kill $pids 2>/dev/null
        wait $pids 2>/dev/null
    fi
}

# Runs one (flag set, contention level) cell and logs one row.
run_level() {
    local label="$1"
    local level="$2"

    start_spinners "$level"
    sleep 0.2   # let the scheduler actually place the spinners

    output=$(./main "$TRIALS" "$WARMUP")
    stats=$(echo "$output" | grep "^STATS:")

    stop_spinners

    log "$(printf '%-22s level=%-2s %s' "$label" "$level" "$stats")"
}

for flags in "${FLAG_SETS[@]}"; do
    log ""
    log "=== $flags ==="
    clang++ $flags main.cpp -o main

    for level in "${LEVELS[@]}"; do
        run_level "$flags" "$level"
        if [ "$level" -ne 0 ]; then
            sleep 5   # cooldown after sustained load, before the next cell
        fi
    done

    # Drift control: re-measure level 0 at the end of this flag set. If this
    # disagrees materially with the leading level-0 row above, the run is
    # thermally confounded -- report it as such rather than interpreting it.
    run_level "$flags (drift control)" 0
done

log ""
log "Contention sweep complete. Results in $RESULTS_FILE"
