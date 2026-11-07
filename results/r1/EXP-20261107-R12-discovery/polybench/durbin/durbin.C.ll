; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\durbin\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\durbin\\durbin.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #11
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #11
  tail call fastcc void @init_array(ptr noundef %3)
  tail call fastcc void @kernel_durbin(ptr noundef %3, ptr noundef %4)
  %5 = icmp sgt i32 %0, 42
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %7, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %6
  tail call fastcc void @print_array(ptr noundef %4)
  br label %9

9:                                                ; preds = %8, %6, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) initializes((0, 320)) %0) unnamed_addr #2 {
  store <2 x double> <double 4.100000e+01, double 4.000000e+01>, ptr %0, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> <double 3.900000e+01, double 3.800000e+01>, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> <double 3.700000e+01, double 3.600000e+01>, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> <double 3.500000e+01, double 3.400000e+01>, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> <double 3.300000e+01, double 3.200000e+01>, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> <double 3.100000e+01, double 3.000000e+01>, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> <double 2.900000e+01, double 2.800000e+01>, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double 2.700000e+01, double 2.600000e+01>, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x double> <double 2.500000e+01, double 2.400000e+01>, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> <double 2.300000e+01, double 2.200000e+01>, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x double> <double 2.100000e+01, double 2.000000e+01>, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> <double 1.900000e+01, double 1.800000e+01>, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> <double 1.700000e+01, double 1.600000e+01>, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> <double 1.500000e+01, double 1.400000e+01>, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> <double 1.300000e+01, double 1.200000e+01>, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> <double 1.100000e+01, double 1.000000e+01>, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x double> <double 9.000000e+00, double 8.000000e+00>, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x double> <double 7.000000e+00, double 6.000000e+00>, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x double> <double 5.000000e+00, double 4.000000e+00>, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x double> <double 3.000000e+00, double 2.000000e+00>, ptr %20, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_durbin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #3 {
  %3 = alloca [40 x double], align 8
  %4 = load double, ptr %0, align 8
  %5 = fneg double %4
  store double %5, ptr %1, align 8
  %6 = load double, ptr %0, align 8
  %7 = fneg double %6
  br label %8

8:                                                ; preds = %2, %.preheader.preheader
  %indvars.iv59 = phi i64 [ 1, %2 ], [ %indvars.iv.next60, %.preheader.preheader ]
  %indvar = phi i64 [ 0, %2 ], [ %indvar.next, %.preheader.preheader ]
  %.04148 = phi double [ 1.000000e+00, %2 ], [ %50, %.preheader.preheader ]
  %.04247 = phi double [ %7, %2 ], [ %55, %.preheader.preheader ]
  %9 = shl nuw nsw i64 %indvar, 3
  %10 = add nuw nsw i64 %9, 8
  %11 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv59
  %xtraiter = and i64 %indvars.iv59, 3
  %12 = icmp samesign ult i64 %indvar, 3
  br i1 %12, label %.epil.preheader, label %.new

.new:                                             ; preds = %8
  %unroll_iter = and i64 %indvars.iv59, 9223372036854775804
  br label %13

13:                                               ; preds = %13, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %13 ]
  %.04043 = phi double [ 0.000000e+00, %.new ], [ %40, %13 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %13 ]
  %14 = xor i64 %indvars.iv, -1
  %15 = getelementptr [8 x i8], ptr %11, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %18 = load double, ptr %17, align 8
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %.04043)
  %20 = xor i64 %indvars.iv, -2
  %21 = getelementptr [8 x i8], ptr %11, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load double, ptr %24, align 8
  %26 = tail call double @llvm.fmuladd.f64(double %22, double %25, double %19)
  %27 = xor i64 %indvars.iv, -3
  %28 = getelementptr [8 x i8], ptr %11, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %32 = load double, ptr %31, align 8
  %33 = tail call double @llvm.fmuladd.f64(double %29, double %32, double %26)
  %34 = xor i64 %indvars.iv, -4
  %35 = getelementptr [8 x i8], ptr %11, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %39 = load double, ptr %38, align 8
  %40 = tail call double @llvm.fmuladd.f64(double %36, double %39, double %33)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %13, !llvm.loop !7

