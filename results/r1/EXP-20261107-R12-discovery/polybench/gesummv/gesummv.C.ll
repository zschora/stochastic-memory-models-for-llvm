; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\gesummv\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gesummv\\gesummv.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01EANLCPLP@y?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01EANLCPLP@y?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"y\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #8
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 30, i32 noundef 8) #8
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 30, i32 noundef 8) #8
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 30, i32 noundef 8) #8
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %8)
  %10 = load double, ptr %4, align 8
  %11 = load double, ptr %3, align 8
  tail call fastcc void @kernel_gesummv(double noundef %11, double noundef %10, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %12 = icmp sgt i32 %0, 42
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %14, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %15, label %16

15:                                               ; preds = %13
  tail call fastcc void @print_array(ptr noundef %9)
  br label %16

16:                                               ; preds = %15, %13, %2
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %8)
  tail call void @free(ptr noundef %9)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
  %6 = ptrtoaddr ptr %2 to i64
  %7 = ptrtoaddr ptr %3 to i64
  store double 1.500000e+00, ptr %0, align 8
  store double 1.200000e+00, ptr %1, align 8
  %8 = sub i64 %6, %7
  %diff.check = icmp ugt i64 %8, -16
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %5, %middle.block
  %indvars.iv31 = phi i64 [ 0, %5 ], [ %indvars.iv.next32, %middle.block ]
  %9 = trunc nuw nsw i64 %indvars.iv31 to i32
  %10 = uitofp nneg i32 %9 to double
  %11 = fdiv double %10, 3.000000e+01
  %12 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv31
  store double %11, ptr %12, align 8
  %13 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv31
  %14 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %indvars.iv31
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv31, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %15 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %16 = trunc <2 x i64> %15 to <2 x i32>
  %17 = add <2 x i32> %16, splat (i32 1)
  %18 = urem <2 x i32> %17, splat (i32 30)
  %19 = uitofp nneg <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, splat (double 3.000000e+01)
  %21 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %index
  store <2 x double> %20, ptr %21, align 8
  %22 = add <2 x i32> %16, splat (i32 2)
  %23 = urem <2 x i32> %22, splat (i32 30)
  %24 = uitofp nneg <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, splat (double 3.000000e+01)
  %26 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %index
  store <2 x double> %25, ptr %26, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %27 = icmp eq i64 %index.next, 30
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !7

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ]
  %28 = mul nuw nsw i64 %indvars.iv, %indvars.iv31
  %29 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv
  %30 = trunc i64 %28 to i32
  %31 = insertelement <2 x i32> poison, i32 %30, i64 0
  %32 = shufflevector <2 x i32> %31, <2 x i32> poison, <2 x i32> zeroinitializer
  %33 = add <2 x i32> %32, <i32 1, i32 2>
  %34 = urem <2 x i32> %33, splat (i32 30)
  %35 = uitofp nneg <2 x i32> %34 to <2 x double>
  %36 = fdiv <2 x double> %35, splat (double 3.000000e+01)
  %37 = extractelement <2 x double> %36, i64 0
  store double %37, ptr %29, align 8
  %38 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv
  %39 = extractelement <2 x double> %36, i64 1
  store double %39, ptr %38, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !12

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 30
  br i1 %exitcond34.not, label %40, label %vector.memcheck, !llvm.loop !14

40:                                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_gesummv(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) unnamed_addr #3 {
  br label %8

8:                                                ; preds = %7, %25
  %indvars.iv37 = phi i64 [ 0, %7 ], [ %indvars.iv.next38, %25 ]
  %9 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv37
  store double 0.000000e+00, ptr %9, align 8
  %10 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv37
  store double 0.000000e+00, ptr %10, align 8
  %11 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv37
  %12 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %indvars.iv37
  br label %13

13:                                               ; preds = %8, %13
  %indvars.iv = phi i64 [ 0, %8 ], [ %indvars.iv.next, %13 ]
  %14 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %17 = load double, ptr %16, align 8
  %18 = load double, ptr %9, align 8
  %19 = tail call double @llvm.fmuladd.f64(double %15, double %17, double %18)
  store double %19, ptr %9, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv
  %21 = load double, ptr %20, align 8
  %22 = load double, ptr %16, align 8
  %23 = load double, ptr %10, align 8
  %24 = tail call double @llvm.fmuladd.f64(double %21, double %22, double %23)
  store double %24, ptr %10, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %25, label %13, !llvm.loop !15

25:                                               ; preds = %13
  %26 = load double, ptr %9, align 8
  %27 = fmul double %1, %24
  %28 = tail call double @llvm.fmuladd.f64(double %0, double %26, double %27)
  store double %28, ptr %10, align 8
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 30
  br i1 %exitcond40.not, label %29, label %8, !llvm.loop !16

29:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01EANLCPLP@y?$AA@") #8
  br label %5

5:                                                ; preds = %1, %10
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %10 ]
  %indvars9 = trunc i64 %indvars.iv to i32
  %.urem = add nsw i32 %indvars9, -20
  %.cmp = icmp samesign ult i64 %indvars.iv, 20
  %6 = select i1 %.cmp, i32 %indvars9, i32 %.urem
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fputc = tail call i32 @fputc(i32 10, ptr %9)
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %12 = load double, ptr %11, align 8
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %12) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %15, label %5, !llvm.loop !17

15:                                               ; preds = %10
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01EANLCPLP@y?$AA@") #8
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gesummv\\gesummv.c", directory: "C:\\work\\llvm-profitability-research")
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
!12 = distinct !{!12, !8, !9, !13}
!13 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
