; ModuleID = 'results\r1\EXP-20261107-R1B-min\meta_min.ll'
source_filename = "results\\r1\\EXP-20261107-R1B-min\\meta_min.ll"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @meta_min(ptr noalias nofree readonly captures(none) %A, ptr noalias nofree writeonly captures(none) %B, ptr noalias nofree writeonly captures(none) %C, i64 %n) local_unnamed_addr #0 {
entry:
  %zero = icmp eq i64 %n, 0
  br i1 %zero, label %exit, label %l1.preheader

l1.preheader:                                     ; preds = %entry
  %min.iters.check = icmp ult i64 %n, 4
  br i1 %min.iters.check, label %l1.preheader2, label %vector.ph

vector.ph:                                        ; preds = %l1.preheader
  %n.vec = and i64 %n, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds nuw [8 x i8], ptr %A, i64 %index
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load = load <2 x double>, ptr %0, align 8
  %wide.load1 = load <2 x double>, ptr %1, align 8
  %2 = getelementptr inbounds nuw [8 x i8], ptr %B, i64 %index
  %3 = fmul <2 x double> %wide.load, splat (double 2.000000e+00)
  %4 = fmul <2 x double> %wide.load1, splat (double 2.000000e+00)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> %3, ptr %2, align 8
  store <2 x double> %4, ptr %5, align 8
  %index.next = add nuw i64 %index, 4
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !0

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n, %n.vec
  br i1 %cmp.n, label %l2.preheader, label %l1.preheader2

l1.preheader2:                                    ; preds = %l1.preheader, %middle.block
  %i.ph = phi i64 [ 0, %l1.preheader ], [ %n.vec, %middle.block ]
  br label %l1

l1:                                               ; preds = %l1.preheader2, %l1
  %i = phi i64 [ %i.next, %l1 ], [ %i.ph, %l1.preheader2 ]
  %pa = getelementptr inbounds nuw [8 x i8], ptr %A, i64 %i
  %va = load double, ptr %pa, align 8
  %pb = getelementptr inbounds nuw [8 x i8], ptr %B, i64 %i
  %vb = fmul double %va, 2.000000e+00
  store double %vb, ptr %pb, align 8
  %i.next = add nuw nsw i64 %i, 1
  %c1 = icmp eq i64 %i.next, %n
  br i1 %c1, label %l2.preheader, label %l1, !llvm.loop !3

l2.preheader:                                     ; preds = %l1, %middle.block
  br label %l2

l2:                                               ; preds = %l2.preheader, %l2
  %j = phi i64 [ %j.next, %l2 ], [ 0, %l2.preheader ]
  %pc = getelementptr inbounds nuw [8 x i8], ptr %A, i64 %j
  %vc = load double, ptr %pc, align 8
  %pd = getelementptr inbounds nuw [8 x i8], ptr %C, i64 %j
  %vd = fmul double %vc, 3.000000e+00
  store double %vd, ptr %pd, align 8
  %j.next = add nuw nsw i64 %j, 1
  %c2 = icmp eq i64 %j.next, %n
  br i1 %c2, label %exit, label %l2, !llvm.loop !4

exit:                                             ; preds = %l2, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !2, !1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.vectorize.disable"}
