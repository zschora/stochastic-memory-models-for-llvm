# R1-D simple-rule comparison (EXP-20261107-R1A)

Legal measured points: 33 (profitable 20, harmful 6, neutral 7; illegal 5).

| rule | false positives | false negatives | profitable accepted | harmful rejected | regret (%) |
| --- | ---: | ---: | ---: | ---: | ---: |
| always_legal | 6 | 0 | 20 | 0 | 292.4 |
| current_model | 6 | 3 | 17 | 0 | 359.7 |
| footprint_gt_256KiB | 2 | 4 | 16 | 4 | 74.2 |
| footprint_gt_1MiB | 0 | 8 | 12 | 6 | 111.2 |
| footprint_gt_8MiB | 0 | 14 | 6 | 6 | 239.4 |
| vectorization_compatible | 3 | 5 | 15 | 3 | 138.0 |
| compatible_or_gt_8MiB | 3 | 3 | 17 | 3 | 95.2 |
| current_plus_shifted | 6 | 0 | 20 | 0 | 292.4 |
| shifted_and_compatible_or_large | 3 | 7 | 13 | 3 | 184.2 |
| two_signal_256KiB | 1 | 6 | 14 | 5 | 86.9 |
| two_signal_1MiB | 0 | 10 | 10 | 6 | 147.5 |

In-sample only; no held-out family and no upstream proposal.
