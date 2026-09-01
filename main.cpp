#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <chrono>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <vector>
using namespace std;

template <class T>
static inline void doNotOptimizeAway(const T &value)
{
    asm volatile("" : : "r,m"(value) : "memory");
}
static inline void clobberMemory()
{
    asm volatile("" : : : "memory");
}

__attribute__((noinline)) static double kernel(const float *data, size_t n)
{
    double sum = 0.0;
    for (size_t i = 0; i < n; ++i)
    {
        sum += data[i];
    }
    return sum;
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

    vector<float> data(N);
    ifstream file("data.bin", ios::binary);
    file.read(reinterpret_cast<char *>(data.data()), N * sizeof(float));

    // Warmup: untimed iterations through the identical path (barriers
    // included), results discarded. This exists for DVFS ramp — an M1
    // P-core does not start a burst at 3.2 GHz. It is NOT cache warmth:
    // the 400 MB working set is ~50x the 8 MB shared L2, so every trial,
    // warmup or timed, streams from DRAM cold regardless.
    for (int w = 0; w < warmup; ++w)
    {
        clobberMemory();
        double sum = kernel(data.data(), N);
        doNotOptimizeAway(sum);
    }

    vector<double> samples;
    samples.reserve(trials);

    for (int t = 0; t < trials; ++t)
    {
        clobberMemory();
        auto start = chrono::steady_clock::now();
        double sum = kernel(data.data(), N);
        auto end = chrono::steady_clock::now();
        doNotOptimizeAway(sum);

        chrono::duration<double, milli> elapsed = end - start;

        // Per-trial validation is the cheap tripwire for the hoisting
        // failure: if the compiler ever reuses a stale sum, this fires.
        if (abs(sum - 100000000.0) > 0.001)
        {
            cerr << "Error: Incorrect sum on trial " << t << "\n";
            return 1;
        }

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
    cout << "\nconfig: warmup=" << warmup << "  trials=" << trials << "\n";
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

    return 0;
}
