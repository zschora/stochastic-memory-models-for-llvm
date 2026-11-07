# Exact LRU misses for fixed-frequency traces

**Status:** finite-state exact model and exhaustive small-case verification.
This is an ideal-LRU mathematical model, not a hardware measurement and not a
validated LLVM cost model. No novelty is claimed.

## Model

Let a trace be a uniformly random permutation of a multiset with `m` labels and
fixed counts `n_1, ..., n_m`, `N = sum n_i`. Equal labels are indistinguishable,
so every distinct label sequence has probability `1 / (N! / prod n_i!)`.
The cache is ideal LRU with capacity `k >= 1`, initially empty. A compulsory
first access to a label misses; a hit refreshes recency. `M` is the number of
misses.

This is the "fixed frequencies, random order" model that motivated the project.
It says nothing about an actual program order, prefetching, associativity,
replacement in hardware, or a compiler transformation.

## Capacity one: expected misses

For `k = 1`, every miss is a change of label, and the first access is a miss:

`M = 1 + sum_{j=1}^{N-1} 1{X_j != X_{j+1}}`.

For a uniformly random adjacent pair without replacement,

`P(X_j = X_{j+1}) = sum_i n_i (n_i - 1) / (N (N - 1)) = q`.

Therefore

`E[M] = 1 + (N - 1)(1 - q) = 1 + N - (sum_i n_i^2) / N`.

Equivalently, `E[M] = 1 + N - N * sum_i p_i^2` with `p_i = n_i / N`. This is the
expected number of runs in a random word with fixed letter counts; runs are a
classical statistic. The derivation is included for self-containedness, and no
novelty is claimed. The `M = 1` convention counts the initial compulsory miss,
so it equals the number of runs, not the number of changes.

The variance is **not** obtained by treating adjacent-change indicators as
independent: non-adjacent indicators have nonzero covariance. No closed-form
variance is claimed here; the distribution is computed exactly by the DP below.

## Exact distribution for general capacity

Let `c` be the remaining counts and `L` the cache state ordered LRU to MRU. The
state is finite. Condition on the next label:

`P(M = t | c, L) = sum_{i: c_i > 0} (c_i / |c|) * P(M = t - miss(i,L) | c - e_i, update(L,i))`.

The base case `|c| = 0` has `P(M=0)=1`. This is an exact recurrence, not a
simulation. It can be evaluated with exact rational arithmetic. The number of
states is finite but grows with the product of counts and the number of cache
states; it is practical for small instances and for deriving checks, not for
large traces.

## Partial-order constrained orders

For a labeled poset on `N` positions, enumerate all linear extensions and
evaluate LRU misses for each extension. The minimum, maximum, mean and histogram
over extensions are exact for the enumerated instance. A partial order can
change the mean and shrink or shift the achievable range relative to all
multiset permutations. Uniform random topological order is one distribution
choice; it is not implied by the poset and must be stated explicitly. Computing
these statistics for general posets is expensive; no efficient general
algorithm is claimed.

## Verification

`research/theory/code/lru_exact.py` implements the DP and a separately written
brute-force enumerator. `research/claims/CLM-20261107-LRUK/checks.json` records
the comparison for all count vectors with at most 3 labels and 7 accesses, and
capacities 1-3. The capacity-one formula matches the DP on every checked vector.
The DAG examples enumerate every linear extension.

## What this does not establish

- It does not predict LLVM runtime.
- It does not model hardware caches, associativity, prefetching, or bandwidth.
- It does not show that fixed-frequency randomness describes real access traces.
- It does not provide a compiler decision rule. Any such connection is a separate
  engineering hypothesis requiring measurement and held-out evaluation.
