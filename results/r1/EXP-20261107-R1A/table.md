# R1-A campaign table: EXP-20261107-R1A

Medians are per kernel call. Negative deltas are improvements. The AA column is an identical-binary noise control.

| case | mode | n | A ns | B ns | C ns | B vs A | C vs A | C vs B | AA vs A |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| read_read_offset |  | 1024 | 278 | 234 | 235 | -15.9% | -15.5% | +0.4% | +44.9% |
| read_read_offset |  | 16384 | 12572 | 12180 | 13164 | -3.1% | +4.7% | +8.1% | +0.5% |
| read_read_offset |  | 131072 | 220070 | 165094 | 167525 | -25.0% | -23.9% | +1.5% | -5.8% |
| read_read_offset |  | 1048576 | 2397017 | 1886283 | 2090933 | -21.3% | -12.8% | +10.8% | +4.0% |
| read_read_offset |  | 8388608 | 21543650 | 15657000 | 15636300 | -27.3% | -27.4% | -0.1% | +0.3% |
| shifted_reuse |  | 1024 | 275 | 282 | 281 | +2.7% | +2.3% | -0.3% | -1.4% |
| shifted_reuse |  | 16384 | 13396 | 13364 | 12839 | -0.2% | -4.2% | -3.9% | -3.6% |
| shifted_reuse |  | 131072 | 244112 | 203009 | 233888 | -16.8% | -4.2% | +15.2% | -3.2% |
| shifted_reuse |  | 1048576 | 2590133 | 2002775 | 2414342 | -22.7% | -6.8% | +20.5% | -8.0% |
| shifted_reuse |  | 8388608 | 22209200 | 16036450 | 21946450 | -27.8% | -1.2% | +36.9% | +11.0% |
| simd_metadata |  | 1024 | 545 | 1038 | 1054 | +90.5% | +93.6% | +1.6% | -5.2% |
| simd_metadata |  | 16384 | 12395 | 28300 | 28619 | +128.3% | +130.9% | +1.1% | +2.5% |
| simd_metadata |  | 131072 | 212698 | 262795 | 253965 | +23.6% | +19.4% | -3.4% | +4.1% |
| simd_metadata |  | 1048576 | 2395800 | 2274417 | 2241600 | -5.1% | -6.4% | -1.4% | -5.8% |
| simd_metadata |  | 8388608 | 21473000 | 18678950 | 20483650 | -13.0% | -4.6% | +9.7% | +2.5% |
| simd_metadata_scalar |  | 1024 | 1466 | 1382 | 1474 | -5.8% | +0.5% | +6.7% | -6.8% |
| simd_metadata_scalar |  | 16384 | 28143 | 36240 | 33793 | +28.8% | +20.1% | -6.8% | -4.2% |
| simd_metadata_scalar |  | 131072 | 266450 | 312078 | 291052 | +17.1% | +9.2% | -6.7% | +6.4% |
| simd_metadata_scalar |  | 1048576 | 2750883 | 2768700 | 2522133 | +0.6% | -8.3% | -8.9% | -1.6% |
| simd_metadata_scalar |  | 8388608 | 23769300 | 23074400 | 22084900 | -2.9% | -7.1% | -4.3% | +2.5% |
| simd_reduction |  | 16384 | 37995 | 34598 | 32890 | -8.9% | -13.4% | -4.9% | -1.0% |
| simd_reduction |  | 1048576 | 3456833 | 2376217 | 2493733 | -31.3% | -27.9% | +4.9% | -1.6% |
| simd_reduction |  | 8388608 | 28335700 | 19893100 | 18930100 | -29.8% | -33.2% | -4.8% | +1.4% |
| producer_consumer |  | 1024 | 292 | 289 | 286 | -1.1% | -2.0% | -0.9% | -0.0% |
| producer_consumer |  | 16384 | 11263 | 11050 | 11179 | -1.9% | -0.8% | +1.2% | +3.7% |
| producer_consumer |  | 131072 | 257252 | 233042 | 232845 | -9.4% | -9.5% | -0.1% | -16.8% |
| producer_consumer |  | 1048576 | 2486917 | 2397883 | 2411583 | -3.6% | -3.0% | +0.6% | +7.0% |
| producer_consumer |  | 8388608 | 21090150 | 20706850 | 21196100 | -1.8% | +0.5% | +2.4% | +4.2% |
| known_vec | setup | 10000 | 6842 | 5522 | 6078 | -19.3% | -11.2% | +10.1% | +7.2% |
| known_vec | hot | 10000 | 2995 | 2981 | 3017 | -0.5% | +0.7% | +1.2% | +0.5% |
| known_vec | body | 10000 | 3413229 | 3493617 | 3348071 | +2.4% | -1.9% | -4.2% | -6.9% |
| read_read |  | 1024 | 277 | 288 | 282 | +4.1% | +1.8% | -2.1% | +6.8% |
| read_read |  | 16384 | 10279 | 9577 | 9411 | -6.8% | -8.4% | -1.7% | -0.3% |
| read_read |  | 131072 | 180031 | 145478 | 148349 | -19.2% | -17.6% | +2.0% | +0.2% |
| read_read |  | 1048576 | 2011375 | 1635983 | 1594375 | -18.7% | -20.7% | -2.5% | +1.6% |
| read_read |  | 8388608 | 21546400 | 15398700 | 15726600 | -28.5% | -27.0% | +2.1% | +1.6% |
| producer_consumer_split |  | 1024 | 321 | 274 | 260 | -14.6% | -18.9% | -5.1% | -0.0% |
| producer_consumer_split |  | 16384 | 12215 | 12158 | 12248 | -0.5% | +0.3% | +0.7% | +11.0% |
| producer_consumer_split |  | 131072 | 196925 | 164108 | 162488 | -16.7% | -17.5% | -1.0% | +3.9% |
| producer_consumer_split |  | 1048576 | 2284133 | 1615067 | 1722867 | -29.3% | -24.6% | +6.7% | +3.4% |
| producer_consumer_split |  | 8388608 | 21048700 | 15065400 | 15449250 | -28.4% | -26.6% | +2.5% | +0.9% |

