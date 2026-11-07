target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Hand-written producer-consumer kernel with a separate latch block.
; Canonical clang -O0/O3 rotated loops put the body in the header/latch block;
; DependenceAnalysis then fails to produce the "assuming 1 loop level fused"
; direction and LoopFusion rejects the pair.  This shape lets us measure what
; the pass would do when the dependence is recognized.
define void @pc_split_kernel(ptr noalias %A, ptr noalias %B,
                             ptr noalias %T, i64 %n) {
entry:
  %.not = icmp eq i64 %n, 0
  br i1 %.not, label %exit, label %loop1

loop1:
  %i1 = phi i64 [ 0, %entry ], [ %i1.next, %loop1.latch ]
  %a1 = getelementptr inbounds double, ptr %A, i64 %i1
  %v1 = load double, ptr %a1, align 8
  %m1 = fmul double %v1, 1.500000e+00
  %s1 = fadd double %m1, 2.000000e+00
  %t1 = getelementptr inbounds double, ptr %T, i64 %i1
  store double %s1, ptr %t1, align 8
  br label %loop1.latch

loop1.latch:
  %i1.next = add nuw nsw i64 %i1, 1
  %c1 = icmp eq i64 %i1.next, %n
  br i1 %c1, label %loop2.preheader, label %loop1

loop2.preheader:
  br label %loop2

loop2:
  %i2 = phi i64 [ 0, %loop2.preheader ], [ %i2.next, %loop2.latch ]
  %t2 = getelementptr inbounds double, ptr %T, i64 %i2
  %v2 = load double, ptr %t2, align 8
  %m2 = fmul double %v2, 5.000000e-01
  %s2 = fadd double %m2, -1.000000e+00
  %b2 = getelementptr inbounds double, ptr %B, i64 %i2
  store double %s2, ptr %b2, align 8
  br label %loop2.latch

loop2.latch:
  %i2.next = add nuw nsw i64 %i2, 1
  %c2 = icmp eq i64 %i2.next, %n
  br i1 %c2, label %exit, label %loop2

exit:
  ret void
}
