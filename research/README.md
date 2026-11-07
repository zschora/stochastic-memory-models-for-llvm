# Research notes

This directory holds the research record behind the benchmarks. It is organized
by role, not by chronology:

| Area | Contents |
| --- | --- |
| [Harness](harness/README.md) | Portable roles, skills, protocol, run/claim schemas and R1 plan. |
| [State](state/index.md) | Short session index, hypothesis ledger and decisions. |
| [Runs](runs/README.md) | Experiment and documentation-only simulation records. |
| [Claims](claims/README.md) | Mathematical claim records and proof-status rules. |
| [Origins](origins.md) | How the stochastic-bridge and ideal-LRU work led to the LLVM profitability question. |
| [LoopFusion](loopfusion/README.md) | LLVM implementation notes, Stage 0 evidence and literature for the first testbed. |
| [Theory](theory/README.md) | Mathematical notes, formulas and proof-status labels. |
| [Papers](papers/README.md) | Article-length drafts, proof audits and manuscript templates. |

## Status labels

- **Measured:** obtained from the pinned toolchain with reproducible commands.
- **Engineering hypothesis:** a proposed mechanism or cost-model change, not yet
  validated on a consistent toolchain or a broad corpus.
- **Proved / working proof / numerically checked / conjecture:** used only for
  mathematical claims in `theory/` and `papers/`.

The stochastic-bridge research motivated this project. It is **not** integrated
into LLVM, and no stochastic memory cost model has been validated as an
improvement over LLVM's heuristics. Stage 0 is an empirical LLVM study, not a
proof of the broader programme.
