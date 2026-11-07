# R1-B minimal mechanism: fused loop inherits the second loop's metadata

**Status:** direct IR/remark evidence on a hand-written minimal module, not a
performance measurement.

`meta_min.ll` contains two adjacent equivalent loops over `A[i]`. Loop 1 requests
vectorization (`!llvm.loop.vectorize.enable`); loop 2 disables it
(`!llvm.loop.vectorize.disable`). Both are legal fusion candidates with an exact
read-read reuse of `A[i]`.

Commands (LLVM 24.0.0git, revision `6f4196219399a3502cea3beb2d0c8c28b2241649`):

```text
opt "-passes=default<O3>" -S meta_min.ll -o meta_min.A.ll
opt -enable-loopfusion -loop-fusion-min-reused-values=1 "-passes=default<O3>" \
    -S meta_min.ll -o meta_min.C.ll \
    -pass-remarks=loop-fusion -pass-remarks-missed=loop-fusion \
    --pass-remarks-output=remarks-C.yaml
```

Observed:

- `loop-fusion` emits `FuseCounter` for `l1.preheader` and `l2.preheader`.
- The fused backedge is `br i1 %c2, label %exit, label %l1, !llvm.loop !0`.
- `!0` refers to `!1 = !{!"llvm.loop.vectorize.disable"}`: the fused loop
  inherited loop 2's metadata.
- `loop-vectorize` emits `MissedExplicitlyDisabled` for the fused loop.

Interpretation: LoopFusion's latch rewiring makes the fused loop's
`llvm.loop` metadata come from the second candidate, so a vectorization-enable
request on the first loop is silently discarded. This is a mechanism observation
about this revision and this IR shape. It does not quantify runtime cost; that
requires the R1-A measurements and a controlled scalar/vector contrast.

This artifact is not evidence that preserving the first loop's metadata is
semantically or operationally universally correct. It only establishes the
inheritance behaviour and the missing compatibility check in this revision.
