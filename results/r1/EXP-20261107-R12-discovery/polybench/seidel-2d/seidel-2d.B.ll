; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\seidel-2d\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\seidel-2d\\seidel-2d.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01FHEEJDEE@A?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01FHEEJDEE@A?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"A\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #8
  tail call fastcc void @init_array(ptr noundef %3)
  tail call fastcc void @kernel_seidel_2d(ptr noundef %3)
  %4 = icmp sgt i32 %0, 42
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %6, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %7, label %8

7:                                                ; preds = %5
  tail call fastcc void @print_array(ptr noundef %3)
  br label %8

8:                                                ; preds = %7, %5, %2
  tail call void @free(ptr noundef %3)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0) unnamed_addr #2 {
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader
  %indvars.iv16 = phi i64 [ 0, %1 ], [ %indvars.iv.next17, %.preheader ]
  %2 = trunc nuw nsw i64 %indvars.iv16 to i32
  %3 = uitofp nneg i32 %2 to double
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv16
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.000000e+00, double 3.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %6 = fdiv <2 x double> %5, splat (double 4.000000e+01)
  store <2 x double> %6, ptr %4, align 8
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 4.000000e+00, double 5.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %8 = fdiv <2 x double> %7, splat (double 4.000000e+01)
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x double> %8, ptr %9, align 8
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 6.000000e+00, double 7.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %11 = fdiv <2 x double> %10, splat (double 4.000000e+01)
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <2 x double> %11, ptr %12, align 8
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 8.000000e+00, double 9.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %14 = fdiv <2 x double> %13, splat (double 4.000000e+01)
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x double> %14, ptr %15, align 8
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.000000e+01, double 1.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %17 = fdiv <2 x double> %16, splat (double 4.000000e+01)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x double> %17, ptr %18, align 8
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.200000e+01, double 1.300000e+01>, <2 x double> splat (double 2.000000e+00))
  %20 = fdiv <2 x double> %19, splat (double 4.000000e+01)
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x double> %20, ptr %21, align 8
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.400000e+01, double 1.500000e+01>, <2 x double> splat (double 2.000000e+00))
  %23 = fdiv <2 x double> %22, splat (double 4.000000e+01)
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store <2 x double> %23, ptr %24, align 8
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.600000e+01, double 1.700000e+01>, <2 x double> splat (double 2.000000e+00))
  %26 = fdiv <2 x double> %25, splat (double 4.000000e+01)
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <2 x double> %26, ptr %27, align 8
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.800000e+01, double 1.900000e+01>, <2 x double> splat (double 2.000000e+00))
  %29 = fdiv <2 x double> %28, splat (double 4.000000e+01)
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store <2 x double> %29, ptr %30, align 8
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.000000e+01, double 2.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %32 = fdiv <2 x double> %31, splat (double 4.000000e+01)
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store <2 x double> %32, ptr %33, align 8
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.200000e+01, double 2.300000e+01>, <2 x double> splat (double 2.000000e+00))
  %35 = fdiv <2 x double> %34, splat (double 4.000000e+01)
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store <2 x double> %35, ptr %36, align 8
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.400000e+01, double 2.500000e+01>, <2 x double> splat (double 2.000000e+00))
  %38 = fdiv <2 x double> %37, splat (double 4.000000e+01)
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store <2 x double> %38, ptr %39, align 8
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.600000e+01, double 2.700000e+01>, <2 x double> splat (double 2.000000e+00))
  %41 = fdiv <2 x double> %40, splat (double 4.000000e+01)
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store <2 x double> %41, ptr %42, align 8
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.800000e+01, double 2.900000e+01>, <2 x double> splat (double 2.000000e+00))
  %44 = fdiv <2 x double> %43, splat (double 4.000000e+01)
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store <2 x double> %44, ptr %45, align 8
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.000000e+01, double 3.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %47 = fdiv <2 x double> %46, splat (double 4.000000e+01)
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store <2 x double> %47, ptr %48, align 8
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.200000e+01, double 3.300000e+01>, <2 x double> splat (double 2.000000e+00))
  %50 = fdiv <2 x double> %49, splat (double 4.000000e+01)
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store <2 x double> %50, ptr %51, align 8
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.400000e+01, double 3.500000e+01>, <2 x double> splat (double 2.000000e+00))
  %53 = fdiv <2 x double> %52, splat (double 4.000000e+01)
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 256
  store <2 x double> %53, ptr %54, align 8
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.600000e+01, double 3.700000e+01>, <2 x double> splat (double 2.000000e+00))
  %56 = fdiv <2 x double> %55, splat (double 4.000000e+01)
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 272
  store <2 x double> %56, ptr %57, align 8
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.800000e+01, double 3.900000e+01>, <2 x double> splat (double 2.000000e+00))
  %59 = fdiv <2 x double> %58, splat (double 4.000000e+01)
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 288
  store <2 x double> %59, ptr %60, align 8
  %61 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 4.000000e+01, double 4.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %62 = fdiv <2 x double> %61, splat (double 4.000000e+01)
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 304
  store <2 x double> %62, ptr %63, align 8
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond19.not = icmp eq i64 %indvars.iv.next17, 40
  br i1 %exitcond19.not, label %64, label %.preheader, !llvm.loop !7

