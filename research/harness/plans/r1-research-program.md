# R1 - From LLVM LoopFusion Failures to Predictive Memory-Cost Models

**Status:** planned; **not started**.
**Purpose:** execute the next research programme after the Stage 0 harness and
baseline. This document is a plan, not evidence.
**Owner:** Research Lead, with on-demand LLVM Engineer, Performance Scientist,
Applied Mathematician, Critical Reviewer and Literature Researcher.

## 1. Starting point and non-goals

Stage 0 compared fusion off, unrestricted fusion and LLVM's exact-reuse gate on
a mixed clang 23.1.5 / LLVM 24.0.0git toolchain with `scripts/ir_compat.py`.
It produced reproducible engineering observations, but is **not independently
validated**. Its main claims are recorded as `analyzed` or `inconclusive` in
`research/state/hypotheses.json`.

R1 does not assume that the Stage 0 effects will survive. It does not promise a
new cost model, a new theorem or an upstream LLVM feature. A negative or
inconclusive result is acceptable and must be recorded.

No stochastic memory model is integrated into LLVM. Mathematical work and
compiler measurements remain separate evidence types.

## 2. Workstreams

| ID | Workstream | Primary question | Exit artifact |
| --- | --- | --- | --- |
| R1-A | Validate Stage 0 | Which Stage 0 findings reproduce on matched tools without IR metadata rewriting? | validation report + run records |
| R1-B | Failure mechanisms | What exactly causes each confirmed false positive/negative? | minimal reproductions + mechanism notes |
| R1-C | Broader corpus | How often do the failure classes occur in selected real benchmarks? | classified corpus + evidence |
| R1-D | Predict profitability | Can simple static signals predict outcomes on held-out families? | offline predictor comparison |
| R1-E | Mathematical models | Do exact/approximate memory-order models add predictive value? | audited claims or negative outcome |
| R1-F | Prototype patches | Which isolated fixes survive tests and broad comparisons? | patch series + test plan |
| R1-G | Review and outcomes | What is reproducible, novel and worth submitting? | reproducibility and Go/No-Go report |

## 3. R1-A - Validate Stage 0

**Hypothesis:** `H-R1-001` (key Stage 0 findings survive a matched toolchain).

### Method

1. Pin one LLVM revision and build clang, opt and llc from it. Record CMake args,
   target, assertions and version output. Prefer a Release build for timing and
   a second assertions build only for IR legality tests.
2. Regenerate all benchmark IR with that clang. Do **not** use
   `scripts/ir_compat.py`; do **not** strip alias-scope metadata. If a
   compatibility problem remains, record it as a blocker rather than hiding it.
3. Reproduce the Stage 0 cases. Mandatory cases exercise the retained Stage 0
   claims; optional extensions discriminate alternative explanations:

   | Case | Role | Status |
   | --- | --- | --- |
   | `read_read` | aligned exact reuse, size sweep L1/L2/LLC/DRAM | mandatory |
   | `read_read_offset` | cache-line-offset negative control | mandatory |
   | `shifted_reuse` (`A[i]` vs `A[i+1]`) | exact-affine false negative | mandatory |
   | shifted-offset variants (`k = 1, 2, 4, 8` elements) | separate alignment from reuse strength | optional extension |
   | `simd_metadata` | wide-vector loop + scalar loop metadata conflict | mandatory |
   | `simd_metadata_scalar` | both loops scalar; isolates fusion overhead from SIMD loss | mandatory |
   | `simd_reduction` | vectorizable loop + latency-bound reduction; tests a blanket "SIMD differs -> reject" rule | mandatory |
   | `producer_consumer` | canonical clang rotated loops; DA/latch legality | mandatory |
   | `producer_consumer_split` | hand-written separate-latch IR; same computation | mandatory |
   | `known_vec` | RFC `uint64_t -> uint8_t` replica and hot-loop control | mandatory |
   | exact test-suite VW16 `uint64_t -> uint8_t` benchmark | upstream benchmark reproduction | mandatory |
   | A/A identical-binary control | noise floor and layout sensitivity | mandatory |
   | hardware counters | cache/memory attribution where available | optional, recorded if unavailable |

   A blanket rule "reject fusion whenever the loops' vectorizability differs" is
   not supported unless `simd_reduction` also regresses. A changed offset or
   alignment must not be interpreted as a pure cache-capacity effect. Canonical
   C++ and separate-latch IR must be compared as a matched pair.

4. For each case, verify: transform decisions via remarks/IR, correctness,
   assembly differences, A/B/C runtime with the Stage 0 protocol, an A/A
   identical-binary control, and the baseline caveats that remain.
5. Classify each finding as `reproduced`, `contradicted`, `inconclusive` or
   `not-testable` and update only the corresponding hypothesis status after
   review.

### Exit criteria

- Toolchain is matched; `doctor.py --experiment --json` exits 0.
- Every mandatory case has a validated run record with raw data or an explicit
  `not-testable` reason; optional cases are marked as such.
- A reviewer has checked the reproduction table.
- No Stage 0 raw result was edited.

### Stop conditions

Stop and report if the matched toolchain cannot be built, if the benchmark IR
cannot be regenerated without metadata rewriting, or if the Stage 0 cases cannot
be mapped to the new build.

## 4. R1-B - Failure mechanisms

**Hypotheses:** `H-LF-001`, `H-LF-002`, `H-LF-004`, plus a post-fusion CSE
question.

For each confirmed failure, require a minimal pair that differs only in the
suspected mechanism:

