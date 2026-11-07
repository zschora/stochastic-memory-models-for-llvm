---
name: performance-experiment-audit
description: Design or review a CPU timing campaign. Use when comparing compiler configurations, interpreting a regression, choosing sample sizes and controls, or checking whether a mechanistic explanation is supported by measurements.
license: Apache-2.0 WITH LLVM-exception
---

# Performance experiment audit

Use this file manually if the host does not implement Agent Skills.

## Pre-registration

Write down before running:

- estimand and unit (per-call ns, total time, throughput);
- A/B/C or control configurations;
- the one intended difference between configurations;
- input sizes and the cache/DRAM regime they target;
- warmup, repetitions, trial length, randomization and interleaving;
- correctness oracle and noise controls;
- decision threshold and what result would refute the hypothesis.

## Procedure

1. Confirm the binaries/IR differ only in the intended optimization; use an A/A
   control where possible.
2. Pin CPU/priority if the platform allows it; record OS, CPU, caches and timer.
3. Warm up; randomize/interleave configurations; keep trials long enough for the
   timer resolution.
4. Preserve every raw trial. Report median, spread and a confidence interval;
   include minima only as a diagnostic, not as the sole result.
5. Watch for frequency scaling, thermal drift, background load, page faults,
   allocator effects and dead-code elimination.
6. Inspect IR/assembly to verify the expected code difference.
7. Separate statistics from mechanism. Use counters if available; otherwise
   state that the cause is inferred.
8. Record a negative result if the effect is within noise or the hypothesis
   fails.

## Red flags

- Comparing ordinary `-O3` builds with many uncontrolled differences.
- Reporting only the best run or dropping inconvenient outliers.
- Claiming a cache effect from timing alone.
- Treating identical B/C binaries as a real treatment difference.
- Small effects with no confidence interval or A/A noise estimate.

## Output

An experiment record with manifest, raw files, summary statistics, controls,
limitations and a decision. If the result is preliminary, do not promote the
hypothesis to `supported`.