64:                                               ; preds = %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_seidel_2d(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
  br label %.preheader37

.preheader37:                                     ; preds = %1, %29
  %.03640 = phi i32 [ 0, %1 ], [ %30, %29 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader37, %28
  %indvars.iv42 = phi i64 [ 1, %.preheader37 ], [ %indvars.iv.next43, %28 ]
  %2 = getelementptr [320 x i8], ptr %0, i64 %indvars.iv42
  %3 = getelementptr i8, ptr %2, i64 -320
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 320
  %.pre = load double, ptr %3, align 8
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 -312
  %.pre47 = load double, ptr %.phi.trans.insert, align 8
  %.pre48 = load double, ptr %2, align 8
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre50 = load double, ptr %.phi.trans.insert49, align 8
  %.pre51 = load double, ptr %4, align 8
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %2, i64 328
  %.pre53 = load double, ptr %.phi.trans.insert52, align 8
  br label %5

5:                                                ; preds = %.preheader, %5
  %6 = phi double [ %.pre53, %.preheader ], [ %25, %5 ]
  %7 = phi double [ %.pre51, %.preheader ], [ %6, %5 ]
  %8 = phi double [ %.pre50, %.preheader ], [ %20, %5 ]
  %9 = phi double [ %.pre48, %.preheader ], [ %27, %5 ]
  %10 = phi double [ %.pre47, %.preheader ], [ %14, %5 ]
  %11 = phi double [ %.pre, %.preheader ], [ %10, %5 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %5 ]
  %12 = fadd double %11, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %14 = load double, ptr %13, align 8
  %15 = fadd double %12, %14
  %16 = fadd double %15, %9
  %17 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %18 = fadd double %16, %8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %20 = load double, ptr %19, align 8
  %21 = fadd double %18, %20
  %22 = fadd double %21, %7
  %23 = fadd double %22, %6
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %25 = load double, ptr %24, align 8
  %26 = fadd double %23, %25
  %27 = fdiv double %26, 9.000000e+00
  store double %27, ptr %17, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, 39
  br i1 %exitcond.not, label %28, label %5, !llvm.loop !9

28:                                               ; preds = %5
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, 39
  br i1 %exitcond45.not, label %29, label %.preheader, !llvm.loop !10

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.03640, 1
  %exitcond46.not = icmp eq i32 %30, 20
  br i1 %exitcond46.not, label %31, label %.preheader37, !llvm.loop !11

31:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 40
  %6 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv18
  br label %7

7:                                                ; preds = %.preheader, %14
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %14 ]
  %8 = add nuw nsw i64 %indvars.iv, %5
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = urem i32 %9, 20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fputc = tail call i32 @fputc(i32 10, ptr %13)
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %16 = load double, ptr %15, align 8
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %16) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !12

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 40
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !13

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #8
  %23 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %23)
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
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\seidel-2d\\seidel-2d.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
