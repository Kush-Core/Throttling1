# Throttling1 — Optimization-Flag & Scheduler-Contention Microbenchmark

## 1. Goal of this project

This project answers one narrow, concrete question with real numbers instead of folklore:

> **How much does a compiler optimization flag actually change the runtime of a simple loop, and how much of an observed "speedup" is actually just measurement noise from the OS scheduler?**

The workload is deliberately trivial: sum 100,000,000 `float`s into a `double`. That simplicity is
the point — with a one-line loop as the fixed variable, every change in measured time has to come
from either (a) how the compiler translated the loop, or (b) how the OS scheduled the process while
it ran. There is no algorithmic complexity left to hide behind.

## 2. What it showcases

The repo is really three experiments layered on top of one shared harness:

**Experiment A — optimization levels ([benchmark.sh](benchmark.sh)).**
Compiles the identical `main.cpp` under `-O0`, `-O2`, `-O3`, and `-O3 -march=native`, and shows the
runtime gap this produces (roughly **345 ms at `-O0` vs. ~94 ms at `-O2`/`-O3`** on this machine —
a ~3.6x difference from flags alone, no source code change). It also demonstrates a common
misconception directly: on Apple Silicon, `-march=native` compiles to **byte-identical assembly**
as plain `-O3` (verified with `diff` on the saved `.s` files), because arm64/M1 is already clang's
default target here. The flag isn't wrong to try — it's just a no-op on this hardware, and the repo
proves that rather than asserting it: [main_O3.s](main_O3.s) and [main_native.s](main_native.s) are
committed, so `diff main_O3.s main_native.s` reproduces the result without needing an M1 to compile
on.

**Experiment B — scheduler contention ([contend.sh](contend.sh)).**
Takes the same four builds and re-runs each one at four levels of artificial CPU contention (0, 1,
4, 8 competing busy-loop processes), 33 timed trials per cell. This is where the project earns its
keep conceptually: it shows **mean and median diverging** as contention increases, and pins down
*why* — this Mac's M1 has an asymmetric core layout (4 Performance cores @ ~3.2 GHz, 4 Efficiency
cores @ ~2.06 GHz), so a trial that gets displaced onto an E-core doesn't get a little slower, it
jumps by roughly **1.55x** in one step. The result isn't a smooth slowdown curve, it's a bimodal
distribution — a fast cluster and a slow cluster — and that shape is only visible if you report
more than a single mean. The spread makes it concrete: for `-O3`, IQR goes from **0.37 ms**
uncontended to **8.03 ms** at level 8, while the *minimum* only moves 94 ms → 118 ms. The fast
cluster never disappears; it just stops being the majority, which is exactly the condition that
breaks a median.

**Experiment C — thread-level parallelism ([threads.sh](threads.sh), [threaded.cpp](threaded.cpp)).**
Splits the same 100M-float array into T equal contiguous chunks and sums each chunk on its own
`std::thread`, for T = 1 to 8 at `-O3`, with the same protocol as Experiment B (33 in-process
trials, 3 warmup, memory barriers, per-trial validation, trailing drift control). Each thread runs
the *unchanged* kernel: [threaded_O3.s](threaded_O3.s) has the same sixteen serial `fadd`s into
`d0` as `main_O3.s`, plus two short remainder loops because the chunk length is now a runtime value.
So a thread does not shorten the dependency chain; it runs a separate chain on another core.
Partials land in `alignas(128)` slots (M1's cache line is 128 bytes per `sysctl hw.cachelinesize`,
not the 64 most code assumes) and are combined in thread order. Each thread also times its own
chunk, so every row reports **spread** (slowest thread / fastest thread) and **overhead** (trial time
minus the slowest thread: create + join + combine). From
[threads_results.txt](threads_results.txt):

| threads | min (ms) | median (ms) | IQR (ms) | speedup (min) | spread | overhead (ms) |
|---|---|---|---|---|---|---|
| 1 | 94.44 | 95.12 | 0.65 | 1.00x | 1.00 | 0.072 |
| 2 | 48.82 | 49.02 | 0.52 | 1.93x | 1.00 | 0.066 |
| 3 | 33.87 | 33.97 | 0.06 | 2.79x | 1.01 | 0.067 |
| 4 | 25.55 | 25.97 | 0.48 | 3.70x | 1.02 | 0.074 |
| 5 | 24.05 | 26.75 | 3.29 | 3.93x | 1.08 | 0.074 |
| 6 | 20.10 | 21.40 | 1.50 | 4.70x | 1.23 | 0.083 |
| 7 | 18.35 | 19.67 | 1.43 | 5.15x | 1.30 | 0.078 |
| 8 | 16.84 | 18.63 | 1.28 | 5.61x | 1.39 | 0.081 |

