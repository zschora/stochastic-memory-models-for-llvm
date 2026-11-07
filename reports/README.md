# Reports

| Report | Status |
| --- | --- |
| [Stage 0: LLVM LoopFusion profitability](stage0_report.md) | Completed baseline study; Go for a narrow engineering Stage 1, No-Go for a new scientific claim from the current evidence. |
| [R1-A: matched-toolchain validation](r1a_report.md) | Completed self-reviewed campaign; central Stage 0 failures reproduced qualitatively. |
| [R1-C: corpus status](r1c_corpus.md) | Partial: 10 controlled kernels, 41 size points; no real-workload corpus. |
| [R1-F: metadata-guard prototype](r1f_patch.md) | Local prototype; removes L1/L2 metadata regression, not upstream-ready. |
| [R1 synthesis](r1_report.md) | Campaign summary, proof status, novelty assessment and next steps. |
| [R1.1 measurement audit](r1_1_measurement_audit.md) | Corrected paired-block statistics, preserved raw evidence, predictor-feature audit and readiness decision for R1.2. |
| [R1.1.1 evidence integrity](r1_1_1_evidence_integrity.md) | Baseline/patched isolation, restored SIMD evidence, memory-size errata and predictor v3. |
| [R1.2 corpus](r1_2_corpus.md) | TSVC/PolyBench discovery funnel, real-workload rarity and measured TSVC cases. |
| [R1.2 profitability](r1_2_profitability.md) | Development predictor v3 and the two-case held-out TSVC study. |
| [R1.2 review](r1_2_review.md) | Adversarial limitations and unresolved issues. |
| [R1.2 final](r1_2_final.md) | Synthesis and Go/No-Go for R1.3. |

Stage 0 is an empirical study of LLVM's initial exact-reuse profitability gate.
It compares fusion off, unrestricted fusion and the current model on a pinned
LLVM revision, with controlled kernels, IR/assembly inspection, interleaved
timing and negative results. It is **not** an implementation of a stochastic
memory cost model.

The report records the mixed clang 23.1.5 / LLVM 24 toolchain limitation and
requires the key findings to be re-verified on a consistent toolchain without
`scripts/ir_compat.py` or alias-scope metadata changes before Stage 1. The
proposed next experiment is in Section 10.

- [LoopFusion research notes](../research/loopfusion/README.md)
- [Portable research harness](../research/harness/README.md)
- [Research state index](../research/state/index.md)
- [Raw evidence](../results/)
- [Contribution and evidence conventions](../CONTRIBUTING.md)
