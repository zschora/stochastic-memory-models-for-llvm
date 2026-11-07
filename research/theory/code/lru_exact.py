#!/usr/bin/env python3
"""Exact LRU miss distributions for fixed-frequency traces and DAG orders.

This is a finite-state dynamic program over remaining multiplicities and the LRU
cache contents.  It is exact for a uniformly random permutation of a fixed
multiset (each distinct label sequence equally likely).  Small cases are checked
independently by brute-force enumeration of every distinct sequence.

No hardware or compiler measurement is used here.
"""
from __future__ import annotations

import argparse
import itertools
import json
import sys
from collections import Counter
from fractions import Fraction
from functools import lru_cache
from pathlib import Path


def normalize(counts):
    counts = tuple(int(c) for c in counts)
    if any(c < 0 for c in counts):
        raise ValueError("counts must be non-negative")
    return counts


def total(counts):
    return sum(counts)


def lru_access(cache, label, capacity):
    """Return (new_cache, miss) with cache ordered LRU -> MRU."""
    cache = tuple(cache)
    if label in cache:
        return tuple(x for x in cache if x != label) + (label,), 0
    if len(cache) >= capacity:
        cache = cache[1:]
    return cache + (label,), 1


@lru_cache(maxsize=None)
def dp_distribution(counts, cache, capacity):
    """Exact distribution {misses: probability} under uniform distinct sequences."""
    counts = tuple(counts)
    cache = tuple(cache)
    remaining = sum(counts)
    if remaining == 0:
        return {0: Fraction(1)}
    result = Counter()
    for label, count in enumerate(counts):
        if count == 0:
            continue
        new_counts = list(counts)
        new_counts[label] -= 1
        new_cache, miss = lru_access(cache, label, capacity)
        sub = dp_distribution(tuple(new_counts), new_cache, capacity)
        weight = Fraction(count, remaining)
        for misses, probability in sub.items():
            result[misses + miss] += weight * probability
    return dict(result)


def exact_expectation(counts, capacity):
    counts = normalize(counts)
    dist = dp_distribution(counts, (), capacity)
    return sum(Fraction(m) * p for m, p in dist.items())


def enumerate_distribution(counts, capacity):
    """Brute force over distinct label sequences; independent of the DP."""
    counts = normalize(counts)
    labels = []
    for label, count in enumerate(counts):
        labels.extend([label] * count)
    seen = set()
    dist = Counter()
    for permutation in set(itertools.permutations(labels)):
        cache = ()
        misses = 0
        for label in permutation:
            cache, miss = lru_access(cache, label, capacity)
            misses += miss
        dist[misses] += 1
        seen.add(permutation)
    n = len(seen)
    return {misses: Fraction(count, n) for misses, count in dist.items()}, n


def capacity_one_formula(counts):
    """E[misses] for capacity 1 = expected number of runs in a multiset permutation."""
    counts = normalize(counts)
    n = total(counts)
    if n == 0:
        return Fraction(0)
    return Fraction(1) + Fraction(n) - Fraction(sum(c * c for c in counts), n)


def unique_count_vectors(n_labels, n_items):
    """All non-negative count vectors with exactly n_items."""
    if n_labels == 1:
        yield (n_items,)
        return
    for first in range(n_items + 1):
        for rest in unique_count_vectors(n_labels - 1, n_items - first):
            yield (first,) + rest


def linear_extensions(n, edges):
    """Yield all permutations of 0..n-1 satisfying the precedence edges."""
    edges = list(edges)
    for permutation in itertools.permutations(range(n)):
        position = {item: i for i, item in enumerate(permutation)}
        if all(position[a] < position[b] for a, b in edges):
            yield permutation


def lru_misses(sequence, capacity):
    cache = ()
    misses = 0
    for label in sequence:
        cache, miss = lru_access(cache, label, capacity)
        misses += miss
    return misses


def poset_stats(labels, edges, capacity):
    values = [lru_misses([labels[i] for i in order], capacity)
              for order in linear_extensions(len(labels), edges)]
    if not values:
        return None
    return {
        "orders": len(values),
        "min": min(values),
        "max": max(values),
        "mean": str(Fraction(sum(values), len(values))),
        "histogram": {str(k): v for k, v in sorted(Counter(values).items())},
    }


def run_checks():
    checks = []
    failures = []
    # Capacity-one formula and DP vs enumeration for all small frequency vectors.
    for n_labels in (1, 2, 3):
        for counts in unique_count_vectors(n_labels, 7):
            if total(counts) == 0:
                continue
            for capacity in (1, 2, 3):
                dp_mean = exact_expectation(counts, capacity)
                brute, n_sequences = enumerate_distribution(counts, capacity)
                brute_mean = sum(Fraction(m) * p for m, p in brute.items())
                dp_dist = dp_distribution(normalize(counts), (), capacity)
                ok = (dp_mean == brute_mean and dp_dist == brute)
                if not ok:
                    failures.append({
                        "counts": list(counts), "capacity": capacity,
                        "dp_mean": str(dp_mean), "brute_mean": str(brute_mean),
                    })
            formula = capacity_one_formula(counts)
            if formula != exact_expectation(counts, 1):
                failures.append({"counts": list(counts), "capacity": 1,
                                 "formula": str(formula),
                                 "dp": str(exact_expectation(counts, 1))})
            checks.append({
                "counts": list(counts),
                "capacity_one_formula": str(formula),
                "capacity_one_dp": str(exact_expectation(counts, 1)),
            })

    # A few explicit DAG examples, including a diamond and two chains.
    dag_cases = [
        ("chain_abab", [0, 1, 0, 1], [(0, 1), (1, 2), (2, 3)]),
        ("two_chains", [0, 0, 1, 1], [(0, 2), (1, 3)]),
        ("diamond", [0, 1, 0, 1], [(0, 1), (0, 2), (1, 3), (2, 3)]),
        ("swap_pair", [0, 1, 1, 0], []),
    ]
    dag_results = {}
    for name, labels, edges in dag_cases:
        stats = poset_stats(labels, edges, 1)
        dag_results[name] = stats

    return {
        "status": "ok" if not failures else "failed",
        "checked_vectors": len(checks),
        "failures": failures,
        "capacity_one_examples": checks[:20],
        "dag_examples": dag_results,
        "notes": [
            "Each distinct label sequence is equally likely; labels of equal "
            "counts are indistinguishable.",
            "The DP state is (remaining counts, LRU->MRU cache); it is exact.",
            "DAG statistics enumerate every linear extension for the small cases.",
            "This is an ideal-LRU model, not a hardware or compiler measurement.",
        ],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json", action="store_true")
    parser.add_argument("--out", type=Path, default=None)
    args = parser.parse_args()
    result = run_checks()
    text = json.dumps(result, indent=2)
    if args.out:
        args.out.parent.mkdir(parents=True, exist_ok=True)
        args.out.write_text(text + "\n", encoding="utf-8", newline="\n")
    if args.json or not args.out:
        print(text)
    return 0 if result["status"] == "ok" else 1


if __name__ == "__main__":
    sys.exit(main())