- **Harness parity.** One thread gives 94.44 ms against `main`'s 94.11 ms at `-O3` (+0.35%), and the
  trailing one-thread drift control reads 94.41 ms, so there is no thermal drift across the sweep.
  Creating and joining the threads costs about 0.07 ms per trial, under 0.5% even at 8 threads.
- **Up to 4 threads, close to linear.** 1.93x, 2.79x, 3.70x, with spread at most 1.02: four
  P-cores, four chains, all finishing together. The gap from a perfect 4.00x (25.55 ms against
  23.6 ms) is not explained by this harness. Candidates are the P-cluster clock dropping as more of
  its cores are active, or shared L2 and memory traffic; separating them needs `powermetrics`
  (root), which this repo does not use. Bandwidth is not the limiter in the obvious sense: 400 MB in
  16.84 ms is ~24 GB/s, about a third of M1's ~68 GB/s theoretical peak.
- **Past 4 threads, the slowest thread sets the time.** With equal chunks the sum waits for the last
  thread to finish. As threads land on E-cores (~2.06 GHz against ~3.2 GHz), spread climbs 1.08 →
  1.23 → 1.30 → 1.39 toward that 1.55x clock ratio, and the curve bends: 8 cores give 5.61x, not 8x.
  *If* an E-core runs the same chain at ~3 cycles per `fadd` (an assumption; there are no per-core
  counters here), equal chunks predict 12.5M x 3 / 2.06 GHz ≈ 18.2 ms at 8 threads, against a
  measured median of 18.63 ms. Spread staying under 1.55 suggests the scheduler moves some threads
  onto P-cores as those free up, which this harness cannot observe directly.
- **Five threads is the worst setting to ship.** Its median (26.75 ms) is slower than four
  threads' (25.97 ms) and its IQR is ~7x larger (3.29 against 0.48 ms): whether the fifth chunk
  shares a P-core or runs on an E-core changes from trial to trial. This is Experiment B's lesson
  again. The minimum alone would call five threads a win (24.05 < 25.55 ms); the median and IQR
  say it is not.

Not tested here: dynamic work distribution (many small chunks pulled from a shared atomic counter),
the standard fix for a straggler, which lets fast cores take more of the work instead of waiting.
Conditions for this run (2026-10-22): on battery, low-power mode off, with ~22% background CPU from
other apps, which matters most for the 7- and 8-thread cells.

**What the 3.6x actually buys — read the assembly, not the flag.**
The obvious story is that `-O3` vectorized the summation. It did not. In [main_O3.s](main_O3.s),
clang unrolls the loop 16x and vectorizes the *loads* and the `float`→`double` conversions
(`ldp q1, q2` / `fcvtl`), then emits sixteen **serial** `fadd d0, d0, dN` instructions into a
single accumulator. IEEE-754 forbids reassociating a floating-point sum, so without `-ffast-math`
the compiler is not permitted to split that accumulator and add in parallel — the arithmetic stays
one dependency chain at every optimization level.

That makes the kernel **latency-bound, not bandwidth-bound**, and the runtime is predictable from
first principles rather than merely measured: 100M dependent adds x ~3-cycle `fadd` latency /
3.2 GHz = **93.75 ms** predicted, against **94.11 ms** measured — agreement within 0.4%. DRAM is
nowhere near the limiter (400 MB in 94 ms is ~4.3 GB/s, a small fraction of what M1 will do), which
is the reason the warmup comment in `main.cpp` is careful to say the warmup exists for DVFS ramp
and *not* for cache warmth.

So the 3.6x from `-O0` to `-O3` is not faster math — it is the removal of `-O0`'s per-iteration
register spills and reloads around an arithmetic chain whose cost never changed. The practical
consequence is that no higher `-O` number can reach this: the only way to actually speed the loop
up on one core is to break the dependency chain, via multiple accumulators in the source or
`-ffast-math` to authorize the compiler to do it. Experiment C takes the other route: several
independent chains, one per core. Reading the generated assembly is what separates those two
explanations; the wall-clock number alone cannot. The loop body is committed, so this is checkable
directly:

