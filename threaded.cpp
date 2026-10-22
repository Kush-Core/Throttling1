#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <chrono>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <thread>
#include <vector>
using namespace std;

// Experiment C: the same 100M-float sum as main.cpp, split into T contiguous
// chunks summed on T std::threads. Everything except the thread count is kept
// identical to main.cpp (kernel, barriers, warmup, validation, statistics), so
// threads=1 must reproduce main's -O3 numbers. If it does not, the harness
// changed, not the hardware.

template <class T>
static inline void doNotOptimizeAway(const T &value)
{
    asm volatile("" : : "r,m"(value) : "memory");
}
static inline void clobberMemory()
{
    asm volatile("" : : : "memory");
}

// Byte-for-byte the kernel from main.cpp: one double accumulator, so each
// thread still runs one serial fadd dependency chain over its own chunk.
// Threads add independent chains; they do not shorten any chain.
__attribute__((noinline)) static double kernel(const float *data, size_t n)
{
    double sum = 0.0;
    for (size_t i = 0; i < n; ++i)
    {
        sum += data[i];
    }
    return sum;
}

// One result slot per thread, padded to a full cache line so no two threads
// ever write the same line. M1's line is 128 bytes (sysctl hw.cachelinesize),
// not the 64 most x86 code assumes. Each thread writes its slot only after its
// loop, so false sharing could only cost a few line transfers here; the
// padding makes that a guarantee rather than an estimate.
// `ms` is the thread's own time on its chunk. Comparing threads shows whether
// one of them (e.g. one placed on an E-core) held up the whole sum.
struct alignas(128) Partial
{
    double sum;
    double ms;
};

// Spawns and joins the threads inside the timed region on purpose: thread
// create + join is part of what parallelism costs the caller. Partials are
// combined in thread order, so the result does not depend on finish order.
static double parallelSum(const float *data, size_t n, int threads, vector<Partial> &partials)
{
    vector<thread> pool;
    pool.reserve(threads);

    const size_t chunk = n / threads;
    for (int t = 0; t < threads; ++t)
    {
        const size_t begin = t * chunk;
        const size_t len = (t == threads - 1) ? n - begin : chunk;
        pool.emplace_back([data, begin, len, t, &partials]
                          {
                              clobberMemory();
                              auto start = chrono::steady_clock::now();
                              partials[t].sum = kernel(data + begin, len);
                              auto end = chrono::steady_clock::now();
                              chrono::duration<double, milli> elapsed = end - start;
                              partials[t].ms = elapsed.count();
                          });
    }
    for (thread &th : pool)
    {
        th.join();
    }

    double sum = 0.0;
    for (int t = 0; t < threads; ++t)
    {
        sum += partials[t].sum;
    }
    return sum;
}

static double median(vector<double> values)
{
    sort(values.begin(), values.end());
    size_t n = values.size();
    return (n % 2 == 0) ? (values[n / 2 - 1] + values[n / 2]) / 2.0 : values[n / 2];
}

// Type-7 linear interpolation (np.percentile's default convention).
// h = (n-1)*p; result interpolates between s[floor(h)] and s[floor(h)+1].
static double quantile(const vector<double> &sorted, double p)
{
    double h = (sorted.size() - 1) * p;
    size_t lo = static_cast<size_t>(floor(h));
    size_t hi = min(lo + 1, sorted.size() - 1);
    double frac = h - lo;
    return sorted[lo] + frac * (sorted[hi] - sorted[lo]);
}

int main(int argc, char **argv)
{
    const size_t N = 100'000'000;
    const int trials = argc > 1 ? atoi(argv[1]) : 30;
    const int warmup = argc > 2 ? atoi(argv[2]) : 3;
    const int threads = argc > 3 ? atoi(argv[3]) : 4;

    if (threads < 1)
    {
        cerr << "Error: threads must be >= 1\n";
        return 1;
    }

    vector<float> data(N);
    ifstream file("data.bin", ios::binary);
    file.read(reinterpret_cast<char *>(data.data()), N * sizeof(float));

    vector<Partial> partials(threads);

    // Warmup: same reasoning as main.cpp (DVFS ramp, not cache warmth), and
    // here it also brings every core the trials will use up to clock.
    for (int w = 0; w < warmup; ++w)
    {
        clobberMemory();
        double sum = parallelSum(data.data(), N, threads, partials);
        doNotOptimizeAway(sum);
    }

    vector<double> samples;
    samples.reserve(trials);

    // Per trial: slowest / fastest thread time (1.00 = perfectly even), and
    // trial time minus slowest thread (thread create + join + combine).
    vector<double> spreads;
    vector<double> overheads;

    for (int t = 0; t < trials; ++t)
    {
        clobberMemory();
        auto start = chrono::steady_clock::now();
        double sum = parallelSum(data.data(), N, threads, partials);
        auto end = chrono::steady_clock::now();
        doNotOptimizeAway(sum);

        chrono::duration<double, milli> elapsed = end - start;

        // Every value is 1.0 and every partial is an integer below 2^53, so
        // the sum is exact in any split; a wrong chunk boundary (a dropped or
        // double-counted element) shows up here as an error of at least 1.0.
        if (abs(sum - 100000000.0) > 0.001)
        {
            cerr << "Error: Incorrect sum on trial " << t << "\n";
            return 1;
        }

        double slowest = partials[0].ms;
        double fastest = partials[0].ms;
        for (int k = 1; k < threads; ++k)
        {
            slowest = max(slowest, partials[k].ms);
            fastest = min(fastest, partials[k].ms);
        }
        spreads.push_back(slowest / fastest);
        overheads.push_back(elapsed.count() - slowest);

        samples.push_back(elapsed.count());
        cout << "trial " << t << ": " << elapsed.count() << " ms\n";
    }

    // Keep samples in raw (chronological) order above — order is
    // diagnostic. Sort a copy for the statistics below.
    vector<double> sorted = samples;
    sort(sorted.begin(), sorted.end());

    double min_v = sorted.front();

    double mean_v = 0.0;
    for (double s : samples)
    {
        mean_v += s;
    }
    mean_v /= samples.size();

    size_t n = sorted.size();
    double median_v = (n % 2 == 0)
        ? (sorted[n / 2 - 1] + sorted[n / 2]) / 2.0
        : sorted[n / 2];

    double iqr_v = quantile(sorted, 0.75) - quantile(sorted, 0.25);

    cout << fixed << setprecision(2);
    cout << "\nconfig: warmup=" << warmup << "  trials=" << trials
         << "  threads=" << threads << "\n";
    cout << "  min      mean    median     IQR\n";
    cout << " " << min_v << "    " << mean_v << "    " << median_v
         << "    " << iqr_v << "   ms\n\n";

    cout << "SAMPLES:";
    for (double s : samples)
    {
        cout << " " << s;
    }
    cout << "\n";

    cout << "STATS: min=" << min_v << " mean=" << mean_v
         << " median=" << median_v << " iqr=" << iqr_v << "\n";

    cout << "THREADS: spread=" << median(spreads)
         << " overhead_ms=" << setprecision(3) << median(overheads) << "\n";

    return 0;
}
