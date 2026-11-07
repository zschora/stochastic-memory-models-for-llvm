# R1.2 - Real-World Corpus and Discovery

- Date: 2026-11-07
- Sources: PolyBench/C 4.2.1 (`3e872547...`), TSVC mirror (`f2d53d51...`)
- Discovery: [`../results/r1/EXP-20261107-R12-discovery/discovery.json`](../results/r1/EXP-20261107-R12-discovery/discovery.json)
- Corpus manifest: [`../research/corpus/r1_2/corpus_manifest.json`](../research/corpus/r1_2/corpus_manifest.json)
- Final TSVC measurement: [`../results/r1/EXP-20261107-R12-tsvc-pinned/`](../results/r1/EXP-20261107-R12-tsvc-pinned/)

## 1. Discovery funnel

The inventory is based on actual front-end IR and LoopFusion remarks, not source
pattern guesses.

| Source | Compiled cases | Functions examined | Fused B/C | Legal but rejected | Illegal/form-rejected | No remark/not examinable |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| PolyBench | 30 | 28 kernel/init/main functions | 0 | 0 | 28 | 0 |
| TSVC | 1 source (136 functions) | 10 functions with analysis | 1 (`s233`) | 1 (`s2233`) | 8 | 126 |
| **Total** | | **38 analysed functions** | **1** | **1** | **36** | |

The TSVC count "10 functions with analysis" includes only functions that emitted
LoopFusion remarks; the other 126 functions never reached a fusion candidate
under this pipeline. This is a discovery yield, not a claim that every function
was manually audited.

### PolyBench

All 28 PolyBench functions that reached fusion analysis were rejected by
legality or form: `InvalidDependencies`, `NonEqualTripCount`, `InvalidCandidate`.
No kernel function produced `FuseCounter` in B or C. The loops are mostly nested
or have real loop-carried dependencies; adjacent, legally fusable pairs are rare.

This is a **negative result**: PolyBench is not a useful source of isolated
LoopFusion opportunities at this pinned pipeline without changing the pass
order or the program structure.

### TSVC

Only two TSVC functions produced a legal B fusion:

- `s233`: two adjacent inner loops over `j`, both reading `cc[j][i]`, writing
  `aa` and `bb`. B and C both fuse; C is profitable.
- `s2233`: same first loop, but the second loop reads `cc[i][j]` and writes
  `bb[i][j]`. B fuses; C rejects via `InsufficientReuse`; unrestricted fusion is
  a large regression.

The other 8 functions with remarks were rejected by `NonEqualTripCount` or
another legality/form reason. The remaining TSVC functions did not reach the
pass with an examinable adjacent pair in this pipeline.

## 2. Corpus inventory

| Family | Source | Revision | Function | Discovery class | Measurement |
| --- | --- | --- | --- | --- | --- |
| PolyBench linear algebra, stencils, medley (30 cases) | PolyBench/C 4.2.1 | `3e8725` | 28 analysed | 28 illegal | none (no legal candidate) |
| TSVC loop interchange | TSVC mirror | `f2d53d` | `s233` | legal_and_fused | 15 blocks, confirmed profitable |
| TSVC loop interchange | TSVC mirror | `f2d53d` | `s2233` | legal_but_rejected | 15 blocks; C neutral, B harmful |
| TSVC other | TSVC mirror | `f2d53d` | 8 functions | illegal/NonEqualTripCount | not measured |
| TSVC remaining | TSVC mirror | `f2d53d` | 126 functions | no examinable remark | not measured |

Licenses are preserved in
[`../benchmarks/r1_2/licenses/`](../benchmarks/r1_2/licenses/). External sources
are not vendored; the manifest records exact revisions and local paths.

## 3. TSVC measurement adaptation

The upstream source is not modified in place. For measurement:

- `ntimes` is reduced from 200000 to 256 so one call is practical for repeated
  timing;
- `main` is renamed to `tsvc_original_main`;
- portability shims cover `max`, `min`, `memalign` and missing POSIX headers;
- a wrapper calls only the selected function and hashes `aa/bb/cc` for a
  cross-configuration checksum;
- wrappers pin logical CPU 2 and raise priority using the existing harness.

This is a controlled measurement adaptation, not a claim that upstream TSVC
behavior is unchanged.

## 4. Measured results (final pinned campaign)

`EXP-20261107-R12-tsvc-pinned`, 15 complete blocks x 5 trials, verified v2
toolchain, A/A control:

| Case | B vs A | C vs A | A/A | C classification |
| --- | ---: | ---: | ---: | --- |
| `s233` | -9.3% | **-9.4%** | +0.2% | confirmed profitable |
| `s2233` | **+136.0%** | -0.1% | 0.0% | neutral (C rejects) |

The first 9-block campaign had large A/A drift (`s233` -7.6%, `s2233` +5.1%)
because the TSVC wrappers initially lacked the affinity/priority control. That
campaign is retained as a historical pilot. The final wrappers use the same
pinning as the established harness and the 15-block result is stable.

## 5. What this means

- Legal LoopFusion opportunities are **rare** in the selected real workloads.
- The current policy handled both real TSVC candidates correctly: it accepted
  the profitable `s233` pair and rejected the harmful `s2233` pair.
- This does not validate the current policy generally; it is two cases.
- PolyBench's lack of candidates is a concrete negative result, not evidence
  that LoopFusion is useless elsewhere.
- There is no evidence here for a new deployable cost model.

## 6. Reproduction

```powershell
# Fetch pinned sources (not committed)
git clone --depth 1 https://github.com/MatthiasJReisinger/PolyBenchC-4.2.1 .tools/corpus/PolyBench
git clone --depth 1 https://github.com/PGG106/TSVC .tools/corpus/TSVC
python scripts/r1_2_discover.py
python scripts/r1_2_tsvc_ir.py
python scripts/r1_campaign.py --spec research/harness/plans/r1_2_tsvc_pinned.json --resume
python scripts/r1_2_evaluate.py
```

## 7. Limits

- Two measured real cases; no broad held-out family set.
- Mini PolyBench dataset and `-O0 -disable-O0-optnone` front-end IR.
- No hardware counters, no whole-program timing.
- TSVC measurement uses reduced `ntimes` and a custom wrapper.
- No independent review.
