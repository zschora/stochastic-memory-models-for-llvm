# Leader changes in balanced random words

**Status:** mathematical context and an exact pathwise identity. Other asymptotic claims should be imported only with their proof and verification status.

## Model

Let `m >= 2` labels each appear exactly `n` times in a uniformly random word of length `mn`. Let $C_i(t)$ be the count of label $i$ in the first $t$ letters. A unique leader is the label with strictly greatest count. When two or more labels share the maximum, remember the previous unique leader. Let $L^Q_{m,n}$ count changes of that remembered leader, excluding its initial appearance.

Let $W_h$ be the first label whose count reaches $h$, for $h=1,\ldots,n$.

## Exact identity

$$
L^Q_{m,n}=\sum_{h=1}^{n-1}\mathbf{1}\{W_{h+1}\ne W_h\}.
$$

Every new unique leader must be the first to reach the next previously unreached count level. Consecutive wins by the same label therefore produce no leadership change. The tie convention is essential; alternate definitions of a change lead to different statistics.

## Stochastic-bridge connection

For $m=2$, $C_1(t)-C_2(t)$ takes $n$ steps of `+1` and $n$ steps of `-1` and ends at zero: a conditioned simple random walk. The signs of its successive nonzero excursions encode leader changes. For more labels, the upper order statistics of counting paths matter, rather than only complete ties.

The larger program studies exact finite formulas, Gaussian extrema and asymptotics when `m` or `n` grow. Some second-order expansions and martingale CLTs remain subject to independent proof review and prior-art checking; these are **not** established LLVM algorithms.

See [origins](../origins.md).