1. **Vectorization metadata inheritance.** Compare loop metadata, fused backedge,
   vectorizer remarks and assembly. A scalar control must separate metadata loss
   from fused-body overhead.
2. **Shifted reuse.** Establish legality and correctness independently of the
   profitability filter; compare exact-offset variants and bounds.
3. **DependenceAnalysis and canonical loops.** Reduce to a canonical clang loop
   and a separate-latch IR; explain the DA direction/fused-level mapping.
4. **Post-fusion CSE.** Check whether fusion exposes redundant loads and whether
   a CSE/GVN immediately after fusion removes them before vectorization. Keep
   this separate from the profitability gate.
5. **Intermediate-size slowdown.** Investigate the unexplained scalar-fusion
   cost with code layout, unroll, stream/conflict and scheduling controls. If no
   mechanism is established, record an open question, not a cache story.

### Exit criteria

Each confirmed mechanism has a minimal reproduction, a controlled alternative
ruled out, IR/assembly evidence and a reviewer note. Unresolved mechanisms are
listed with the next discriminating test.

## 5. R1-C - Broader benchmark corpus

Select a manageable, reproducible subset from:

- llvm-test-suite `MicroBenchmarks/LoopVectorization`;
- TSVC `LoopRestructuring` and `Packing`;
- selected PolyBench kernels;
- small real C++ numerical kernels with explicit ownership/aliasing.

For each candidate record: source revision, size/footprint, legality, actual
fusion decision, vectorization decision, runtime outcome and confidence. Retain
cases where fusion is illegal, legal-but-rejected and legal-and-performed.
Classify both false positives and missed opportunities.

**Exit criteria:** a corpus with raw evidence and a table of outcome classes; no
claim that the subset represents all C++ code.

## 6. R1-D - Predict profitability

Compare, offline, on a fixed protocol and with entire benchmark families held
out:

- fusion disabled;
- unrestricted legal fusion;
- current LLVM exact-reuse gate;
- cache-footprint heuristic;
- vectorization-metadata/width compatibility heuristic;
- a simple combined rule.

Metrics: false positives, missed opportunities, runtime-weighted cost,
compile-time overhead, code-size change and worst-case regression. Prefer a
small interpretable rule over a learned model; if a learned model is tested,
report cross-family generalization, not in-sample fit.

**Exit criteria:** a held-out comparison with uncertainty and a Go/No-Go for
each rule. A rule that only fits the Stage 0 kernels is archived as negative.

## 7. R1-E - Mathematical models

Possible directions:

- exact distributions for fixed-frequency random sequences and leader changes;
- reuse-distance distributions under uniform multiset permutations;
- finite-state LRU formulations for small capacities;
- constrained orderings / DAG schedules;
- uncertainty over input-dependent access patterns;
- robust bounds on transformation cost.

Require exact assumptions, exhaustive small-case checks, counterexamples and
prior-art review. Test whether a model predicts measured or static outcomes
better than simple features. A model with no incremental value is a documented
negative result.

**Exit criteria:** each claim has a proof status and audit; any claimed predictive
value has a held-out test and a clear boundary between model and hardware.

## 8. R1-F - Isolated prototype patches

Only after R1-A/B/C produce stronger evidence. One mechanism per patch:

- legality fixes separate from profitability;
- vectorization-metadata handling separate from cache heuristics;
- shifted-RAR extension separate from post-fusion CSE;
- targeted regression tests and correctness review;
- full test-suite/TSMC subset comparison and compile-time measurement;
- no unexplained major regression.

Local patches are allowed. Upstream submission requires explicit human approval,
human review, disclosure and compliance with the LLVM AI policy.

## 9. R1-G - Independent review and outcomes

Produce:

- a reproducibility report (matched tools, commands, artifacts);
- a cross-benchmark performance analysis with uncertainty;
- an audited mathematical-claims collection;
- a novelty/prior-art review;
- patch recommendations;
- a Go/No-Go decision for each direction.

Reviewers receive claim statements and evidence, not the author's full
transcript. Self-review is labelled as such.

## 10. Decision gates

| Gate | Entrance | Required evidence | Exit / stop |
| --- | --- | --- | --- |
| G0 Infrastructure | Harness committed | doctor/docs/tests pass | proceed to R1-A |
| G1 Toolchain | R1-A | matched tools, regenerated IR, five cases | proceed to mechanisms or stop if not reproducible |
| G2 Mechanism | R1-B | minimal repro + controlled cause | proceed to corpus; park unresolved |
| G3 Corpus | R1-C | classified cases + raw data | proceed to prediction |
| G4 Prediction | R1-D | held-out rule comparison | proceed to patch only if a rule generalizes |
| G5 Patch | R1-F | isolated patch, tests, broad comparison | human approval or archive |
| G6 Outcome | R1-G | reproducibility + independent review | publish / iterate / stop |

## 11. Resource discipline and stopping rules

- Prefer existing tools and small matrices before full-suite builds.
- Do not rebuild LLVM for documentation-only work.
- Do not start a campaign without a hypothesis, run ID and correctness oracle.
- Stop a direction if the effect is within noise after an adequate A/A control,
  if the mechanism needs unavailable counters and has no discriminating test,
  or if the result is too specific to one kernel to support a general rule.
- Preserve negative and inconclusive results.

## 12. Current next action

Create the R1-A experiment record with `new_run.py`, build the matched toolchain,
and run the five validation cases. Do not start R1-B until G1 is reviewed.

Links: [state index](../../state/index.md), [hypotheses](../../state/hypotheses.json),
[harness](../README.md), [protocol](../protocol.md), [Stage 0 report](../../../reports/stage0_report.md).
