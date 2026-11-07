# R1.1 predictor screen v2

Decision features are static or scenario-labelled; diagnostic facts are used only for scoring. This is in-sample and exploratory.

| policy | FP | missed profitable | regret (ms) | rel. regret | geomean speedup | worst regression |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| current_model | 2 | 12 | 22.675 | 13.16% | 1.1188 | 28.1% |
| metadata_guard | 2 | 13 | 26.167 | 15.19% | 1.1097 | 28.1% |
| metadata_guard_or_large | 2 | 12 | 22.675 | 13.16% | 1.1188 | 28.1% |
| footprint_256k | 1 | 3 | 0.029 | 0.02% | 1.2260 | 17.6% |
| two_signal | 1 | 3 | 0.029 | 0.02% | 1.2260 | 17.6% |

Feature availability:

- **static**: pre-treatment IR; available before the profitability decision
- **scenario**: benchmark/runtime context; not deployable by itself
- **baseline**: current compiler decision; available at decision time
- **diagnostic**: post-fusion assembly/measurements; scoring only

Limits: no held-out families, no workload-frequency weighting, and no deployable claim.
