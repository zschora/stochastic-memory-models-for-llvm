# Reports

| Report | Status |
| --- | --- |
| [Stage 0: LLVM LoopFusion profitability](stage0_report.md) | Completed baseline study; Go for a narrow engineering Stage 1, No-Go for a new scientific claim from the current evidence. |

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
- [Raw evidence](../results/)
- [Contribution and evidence conventions](../CONTRIBUTING.md)