Failures:

- none

Commands:

```text
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case read_read -Campaign EXP-20261107-R1A
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case read_read_offset -Campaign EXP-20261107-R1A
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read_offset --campaign EXP-20261107-R1A --n 1024 --reps 10000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read_offset --campaign EXP-20261107-R1A --n 16384 --reps 300 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read_offset --campaign EXP-20261107-R1A --n 131072 --reps 40 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read_offset --campaign EXP-20261107-R1A --n 1048576 --reps 6 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read_offset --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case shifted_reuse -Campaign EXP-20261107-R1A
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse --campaign EXP-20261107-R1A --n 1024 --reps 10000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse --campaign EXP-20261107-R1A --n 16384 --reps 300 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse --campaign EXP-20261107-R1A --n 131072 --reps 40 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse --campaign EXP-20261107-R1A --n 1048576 --reps 6 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case shifted_reuse --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case simd_metadata -Campaign EXP-20261107-R1A
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata --campaign EXP-20261107-R1A --n 1024 --reps 3000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata --campaign EXP-20261107-R1A --n 16384 --reps 200 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata --campaign EXP-20261107-R1A --n 131072 --reps 20 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata --campaign EXP-20261107-R1A --n 1048576 --reps 3 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case simd_metadata_scalar -Campaign EXP-20261107-R1A
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata_scalar --campaign EXP-20261107-R1A --n 1024 --reps 3000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata_scalar --campaign EXP-20261107-R1A --n 16384 --reps 200 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata_scalar --campaign EXP-20261107-R1A --n 131072 --reps 20 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata_scalar --campaign EXP-20261107-R1A --n 1048576 --reps 3 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_metadata_scalar --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case simd_reduction -Campaign EXP-20261107-R1A
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_reduction --campaign EXP-20261107-R1A --n 16384 --reps 100 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_reduction --campaign EXP-20261107-R1A --n 1048576 --reps 3 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case simd_reduction --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case producer_consumer -Campaign EXP-20261107-R1A
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer --campaign EXP-20261107-R1A --n 1024 --reps 3000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer --campaign EXP-20261107-R1A --n 16384 --reps 200 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer --campaign EXP-20261107-R1A --n 131072 --reps 20 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer --campaign EXP-20261107-R1A --n 1048576 --reps 3 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case producer_consumer_split -Campaign EXP-20261107-R1A -KernelLl C:\work\llvm-profitability-research\benchmarks\producer_consumer_split.ll
powershell -NoProfile -ExecutionPolicy Bypass -File C:\work\llvm-profitability-research\scripts\r1_build_case.ps1 -Case known_vec -Campaign EXP-20261107-R1A
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case known_vec --campaign EXP-20261107-R1A --n 10000 --reps 200 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a --mode setup
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case known_vec --campaign EXP-20261107-R1A --n 10000 --reps 4000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a --mode hot
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case known_vec --campaign EXP-20261107-R1A --n 10000 --reps 12 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a --mode body
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read --campaign EXP-20261107-R1A --n 1024 --reps 10000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read --campaign EXP-20261107-R1A --n 16384 --reps 300 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read --campaign EXP-20261107-R1A --n 131072 --reps 40 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read --campaign EXP-20261107-R1A --n 1048576 --reps 6 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case read_read --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer_split --campaign EXP-20261107-R1A --n 1024 --reps 3000 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer_split --campaign EXP-20261107-R1A --n 16384 --reps 200 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer_split --campaign EXP-20261107-R1A --n 131072 --reps 20 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer_split --campaign EXP-20261107-R1A --n 1048576 --reps 3 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
C:\Python312\python.exe C:\work\llvm-profitability-research\scripts\r1_run_case.py --case producer_consumer_split --campaign EXP-20261107-R1A --n 8388608 --reps 1 --trials 4 --rounds 5 --configs A,B,C,AA --tag r1a
```

