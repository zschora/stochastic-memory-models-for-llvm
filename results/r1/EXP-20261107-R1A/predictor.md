# R1-D simple-rule comparison (EXP-20261107-R1A)

Legal measured points: 45 (profitable 29, harmful 7, neutral 9; illegal 5).

| rule | false positives | false negatives | profitable accepted | harmful rejected | regret (%) |
| --- | ---: | ---: | ---: | ---: | ---: |
| always_legal | 7 | 0 | 29 | 0 | 296.1 |
| current_model | 6 | 12 | 17 | 1 | 554.4 |
| footprint_gt_256KiB | 2 | 4 | 25 | 5 | 74.2 |
| footprint_gt_1MiB | 0 | 11 | 18 | 7 | 156.1 |
| footprint_gt_8MiB | 0 | 20 | 9 | 7 | 339.2 |
| vectorization_compatible | 4 | 5 | 24 | 3 | 141.8 |
| compatible_or_gt_8MiB | 4 | 3 | 26 | 3 | 99.0 |
| current_plus_shifted | 7 | 0 | 29 | 0 | 296.1 |
| shifted_and_compatible_or_large | 4 | 7 | 22 | 3 | 187.9 |
| two_signal_256KiB | 1 | 6 | 23 | 6 | 86.9 |
| two_signal_1MiB | 0 | 13 | 16 | 7 | 192.4 |

In-sample only; no held-out family and no upstream proposal.
