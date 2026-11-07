# LLVM LoopFusion research notes

Stage 0 studies whether LLVM's initial LoopFusion profitability filter makes
better decisions than a binary exact-reuse gate. It is the first concrete
testbed of the broader research project, not an implemented stochastic cost
model.

- [Stage 0 report](../../reports/stage0_report.md) - methodology, A/B/C results,
  case studies, limitations and the Go/No-Go decision.
- [LLVM baseline](llvm_baseline.md) - pass legality/profitability, pipeline
  placement, control flags, known upstream limitations and toolchain caveat.
- [Literature and novelty](literature.md) - cache-aware fusion, vectorization
  tradeoffs, register pressure and the distinction between known effects and
  new engineering observations.
- [Research origins](../origins.md) - why random sequences and ideal-LRU models
  motivated the compiler question.
- [Research state index](../state/index.md) and [portable harness](../harness/README.md)
  - how a session resumes and records work.
- [R1-A matched validation](../../reports/r1a_report.md) - Stage 0 cases rerun on
  clang/LLVM from one revision without `ir_compat.py`.
- [R1 synthesis](../../reports/r1_report.md) - mechanisms, predictor screen,
  mathematical status and prototype patch.

## Evidence status

- **Measured:** the Stage 0 runtime, IR, assembly and remarks in `results/`.
- **Engineering hypotheses:** the proposed reuse-strength and vectorization-
  metadata signals in report Section 8. They have not been implemented or
  validated on a single-version toolchain.
- **Not claimed:** a stochastic model is integrated into LLVM, or that the
  current experiments prove a new general profitability law.

The baseline mixes clang 23.1.5 with LLVM 24.0.0git and uses
`scripts/ir_compat.py`; the next stage must rerun the key findings on a
consistent toolchain without modifying alias-scope metadata (report Section 3.4).
