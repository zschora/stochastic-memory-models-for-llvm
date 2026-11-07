# R1-F local prototype: vectorization-metadata compatibility guard

- Status: local prototype, not submitted upstream.
- Base revision: `6f4196219399a3502cea3beb2d0c8c28b2241649` (LLVM 24.0.0git)
- Patch: [`../research/patches/0001-loop-fusion-vectorization-metadata-check.patch`](../research/patches/0001-loop-fusion-vectorization-metadata-check.patch)
- Campaign: `EXP-20261107-R1F-patch`

## 1. Problem

LoopFusion rewires the fused loop to the second candidate's latch. The fused
loop therefore inherits the second loop's `llvm.loop` metadata. In R1-A,
`simd_metadata` (loop 1 requests width 8, loop 2 disables vectorization) was
accepted by the reuse gate and regressed by **+93.6% at 1 KiB and +130.9% at
16 KiB**; all 108 kernel `ymm` uses disappeared.

The existing profitability model only counts cross-loop reused values. It has no
representation of an explicit vectorization request being silently discarded.

## 2. Prototype

The patch adds an opt-in option:

```text
-loop-fusion-vectorization-check
```

When enabled, fusion is rejected if the first loop explicitly requests
vectorization and the second loop explicitly disables it or requests a narrower
width. The check reads only `llvm.loop.vectorize.enable`,
`llvm.loop.vectorize.disable`, and `llvm.loop.vectorize.width`. It deliberately
does **not** try to predict whether either loop will actually vectorize.

The default is off, so ordinary LLVM behavior and all existing tests are
unchanged unless the option is passed. A missed remark
(`VectorizationConflict`) and a statistic make the rejection visible.

Files changed by the patch:

```text
llvm/lib/Transforms/Scalar/LoopFuse.cpp
llvm/lib/Transforms/Scalar/ScalarOptions.td
llvm/test/Transforms/LoopFusion/vectorization-metadata-conflict.ll
```

The patch applies to the pinned revision; `git apply --reverse --check` passes on
the patched tree. The local `opt` was rebuilt successfully.

## 3. Checks

Minimal reproducer:

```text
opt -passes=loop-fusion -loop-fusion-min-reused-values=0 \
    -loop-fusion-vectorization-check -pass-remarks=loop-fusion \
    -pass-remarks-missed=loop-fusion -disable-output meta_min.ll
```

Observed: `Fusion would inherit incompatible vectorization metadata`, no
`Loops fused`. Without the new option, the same input reports `Loops fused`.
The regression test encodes exactly these two remarks. `FileCheck`/`lit` were not
run because this local build has tests disabled; the two `opt` invocations were
checked manually.

## 4. Runtime evaluation

A/C/D measurements, 4 rounds x 3 trials, same binaries and A/A control. D is the
new guard.

| case | n | A ns | C vs A | D vs A | AA vs A |
| --- | ---: | ---: | ---: | ---: | ---: |
| `simd_metadata` | 1,024 | 529 | **+120.5%** | **+5.6%** | +2.3% |
| `simd_metadata` | 16,384 | 14,241 | **+120.7%** | **-5.3%** | +2.5% |
| `simd_metadata` | 131,072 | 207,368 | **+24.8%** | **-4.2%** | -1.7% |
| `simd_metadata` | 1,048,576 | 2,414,500 | -2.5% | +1.6% | -0.3% |
| `simd_metadata` | 8,388,608 | 20,423,900 | -12.9% | -0.5% | +0.9% |
| `simd_reduction` | 1,048,576 | - | -34.1% | **-36.6%** | +0.5% |
| `shifted_reuse` | 1,048,576 | - | +0.4% | +7.3% | - |

Interpretation:

- The guard removes the large L1/L2 metadata-conflict regression and the
  smaller 128 KiB regression.
- It does **not** reject `simd_reduction`, which has no explicit conflicting
  width metadata and remains profitable. This preserves the important negative
  result from R1-A.
- It rejects the 8 MiB metadata case, where fusion was -12.9% profitable. This
  is the cost of a metadata-only rule: a footprint-aware exception is needed
  before this could be a general profitability model.
- It does nothing for the shifted-reuse false negative, because that is a
  cost-model/affine-key issue, not a metadata issue. Keeping the two mechanisms
  in separate patches is intentional.

## 5. Limitations

- Local prototype only. No upstream PR, comment or issue was created.
- One machine, one revision, few sizes, no hardware counters, no independent
  review.
- The option is opt-in and has no compile-time measurement.
- The guard is conservative: it can reject a profitable fusion (8 MiB case) and
  only handles explicit metadata, not implicit vectorization loss.
- The test was not executed through LLVM's lit/FileCheck harness in this build.
- A real proposal needs a broader corpus, compile-time data, negative tests,
  and a human-reviewed upstream-quality patch; none of that is claimed here.

## 6. Decision

Keep as **local evidence for a possible mechanism**, not as a finished LLVM
improvement. The next step would be to combine the metadata guard with a cheap
footprint/locality signal and evaluate both on held-out families. The shifted
affine-key extension remains a separate patch.
