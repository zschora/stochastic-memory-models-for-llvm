; ModuleID = 'results\r1\EXP-20261107-R1B-min\meta_min.ll'
source_filename = "results\\r1\\EXP-20261107-R1B-min\\meta_min.ll"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @meta_min(ptr noalias nofree readonly captures(none) %A, ptr noalias nofree writeonly captures(none) %B, ptr noalias nofree writeonly captures(none) %C, i64 %n) local_unnamed_addr #0 {
entry:
  %zero = icmp eq i64 %n, 0
  br i1 %zero, label %exit, label %l1

l1:                                               ; preds = %entry, %l1
  %i = phi i64 [ %i.next, %l1 ], [ 0, %entry ]
  %j = phi i64 [ %j.next, %l1 ], [ 0, %entry ]
  %pa = getelementptr inbounds nuw [8 x i8], ptr %A, i64 %i
  %va = load double, ptr %pa, align 8
  %pb = getelementptr inbounds nuw [8 x i8], ptr %B, i64 %i
  %vb = fmul double %va, 2.000000e+00
  store double %vb, ptr %pb, align 8
  %i.next = add nuw nsw i64 %i, 1
  %pc = getelementptr inbounds nuw [8 x i8], ptr %A, i64 %j
  %vc = load double, ptr %pc, align 8
  %pd = getelementptr inbounds nuw [8 x i8], ptr %C, i64 %j
  %vd = fmul double %vc, 3.000000e+00
  store double %vd, ptr %pd, align 8
  %j.next = add nuw nsw i64 %j, 1
  %c2 = icmp eq i64 %j.next, %n
  br i1 %c2, label %exit, label %l1, !llvm.loop !0

exit:                                             ; preds = %l1, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.vectorize.disable"}
