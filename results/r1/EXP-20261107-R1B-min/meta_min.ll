; Minimal two-adjacent-loop kernel for LoopFusion metadata inheritance.
; Loop 1 requests vectorization; loop 2 disables it. Both read A[i] exactly.
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

define void @meta_min(ptr noalias %A, ptr noalias %B, ptr noalias %C, i64 %n) {
entry:
  %zero = icmp eq i64 %n, 0
  br i1 %zero, label %exit, label %l1

l1:
  %i = phi i64 [ 0, %entry ], [ %i.next, %l1.latch ]
  %pa = getelementptr inbounds double, ptr %A, i64 %i
  %va = load double, ptr %pa, align 8
  %pb = getelementptr inbounds double, ptr %B, i64 %i
  %vb = fmul double %va, 2.000000e+00
  store double %vb, ptr %pb, align 8
  br label %l1.latch

l1.latch:
  %i.next = add nuw nsw i64 %i, 1
  %c1 = icmp eq i64 %i.next, %n
  br i1 %c1, label %l2.preheader, label %l1, !llvm.loop !1

l2.preheader:
  br label %l2

l2:
  %j = phi i64 [ 0, %l2.preheader ], [ %j.next, %l2.latch ]
  %pc = getelementptr inbounds double, ptr %A, i64 %j
  %vc = load double, ptr %pc, align 8
  %pd = getelementptr inbounds double, ptr %C, i64 %j
  %vd = fmul double %vc, 3.000000e+00
  store double %vd, ptr %pd, align 8
  br label %l2.latch

l2.latch:
  %j.next = add nuw nsw i64 %j, 1
  %c2 = icmp eq i64 %j.next, %n
  br i1 %c2, label %exit, label %l2, !llvm.loop !2

exit:
  ret void
}

!1 = distinct !{!1, !3}
!2 = distinct !{!2, !4}
!3 = !{!"llvm.loop.vectorize.enable"}
!4 = !{!"llvm.loop.vectorize.disable"}
