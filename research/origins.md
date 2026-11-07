# Research origins: from random sequences to LLVM

This project's name reflects the *history of the research question*, not an assertion that LLVM already implements a stochastic memory cost model.

## 1. Random sequences and leader changes

The starting point was a random word containing a fixed number of copies of each label, initially votes for two candidates. Although the final counts are prescribed, the order varies. The question was: **how often does the identity of the unique leader change during the count?** Ties preserve the previous unique leader rather than counting as a switch.

For two labels, the difference in cumulative counts is a simple random-walk bridge. With more labels, the problem concerns the top-ranked counting trajectories. This led to exact counting identities, level-winner representations, martingale methods and questions about stochastic bridges, Gaussian maxima, and local times.

See [leader changes and bridges](theory/leader-changes.md).

## 2. Why system costs required another question

The project explored stochastic balancing and distributed monitoring. A key negative finding was that a changing largest counter is **not necessarily** an actual migration, configuration change, cache miss or performance cost. A useful systems application must optimize an operational quantity rather than only an attractive mathematical statistic.

## 3. Random orderings and memory locality

We therefore asked whether rearranging the same multiset of memory accesses could change cache behavior. Yes: even when each cache-line identifier appears equally often, different orders can produce very different LRU misses. We studied exact finite formulas for uniform multiset permutations and ideal LRU cache models.

For example, with a one-line LRU cache, `A A B B` has 2 misses, while `A B A B` has 4. Both have identical frequencies. See [random access orderings and LRU](theory/random-orderings-lru.md).

These formulas are useful as theoretical baselines and test oracles, but they are **not** accurate hardware cache simulations. They omit cache sets, multilevel hierarchies, prefetchers, memory-level parallelism and many other effects.

## 4. From ordering to compiler profitability

Compilers may reorder or merge computations only when dependencies and program semantics are preserved. Legal transformations can improve memory reuse yet worsen vectorization, register allocation, code size or scheduling.

This led from random access sequences to DAG-constrained schedules and a practical question: **when does a legal compiler transformation actually make a program faster?** LLVM LoopFusion is our first concrete experimental testbed. The [Stage 0 report](../reports/stage0_report.md) compares fusion disabled, unrestricted fusion and the current LLVM profitability filter, including measured performance, IR and assembly.

## Boundaries and current status

- **Mathematics:** random sequences, conditioned bridges and exact ideal-LRU formulas motivate the problem.
- **Engineering:** the current repository tests LLVM LoopFusion behavior and profitability using reproducible benchmarks.
- **Not claimed:** a stochastic model has *not* yet been integrated into LLVM or validated as an improvement over existing heuristics.

Explore the [LLVM LoopFusion notes](loopfusion/README.md), [mathematical notes](theory/README.md), [future manuscripts](papers/README.md), and [contribution conventions](../CONTRIBUTING.md). Each new result should explicitly distinguish proofs, numerical evidence, hypotheses and prior art.
