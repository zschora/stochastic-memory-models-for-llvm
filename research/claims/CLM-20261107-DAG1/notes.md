# DAG-constrained LRU examples

`checks.json` contains exact minimum, maximum, mean and histogram of LRU misses
over **all** linear extensions of four small labeled posets:

- `chain_abab`: a forced order `0,1,0,1`; four misses.
- `two_chains`: labels `0,0,1,1` with the two `0`s and two `1`s internally
  ordered; six extensions, misses 2 or 4.
- `diamond`: a four-element diamond; two extensions, misses 2 or 4.
- `swap_pair`: no precedence, 24 permutations, misses 2, 3 or 4.

The unconstrained `swap_pair` has mean 3; `two_chains` has mean 8/3 and a
different distribution. A poset therefore changes the achievable statistics, but
the example is too small to support a general claim about realistic schedules.
Uniform random linear extension is the stated distribution; other distributions
over legal schedules would give different answers.
