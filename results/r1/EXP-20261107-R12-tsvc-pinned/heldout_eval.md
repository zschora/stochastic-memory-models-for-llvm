# R1.2 held-out TSVC case study

Two legal opportunities found by discovery; not a broad held-out family set.

| case | classification | B vs A | C vs A | label (B) |
| --- | --- | ---: | ---: | --- |
| tsvc_s233 | legal_and_fused | -9.3% | -9.4% | confirmed_profitable |
| tsvc_s2233 | legal_but_rejected | +135.9% | -0.1% | confirmed_harmful |

| policy | FP | missed profitable | regret (ms) | geomean speedup | worst regression |
| --- | ---: | ---: | ---: | ---: | ---: |
| current_model | 0 | 0 | 0.000000 | 1.0502 | 0.0% |
| no_fusion | 0 | 1 | 4.258000 | 1.0000 | 0.0% |
| always_fuse | 1 | 0 | 31.136900 | 0.6838 | 135.9% |
| metadata_guard | 0 | 0 | 0.000000 | 1.0502 | 0.0% |
| footprint_256k | 0 | 1 | 4.258000 | 1.0000 | 0.0% |

Limits: two cases, one machine, no independent review.