```bash
# the sixteen serial fadds, straight out of the tracked assembly
awk '/_ZL6kernelPKfm:/,/ret/' main_O3.s | grep -c 'fadd'

# and the -march=native no-op, in one line
diff main_O3.s main_native.s && echo "identical"
```

## 3. Why this matters (the actual lesson)

Most "compiler flags make code faster" benchmarks are unreliable in a specific, fixable way: they
run a binary once (or launch-relaunch a handful of times), report one number, and treat it as
ground truth. Two things routinely poison that number without anyone noticing:

- **A single mean is not robust to outliers.** One trial that happened to land during a scheduler
  hiccup can drag a 5-sample mean by 10%+, and there's no way to tell, from one run, whether that's
  real cost or noise ([final_results.txt](final_results.txt) shows exactly this: a 107 ms outlier
  among four ~95 ms samples for `-O3 -march=native`).
- **Cross-process relaunches don't isolate the thing you're trying to measure.** Each relaunch pays
  a fresh disk read and allocation, in a machine state (page cache, DVFS clock ramp, allocator) that
  differs run to run — so five relaunches aren't five draws from the same distribution.

This project fixes both, and then goes one step further: instead of just fixing the measurement, it
uses the fixed measurement to **deliberately manufacture** the noise (via `contend.sh`'s spinners)
and show, quantitatively, where a median stops being trustworthy too. The falsifiable claim it tests
is: *the median is robust to a minority of bad trials, but not to a majority-shifted distribution* —
and the 4-level sweep is designed so that boundary (level 8, where most trials get displaced) is
actually crossed and visible in the data, not just asserted.

That is the transferable, important concept here, independent of C++ or M1 specifics: **before you
trust a benchmark number, ask what your repetition and statistics protocol is actually protecting
you from.** A single run protects you from nothing. A mean-of-a-few-runs protects you from nothing
in the presence of a scheduler. A large in-process trial count with min/mean/median/IQR reported
side by side lets you see the difference between "the optimization worked" and "the machine was
busy."

## 4. Architecture

```
verify.py  ──generates──►  data.bin  (400 MB, 100M x float32, all 1.0)
                                │
                                │ read once per process launch
                                ▼
                          main.cpp  (single source file)
                            │
                            ├─ kernel()        naive sequential sum loop, noinline
                            ├─ warmup loop      3 untimed passes (DVFS ramp)
                            ├─ trial loop       30 (default) timed passes, memory-barrier
                            │                   guarded so the optimizer can't hoist/CSE
                            │                   the kernel call across trials
                            ├─ per-trial check  validates sum == 100,000,000.0 ± 0.001
                            └─ stats            min / mean / median / IQR (type-7 quantile)
                                │
                    ┌───────────┴────────────┐
                    ▼                         ▼
             benchmark.sh               contend.sh
        (4 flag sets, 1 run each,   (4 flag sets x 4 contention
         parses STATS: line)         levels x 33 trials, spinner
                                      processes occupy cores,
                                      writes contention_results.txt)
```

The critical design decision is that **repetition lives inside `main.cpp`, not in the shell
scripts.** Early versions of this project relaunched the binary 3–5 times per config and took the
median externally
([final_results.txt](final_results.txt), [measure.txt](measure.txt) are relics of that). That's
wrong for this workload specifically: setup cost (reading 400 MB off disk, allocating a 400M-float
vector) is comparable to or larger than the ~94 ms kernel itself, so relaunching pays that cost N
times just to get N samples, and each relaunch sees a different machine state (cold vs. warm page
cache). Moving the loop in-process means setup is paid once, warmup is real warmup (state persists
across iterations, unlike across `fork`/`exec`), and all samples come from one comparable
environment. The shell scripts' only job is to pick compiler flags, drive contention, and parse the
one machine-readable output line — all statistics are computed once, in one place, in `main.cpp`.

The second critical detail is the **compiler-barrier trick**
(`doNotOptimizeAway()` / `clobberMemory()`, both raw `asm volatile` fences). Without them, clang
proves that `kernel()` is a pure function of memory that the trial loop never writes to, and hoists
the entire summation out of the loop — trial 1 does the real work, trials 2–30 report ~0 ms, and the
benchmark silently lies. `noinline` alone does not prevent this (it blocks inlining, not
common-subexpression-elimination); only explicit memory barriers around each trial do.

## 5. Proper workflow

Run these in order from the repo root:

```bash
# 1. Generate the input data (~400 MB; only needs to be done once, or after
#    changing N in verify.py). Requires numpy.
python3 verify.py

# 2. Sanity-check a single build first.
clang++ -O3 main.cpp -o main
./main

# 3. Run the 4-flag-set comparison (recompiles main.cpp once per flag set,
#    runs each build once at the default 30 trials, prints one summary
#    row per config).
./benchmark.sh

# 4. Run the full contention sweep (4 flag sets x 4 contention levels x 33
#    trials; takes a few minutes of sustained CPU load; writes
#    contention_results.txt). Safe to Ctrl-C — spinners are always cleaned
#    up on exit.
./contend.sh

# 5. If contend.sh was ever interrupted uncleanly, confirm no spinner
#    processes survived:
pgrep -f 'while :'   # expect no output

# 6. Run the thread sweep (Experiment C: -O3 at 1-8 threads x 33 trials;
#    about a minute; writes threads_results.txt).
./threads.sh
```

If you change the loop body, kernel logic, or want to inspect codegen, regenerate the saved
assembly rather than hand-editing it:

```bash
clang++ -S -O0 main.cpp -o main_O0.s
clang++ -S -O3 main.cpp -o main_O3.s
clang++ -S -O3 -march=native main.cpp -o main_native.s
clang++ -S -O3 -std=c++17 threaded.cpp -o threaded_O3.s
```

**Constraint to keep in mind:** `data.bin` is assumed by `main.cpp` to contain exactly `N` floats
each equal to `1.0`, so the expected sum (`100000000.0`) and tolerance (`0.001`) are hard-coded. If
you ever change `N` or the generation logic in `verify.py`, update the expected sum/tolerance in
`main.cpp` and `threaded.cpp` to match — the two files must stay in sync manually, there's no shared constant.

## 6. File-by-file reference

`.gitignore` excludes only `data.bin` and the compiled `main` and `threaded` binaries — a fresh clone will not have
them, and section 5 regenerates both. The `.s` files *are* tracked: they are the evidence for the
codegen claims above, not just build output.

| File | Purpose |
|---|---|
| [main.cpp](main.cpp) | The entire program under test. Loads `data.bin`, runs `kernel()` (the naive `sum += data[i]` loop) through 3 untimed warmup passes and 30 (default) timed trials guarded by compiler memory barriers, validates each trial's result, then computes and prints min/mean/median/IQR plus two machine-parseable lines (`SAMPLES:`, `STATS:`). Accepts `./main [trials] [warmup]`. |
| [benchmark.sh](benchmark.sh) | Drives Experiment A. Recompiles `main.cpp` under each of 4 flag sets, runs the resulting binary once, and prints the parsed `STATS:` line as one row — a compact side-by-side comparison of optimization levels. |
| [contend.sh](contend.sh) | Drives Experiment B. For each of the 4 flag sets, compiles once, then runs 33-trial cells at contention levels 0/1/4/8 (using bare `bash -c 'while :; do :; done'` busy-loop processes to occupy CPU cores, since macOS has no usable core-pinning API on Apple Silicon), with a 5s cooldown between contended cells and a trailing level-0 "drift control" re-measurement per flag set to detect thermal confounding. Guarantees spinner cleanup via `trap ... EXIT INT TERM`. Writes `contention_results.txt`. |
| [threaded.cpp](threaded.cpp) | Experiment C's program. Same harness as `main.cpp` (kernel, barriers, warmup, validation, statistics); only `parallelSum()` is new: it splits the array into T contiguous chunks, sums each on its own `std::thread` into an `alignas(128)` slot, joins, and combines in thread order. Also prints a `THREADS:` line with the median spread (slowest / fastest thread) and overhead (trial time minus slowest thread). Accepts `./threaded [trials] [warmup] [threads]`. |
| [threads.sh](threads.sh) | Drives Experiment C. Compiles `threaded.cpp` at `-O3`, runs 33-trial cells at 1 to 8 threads with a 5s cooldown after each multi-threaded cell and a trailing one-thread drift control. Writes `threads_results.txt`. |
| [verify.py](verify.py) | Generates `data.bin`: `N = 100,000,000` `float32` values, all `1.0`, via NumPy, written raw with `.tofile()`. Also prints NumPy's own computed sum as an independent reference value to sanity-check `main.cpp`'s result against. |
| [main_O0.s](main_O0.s), [main_O3.s](main_O3.s), [main_native.s](main_native.s) | Saved `clang++ -S` assembly output for the loop at each optimization level, kept for inspecting how (or whether) the compiler vectorizes the summation. `main_O3.s` and `main_native.s` are byte-identical on this machine — direct proof that `-march=native` is a no-op here, since M1/arm64 is already clang's default target. These are committed on purpose, as the primary evidence for both assembly-level claims in section 2: the reader can `diff` them and count the serial `fadd`s without owning the hardware. Regenerate rather than hand-edit (see section 5). |
| `data.bin` *(generated, not tracked)* | Generated binary input, ~400 MB. Not source — regenerate with `verify.py` rather than editing. Not meant to be committed/tracked as a normal source artifact. |
| [threaded_O3.s](threaded_O3.s) | Saved `-O3` assembly for `threaded.cpp`. Its kernel's hot loop is the same sixteen serial `fadd`s into `d0` as `main_O3.s`, which is the evidence that Experiment C changes the thread count and nothing else. |
| [threads_results.txt](threads_results.txt) | Output of `threads.sh`: one `STATS:` row plus spread and overhead per thread count. |
| [contention_results.txt](contention_results.txt) | Output of the current `contend.sh` protocol (in-process trials). This is the file to read for the mean-vs-median-under-contention results. |
| [final_results.txt](final_results.txt), [measure.txt](measure.txt) | Recorded outputs from the *old* 5-relaunch-per-process protocol (superseded by the in-process trial harness). Kept only as historical record of why that protocol was replaced — not interpretable against, or comparable with, current numbers. |

## 7. Command reference

| Command | What it does |
|---|---|
| `python3 verify.py` | Generates `data.bin` (100M `float32` values, all `1.0`, ~400 MB) and prints NumPy's reference sum. Required before running `main` the first time. |
| `clang++ -O3 main.cpp -o main` | Compiles `main.cpp` at a chosen optimization level. Swap `-O3` for `-O0`, `-O2`, or `-O3 -march=native` to build a different config. No Makefile/CMake — this is the entire build system. |
| `./main` | Runs the compiled binary with default 30 timed trials + 3 warmup trials. Prints a per-trial table, then min/mean/median/IQR, then the machine-parseable `SAMPLES:`/`STATS:` lines. Exits 1 if any trial's sum fails validation. |
| `./main [trials] [warmup]` | Same, with explicit trial/warmup counts (e.g. `./main 100 5` for a longer, more stable read on a marginal result — no recompile needed). |
| `./benchmark.sh` | Full Experiment A: recompiles and runs all 4 flag sets (`-O0`, `-O2`, `-O3`, `-O3 -march=native`) once each, prints one `STATS:` row per config, plus a note explaining why the last two rows are expected to match on this machine. Overwrites `./main` with whichever config ran last. |
| `./contend.sh` | Full Experiment B: 4 flag sets x 4 contention levels x 33 trials, with cooldowns and a drift control, spinner processes guaranteed killed on exit (even on Ctrl-C). Writes `contention_results.txt`. Takes several minutes and pins CPU cores under sustained load. |
| `./threaded [trials] [warmup] [threads]` | Experiment C's binary (build with `clang++ -O3 -std=c++17 threaded.cpp -o threaded`). Same output as `./main`, plus a `THREADS:` line. Defaults to 30 trials, 3 warmup, 4 threads; exits 1 on a wrong sum or a thread count below 1. |
| `./threads.sh` | Full Experiment C: `-O3` at 1 to 8 threads x 33 trials, with cooldowns and a drift control. Writes `threads_results.txt`. Takes about a minute and loads every core. |
| `pgrep -f 'while :'` | Diagnostic, not part of the normal workflow: run this after any *uncleanly interrupted* `contend.sh` to confirm no spinner busy-loop process survived. Should return nothing. |
| `clang++ -S -O<level> main.cpp -o main_O<level>.s` | Regenerates saved assembly for inspection (add `-march=native` for the native variant). Use this instead of hand-editing the `.s` files whenever `main.cpp`'s loop changes. |
