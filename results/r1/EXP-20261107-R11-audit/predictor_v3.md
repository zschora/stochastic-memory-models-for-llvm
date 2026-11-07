# R1.1.1 predictor screen v3

Decision features are static or scenario-labelled; diagnostic facts are used only for scoring. Baseline selection excludes the R1-F patched toolchain. This is in-sample and exploratory.

| policy | FP | missed profitable | regret (ms) | rel. regret | geomean speedup | worst regression |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| current_model | 3 | 10 | 11.613 | 8.79% | 1.0882 | 126.4% |
| metadata_guard | 2 | 11 | 15.090 | 11.42% | 1.1119 | 28.1% |
| metadata_guard_or_large | 2 | 10 | 11.597 | 8.78% | 1.1217 | 28.1% |
| footprint_256k | 3 | 2 | 0.048 | 0.04% | 1.1678 | 126.4% |
| two_signal | 2 | 2 | 0.033 | 0.02% | 1.2037 | 28.1% |

Feature availability:

- **static**: pre-treatment IR; available before the profitability decision
- **scenario**: benchmark/runtime context; not deployable by itself
- **baseline**: current compiler decision; available at decision time
- **diagnostic**: post-fusion assembly/measurements; scoring only

Limits: no held-out families, no workload-frequency weighting, and no deployable claim.