.unr-lcssa:                                       ; preds = %13
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %8
  %indvars.iv.epil.init = phi i64 [ 0, %8 ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.04043.epil.init = phi double [ 0.000000e+00, %8 ], [ %40, %.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %41

41:                                               ; preds = %41, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %41 ]
  %.04043.epil = phi double [ %.04043.epil.init, %.epil.preheader ], [ %47, %41 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %41 ]
  %42 = xor i64 %indvars.iv.epil, -1
  %43 = getelementptr [8 x i8], ptr %11, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %46 = load double, ptr %45, align 8
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %46, double %.04043.epil)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %41, !llvm.loop !9

.epilog-lcssa:                                    ; preds = %41, %.unr-lcssa
  %.lcssa = phi double [ %40, %.unr-lcssa ], [ %47, %41 ]
  %48 = fneg double %.04247
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %.04247, double 1.000000e+00)
  %50 = fmul double %49, %.04148
  %51 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59
  %52 = load double, ptr %51, align 8
  %53 = fadd double %.lcssa, %52
  %54 = fneg double %53
  %55 = fdiv double %54, %50
  %56 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv59
  %min.iters.check = icmp samesign ult i64 %indvars.iv59, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.epilog-lcssa
  %n.vec = and i64 %indvars.iv59, 9223372036854775804
  %broadcast.splatinsert = insertelement <2 x double> poison, double %55, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %57 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 16
  %wide.load = load <2 x double>, ptr %57, align 8
  %wide.load1 = load <2 x double>, ptr %58, align 8
  %59 = xor i64 %index, -1
  %60 = getelementptr [8 x i8], ptr %56, i64 %59
  %61 = getelementptr i8, ptr %60, i64 -8
  %62 = getelementptr i8, ptr %60, i64 -24
  %wide.load2 = load <2 x double>, ptr %61, align 8
  %wide.load3 = load <2 x double>, ptr %62, align 8
  %reverse = shufflevector <2 x double> %wide.load2, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse4 = shufflevector <2 x double> %wide.load3, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %63 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %reverse, <2 x double> %wide.load)
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %reverse4, <2 x double> %wide.load1)
  %65 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 16
  store <2 x double> %63, ptr %65, align 8
  store <2 x double> %64, ptr %66, align 8
  %index.next = add nuw i64 %index, 4
  %67 = icmp eq i64 %index.next, %n.vec
  br i1 %67, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv59, %n.vec
  br i1 %cmp.n, label %.preheader.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.epilog-lcssa, %middle.block
  %indvars.iv51.ph = phi i64 [ 0, %.epilog-lcssa ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %scalar.ph ], [ %indvars.iv51.ph, %scalar.ph.preheader ]
  %68 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv51
  %69 = load double, ptr %68, align 8
  %70 = xor i64 %indvars.iv51, -1
  %71 = getelementptr [8 x i8], ptr %56, i64 %70
  %72 = load double, ptr %71, align 8
  %73 = tail call double @llvm.fmuladd.f64(double %55, double %72, double %69)
  %74 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv51
  store double %73, ptr %74, align 8
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %indvars.iv59
  br i1 %exitcond55.not, label %.preheader.preheader, label %scalar.ph, !llvm.loop !15

.preheader.preheader:                             ; preds = %scalar.ph, %middle.block
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(1) %3, i64 range(i64 0, 313) %10, i1 false)
  %75 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59
  store double %55, ptr %75, align 8
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond62.not = icmp eq i64 %indvar.next, 39
  br i1 %exitcond62.not, label %76, label %8, !llvm.loop !17

76:                                               ; preds = %.preheader.preheader
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01EANLCPLP@y?$AA@") #11
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
  %9 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fputc = tail call i32 @fputc(i32 10, ptr %9)
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %12 = load double, ptr %11, align 8
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %12) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %15, label %5, !llvm.loop !18

15:                                               ; preds = %10
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01EANLCPLP@y?$AA@") #11
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\durbin\\durbin.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !8, !12, !13, !14}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.vectorize.body", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !8, !14, !12, !16}
!16 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
