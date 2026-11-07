# Predictor feature categories

R1.1 separates features by **when they are available**, not by whether they
correlate with the outcome.

| Category | Available when | Examples | May be a decision input? |
| --- | --- | --- | --- |
| `static` | Before the LoopFusion profitability decision | explicit `llvm.loop.vectorize.*` metadata, loop count, affine reuse kind, element size, constant trip-count facts | Yes, if extracted without post-treatment information |
| `scenario` | From the benchmark/runtime context | concrete `n`, footprint bytes, actual L3 size, cache regime | Only in a clearly labelled scenario-aware comparison; not as a general compile-time feature |
| `baseline` | The current compiler's own decision | current exact-reuse gate result | Yes as a baseline policy input; it is available at decision time |
| `diagnostic` | After optimization or measurement | post-fusion YMM uses, final assembly, measured B/A runtime, hardware counters | **Never** for a deployable predictor; scoring only |

The JSON schema is
[`../schemas/predictor-feature.schema.json`](../schemas/predictor-feature.schema.json).
The extractor is [`../../../scripts/r1_features.py`](../../../scripts/r1_features.py).

## What the extractor does

- Reads the benchmark's `*.linked.ll` when present, otherwise `*.frontend.ll`.
- Runs a small scalar pre-fusion pipeline (`mem2reg`, loop-simplify, LCSSA,
  loop-rotate) and marks the exact pipeline stage. It does not run LoopFusion,
  vectorization, code generation or measurement.
- Selects a kernel function from IR: at least two loops, loads, no non-intrinsic
  calls. `known_vec` modes are selected by the mode name.
- Extracts explicit vectorization metadata, a metadata-conflict flag, element
  size, a conservative exact/shifted/unknown reuse label, and a trip-count hint.
- Marks unsupported facts as `unknown`; it never invents them.

## Limitations

- The source IR is earlier than the exact LoopFusion decision point. The
  metadata hints are pre-treatment, but an earlier pass could still change them.
- The affine-reuse parser handles only simple GEP/phi/add-constant patterns.
- `scenario` values come from the benchmark driver and are not generally
  available to a compiler.
- There is no held-out family evaluation in R1.1.
