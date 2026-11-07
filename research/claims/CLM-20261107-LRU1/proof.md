# Proof: capacity-one expected LRU misses

Model: uniformly random distinct sequence of a multiset with counts
`n_1,...,n_m`, `N = sum n_i`; ideal LRU capacity one; initial cache empty;
`M` counts compulsory misses.

Let `X_j` be the label at position `j`. The first access misses. For `j >= 1`,
a miss occurs exactly when `X_j != X_{j+1}`. Hence

`M = 1 + sum_{j=1}^{N-1} I_j`, where `I_j = 1{X_j != X_{j+1}}`.

By linearity of expectation,

`E[M] = 1 + (N-1) P(X_1 != X_2)`.

For two positions sampled without replacement from the multiset,

`P(X_1 = X_2) = sum_i n_i (n_i - 1) / (N (N - 1)) = q`.

Therefore

`E[M] = 1 + (N-1)(1-q)`
`     = 1 + (N-1) - (sum_i n_i (n_i-1))/N`
`     = 1 + N - (sum_i n_i^2)/N`.

Boundary checks:

- one label, `n_1 = N`: `E[M] = 1 + N - N = 1` (always a hit after the first).
- all labels distinct, `n_i = 1`, `sum n_i^2 = N`: `E[M] = 1 + N - 1 = N`
  (every access misses).
- `N = 0` is excluded from the model; the implementation returns 0.

This is the expected number of runs of a random word with fixed letter counts,
a classical runs statistic. No novelty is claimed. The derivation has not yet
been independently reviewed and the classical primary reference still needs to
be recorded.
