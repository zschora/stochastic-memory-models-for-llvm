# Random orderings and an ideal LRU cache

**Status:** elementary exact capacity-one formula, with proof; other models require separate derivations.

## Model

There are $k$ distinct cache-line identifiers with positive frequencies $n_1,\ldots,n_k$ and $N=\sum_i n_i$ total references. Choose uniformly among all distinct permutations of this multiset. The cache starts empty and is fully associative with capacity $C$ and exact LRU eviction.

At capacity $C=1$, the first reference is a miss, and every subsequent reference is a hit exactly when its identifier equals the preceding identifier.

## Exact expectation for capacity one

For $N\ge 1$,

$$
\mathbb E[\text{misses}_{C=1}]
=N-\frac{1}{N}\sum_{i=1}^k n_i(n_i-1).
$$

**Proof.** At any two consecutive positions, the probability that both identifiers are $i$ is $n_i(n_i-1)/(N(N-1))$ (for $N>1$). Sum over the $N-1$ adjacent pairs and all $i$ to obtain expected hits. Subtract from $N$ references. For $N=1$, there is exactly one compulsory miss, also consistent with the formula.

**Example.** For two occurrences each of `A` and `B`, `A A B B` has 2 misses, `A B A B` has 4, and the uniform random-permutation mean is 3.

For a capacity-$C$ fully associative LRU cache, a repeated access is a hit precisely when the number of **distinct other lines** referenced since its previous occurrence (reuse distance) is less than $C$.

## Scope

This is not a CPU timing model: cache sets, hierarchy, prefetchers, vectorization, register pressure and dependence-constrained execution are not represented. The potential use in LLVM is a research hypothesis, not a demonstrated benefit. See [origins](../origins.md) and the [LLVM report](../../reports/stage0_report.md).
