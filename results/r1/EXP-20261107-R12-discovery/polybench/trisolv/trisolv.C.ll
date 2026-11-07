; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\trisolv\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\trisolv\\trisolv.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01FJMABOPO@x?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01FJMABOPO@x?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"x\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  tail call fastcc void @kernel_trisolv(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %6 = icmp sgt i32 %0, 42
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %8, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @print_array(ptr noundef %4)
  br label %10

10:                                               ; preds = %9, %7, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 {
  br label %4

4:                                                ; preds = %3, %.loopexit
  %indvars.iv26 = phi i64 [ 0, %3 ], [ %indvars.iv.next27, %.loopexit ]
  %indvars.iv24 = phi i64 [ 1, %3 ], [ %indvars.iv.next25, %.loopexit ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv26
  store double -9.990000e+02, ptr %5, align 8
  %6 = trunc nuw nsw i64 %indvars.iv26 to i32
  %7 = uitofp nneg i32 %6 to double
  %8 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv26
  store double %7, ptr %8, align 8
  %9 = add nuw nsw i64 %indvars.iv26, 40
  %10 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv26
  %min.iters.check = icmp samesign ult i64 %indvars.iv24, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %4
  %n.vec = and i64 %indvars.iv24, 9223372036854775806
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %9, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %11 = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %12 = trunc <2 x i64> %11 to <2 x i32>
  %13 = shl <2 x i32> %12, splat (i32 1)
  %14 = add <2 x i32> %13, splat (i32 2)
  %15 = uitofp nneg <2 x i32> %14 to <2 x double>
  %16 = fdiv <2 x double> %15, splat (double 4.000000e+01)
  %17 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index
  store <2 x double> %16, ptr %17, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv24, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %4, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %4 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %19 = sub nuw nsw i64 %9, %indvars.iv
  %.tr = trunc i64 %19 to i32
  %20 = shl i32 %.tr, 1
  %21 = add i32 %20, 2
  %22 = uitofp nneg i32 %21 to double
  %23 = fdiv double %22, 4.000000e+01
  %24 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  store double %23, ptr %24, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv24
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !12

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next27, 40
  br i1 %exitcond31.not, label %25, label %4, !llvm.loop !14

25:                                               ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_trisolv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 {
  br label %4

4:                                                ; preds = %3, %._crit_edge
  %indvars.iv26 = phi i64 [ 0, %3 ], [ %indvars.iv.next27, %._crit_edge ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv26
  %6 = load double, ptr %5, align 8
  %7 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv26
  store double %6, ptr %7, align 8
  %.not = icmp eq i64 %indvars.iv26, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  %8 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv26
  %xtraiter = and i64 %indvars.iv26, 1
  %9 = icmp eq i64 %indvars.iv26, 1
  br i1 %9, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv26, 9223372036854775806
  br label %10

10:                                               ; preds = %10, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %10 ]
  %11 = phi double [ %6, %.lr.ph.new ], [ %23, %10 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %10 ]
  %12 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %13 = load double, ptr %12, align 8
  %14 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %15 = load double, ptr %14, align 8
  %16 = fneg double %13
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %15, double %11)
  store double %17, ptr %7, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %18 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %21 = load double, ptr %20, align 8
  %22 = fneg double %19
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %21, double %17)
  store double %23, ptr %7, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %10, !llvm.loop !15

._crit_edge.loopexit.unr-lcssa:                   ; preds = %10
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %6, %.lr.ph ], [ %23, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %indvars.iv26 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %24 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.epil.init
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %27 = load double, ptr %26, align 8
  %28 = fneg double %25
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %27, double %.epil.init)
  store double %29, ptr %7, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %4
  %30 = phi double [ %6, %4 ], [ %23, %._crit_edge.loopexit.unr-lcssa ], [ %29, %.epil.preheader ]
  %31 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv26
  %32 = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %indvars.iv26
  %33 = load double, ptr %32, align 8
  %34 = fdiv double %30, %33
  store double %34, ptr %7, align 8
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 40
  br i1 %exitcond29.not, label %35, label %4, !llvm.loop !16

35:                                               ; preds = %._crit_edge
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FJMABOPO@x?$AA@") #9
  br label %5

5:                                                ; preds = %1, %14
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %14 ]
  %indvars9 = trunc i64 %indvars.iv to i32
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %7 = load double, ptr %6, align 8
  %8 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %7) #9
  %.urem = add nsw i32 %indvars9, -20
  %.cmp = icmp samesign ult i64 %indvars.iv, 20
  %10 = select i1 %.cmp, i32 %indvars9, i32 %.urem
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %13)
  br label %14

14:                                               ; preds = %5, %12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %15, label %5, !llvm.loop !17

15:                                               ; preds = %14
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FJMABOPO@x?$AA@") #9
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %18)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\trisolv\\trisolv.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8, !9, !10, !11}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.vectorize.body", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !8, !11, !9, !13}
!13 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
