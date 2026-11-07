// Minimal timing harness for the LoopFusion profitability experiments.
// Deliberately dependency-free: Windows QPC + aligned buffers + deterministic
// data. The kernel is called through a volatile function pointer so that the
// harness cannot inline/hoist/eliminate the measured work.
#pragma once

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <mmsystem.h>

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

namespace bench {

inline void *aligned_alloc64(size_t bytes) {
  void *p = _aligned_malloc(bytes, 64);
  if (!p) {
    std::fprintf(stderr, "allocation failed (%zu bytes)\n", bytes);
    std::exit(2);
  }
  return p;
}

inline void aligned_free(void *p) { _aligned_free(p); }

inline uint64_t lcg(uint64_t &s) {
  s = s * 6364136223846793005ULL + 1442695040888963407ULL;
  return s;
}

inline void init_f64(double *a, size_t n, uint64_t seed) {
  for (size_t i = 0; i < n; ++i) {
    uint64_t r = lcg(seed);
    // [-1, 1)
    a[i] = (double)(int64_t)r / 9223372036854775808.0;
  }
}

inline void init_u64(uint64_t *a, size_t n, uint64_t seed) {
  for (size_t i = 0; i < n; ++i)
    a[i] = lcg(seed);
}

inline uint64_t hash_bytes(const void *p, size_t n) {
  const unsigned char *b = (const unsigned char *)p;
  uint64_t h = 1469598103934665603ULL;
  for (size_t i = 0; i < n; ++i) {
    h ^= b[i];
    h *= 1099511628211ULL;
  }
  return h;
}

inline void pin_environment() {
  // Pin to logical CPU 2 (a P-core on Alder Lake, avoiding the usual CPU 0
  // interrupt traffic) and raise priority. Failures are reported but not
  // fatal: this is a laptop, not a dedicated lab box.
  if (!SetProcessAffinityMask(GetCurrentProcess(), (DWORD_PTR)4))
    std::fprintf(stderr, "warning: SetProcessAffinityMask failed (%lu)\n",
                 GetLastError());
  if (!SetPriorityClass(GetCurrentProcess(), HIGH_PRIORITY_CLASS))
    std::fprintf(stderr, "warning: SetPriorityClass failed (%lu)\n",
                 GetLastError());
  timeBeginPeriod(1);
}

inline double qpc_ns_per_tick() {
  LARGE_INTEGER f;
  QueryPerformanceFrequency(&f);
  return 1.0e9 / (double)f.QuadPart;
}

// Run `trials` independent timings of `reps` kernel calls. Prints one
// "TRIAL <idx> <ns_per_call>" line per measurement so the driver can
// interleave configurations at the process level.
template <typename Fn>
void run_trials(const char *case_name, const char *config, size_t n, int reps,
                int trials, Fn fn) {
  const double ns_per_tick = qpc_ns_per_tick();
  for (int t = 0; t < trials; ++t) {
    LARGE_INTEGER a, b;
    QueryPerformanceCounter(&a);
    for (int r = 0; r < reps; ++r)
      fn();
    QueryPerformanceCounter(&b);
    double ns = (double)(b.QuadPart - a.QuadPart) * ns_per_tick / reps;
    std::printf("TRIAL %d %.3f\n", t, ns);
  }
  std::printf("META case=%s config=%s n=%zu reps=%d trials=%d\n", case_name,
              config, n, reps, trials);
}

struct Args {
  std::string config;
  size_t n;
  int reps;
  int trials;
};

inline Args parse_args(int argc, char **argv, size_t def_n, int def_reps,
                       int def_trials) {
  Args a;
  a.config = argc > 1 ? argv[1] : "unknown";
  a.n = argc > 2 ? (size_t)_strtoui64(argv[2], nullptr, 10) : def_n;
  a.reps = argc > 3 ? std::atoi(argv[3]) : def_reps;
  a.trials = argc > 4 ? std::atoi(argv[4]) : def_trials;
  return a;
}

inline bool close_enough(double a, double b) {
  double d = std::fabs(a - b);
  return d <= 1e-9 * (1.0 + std::fabs(a) + std::fabs(b));
}

} // namespace bench
