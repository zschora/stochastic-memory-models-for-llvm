# R1-A campaign table: EXP-20261107-R1C-offsets

Medians are per kernel call. Negative deltas are improvements. The AA column is an identical-binary noise control.

| case | mode | n | A ns | B ns | C ns | B vs A | C vs A | C vs B | AA vs A |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| shifted_reuse_k2 |  | 16384 | 7582 | 7685 | 7352 | +1.3% | -3.0% | -4.3% | -3.0% |
| shifted_reuse_k2 |  | 131072 | 118848 | 100304 | 121358 | -15.6% | +2.1% | +21.0% | +3.2% |
| shifted_reuse_k2 |  | 1048576 | 1471675 | 1175908 | 1561733 | -20.1% | +6.1% | +32.8% | -1.4% |
| shifted_reuse_k2 |  | 8388608 | 16535800 | 11220000 | 16386100 | -32.1% | -0.9% | +46.0% | +0.3% |
| shifted_reuse_k4 |  | 16384 | 8291 | 8600 | 8277 | +3.7% | -0.2% | -3.8% | -0.6% |
| shifted_reuse_k4 |  | 131072 | 132489 | 113691 | 134231 | -14.2% | +1.3% | +18.1% | +3.3% |
| shifted_reuse_k4 |  | 1048576 | 1630050 | 1328358 | 1764542 | -18.5% | +8.3% | +32.8% | -0.2% |
| shifted_reuse_k4 |  | 8388608 | 18027350 | 12263400 | 18303350 | -32.0% | +1.5% | +49.3% | +6.0% |
| shifted_reuse_k8 |  | 16384 | 8629 | 8994 | 8779 | +4.2% | +1.7% | -2.4% | -1.9% |
| shifted_reuse_k8 |  | 131072 | 134031 | 113696 | 135800 | -15.2% | +1.3% | +19.4% | +1.1% |
| shifted_reuse_k8 |  | 1048576 | 1459442 | 1222633 | 1476867 | -16.2% | +1.2% | +20.8% | -1.9% |
| shifted_reuse_k8 |  | 8388608 | 16468400 | 11394200 | 16330550 | -30.8% | -0.8% | +43.3% | -0.8% |

Failures:

- none

Commands:

```text
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case shifted_reuse_k2 -Campaign EXP-20261107-R1C-offsets
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k2 --campaign EXP-20261107-R1C-offsets --n 16384 --reps 300 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k2 --campaign EXP-20261107-R1C-offsets --n 131072 --reps 40 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k2 --campaign EXP-20261107-R1C-offsets --n 1048576 --reps 6 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k2 --campaign EXP-20261107-R1C-offsets --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case shifted_reuse_k4 -Campaign EXP-20261107-R1C-offsets
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k4 --campaign EXP-20261107-R1C-offsets --n 16384 --reps 300 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k4 --campaign EXP-20261107-R1C-offsets --n 131072 --reps 40 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k4 --campaign EXP-20261107-R1C-offsets --n 1048576 --reps 6 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k4 --campaign EXP-20261107-R1C-offsets --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case shifted_reuse_k8 -Campaign EXP-20261107-R1C-offsets
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k8 --campaign EXP-20261107-R1C-offsets --n 16384 --reps 300 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k8 --campaign EXP-20261107-R1C-offsets --n 131072 --reps 40 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k8 --campaign EXP-20261107-R1C-offsets --n 1048576 --reps 6 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse_k8 --campaign EXP-20261107-R1C-offsets --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
```

