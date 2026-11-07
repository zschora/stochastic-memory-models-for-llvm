; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\gemver\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemver\\gemver.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01NOFIACDB@w?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01NOFIACDB@w?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"w\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %10 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %11 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %12 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %13 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %14 = load double, ptr %4, align 8
  %15 = load double, ptr %3, align 8
  tail call fastcc void @kernel_gemver(double noundef %15, double noundef %14, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %16 = icmp sgt i32 %0, 42
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %18, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %19, label %20

19:                                               ; preds = %17
  tail call fastcc void @print_array(ptr noundef %10)
  br label %20

20:                                               ; preds = %19, %17, %2
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %8)
  tail call void @free(ptr noundef %9)
  tail call void @free(ptr noundef %10)
  tail call void @free(ptr noundef %11)
  tail call void @free(ptr noundef %12)
  tail call void @free(ptr noundef %13)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #2 {
  store double 1.500000e+00, ptr %0, align 8
  store double 1.200000e+00, ptr %1, align 8
  br label %vector.ph

vector.ph:                                        ; preds = %11, %middle.block
  %indvars.iv47 = phi i64 [ 0, %11 ], [ %indvars.iv.next48, %middle.block ]
  %12 = trunc nuw nsw i64 %indvars.iv47 to i32
  %13 = uitofp nneg i32 %12 to double
  %14 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv47
  store double %13, ptr %14, align 8
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %15 = trunc nuw nsw i64 %indvars.iv.next48 to i32
  %16 = uitofp nneg i32 %15 to double
  %17 = fdiv double %16, 4.000000e+01
  %18 = fmul nnan double %17, 5.000000e-01
  %19 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv47
  store double %18, ptr %19, align 8
  %20 = fmul nnan double %17, 2.500000e-01
  %21 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv47
  store double %20, ptr %21, align 8
  %22 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv47
  %23 = fmul nnan double %17, 1.250000e-01
  %24 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv47
  %25 = insertelement <2 x double> poison, double %17, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = fdiv <2 x double> %26, <double 6.000000e+00, double 9.000000e+00>
  %28 = extractelement <2 x double> %27, i64 0
  store double %28, ptr %22, align 8
  store double %23, ptr %24, align 8
  %29 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv47
  %30 = extractelement <2 x double> %27, i64 1
  store double %30, ptr %29, align 8
  %31 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv47
  store double 0.000000e+00, ptr %31, align 8
  %32 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv47
  store double 0.000000e+00, ptr %32, align 8
  %33 = getelementptr inbounds nuw [320 x i8], ptr %2, i64 %indvars.iv47
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv47, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %34 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %35 = trunc nuw nsw <2 x i64> %34 to <2 x i32>
  %36 = urem <2 x i32> %35, splat (i32 40)
  %37 = uitofp nneg <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, splat (double 4.000000e+01)
  %39 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %index
  store <2 x double> %38, ptr %39, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %40 = icmp eq i64 %index.next, 40
  br i1 %40, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 40
  br i1 %exitcond50.not, label %41, label %vector.ph, !llvm.loop !12

41:                                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_gemver(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10) unnamed_addr #3 {
  %12 = insertelement <4 x ptr> poison, ptr %3, i64 0
  %13 = insertelement <4 x ptr> %12, ptr %4, i64 1
  %14 = insertelement <4 x ptr> %13, ptr %5, i64 2
  %15 = insertelement <4 x ptr> %14, ptr %6, i64 3
  %16 = getelementptr i8, <4 x ptr> %15, i64 320
  %scevgep19 = getelementptr i8, ptr %2, i64 12800
  %17 = insertelement <4 x ptr> poison, ptr %2, i64 0
  %18 = shufflevector <4 x ptr> %17, <4 x ptr> poison, <4 x i32> zeroinitializer
  %19 = insertelement <4 x ptr> poison, ptr %scevgep19, i64 0
  %20 = shufflevector <4 x ptr> %19, <4 x ptr> poison, <4 x i32> zeroinitializer
  %21 = icmp ult <4 x ptr> %18, %16
  %22 = icmp ult <4 x ptr> %15, %20
  %23 = and <4 x i1> %21, %22
  %24 = bitcast <4 x i1> %23 to i4
  %.not = icmp eq i4 %24, 0
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %37 = getelementptr inbounds nuw i8, ptr %6, i64 96
  %38 = getelementptr inbounds nuw i8, ptr %6, i64 112
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %41 = getelementptr inbounds nuw i8, ptr %6, i64 128
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 144
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 176
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 192
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 208
  %49 = getelementptr inbounds nuw i8, ptr %6, i64 192
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 208
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 224
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 240
  %53 = getelementptr inbounds nuw i8, ptr %6, i64 224
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 240
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %56 = getelementptr inbounds nuw i8, ptr %4, i64 272
  %57 = getelementptr inbounds nuw i8, ptr %6, i64 256
  %58 = getelementptr inbounds nuw i8, ptr %6, i64 272
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 304
  %61 = getelementptr inbounds nuw i8, ptr %6, i64 288
  %62 = getelementptr inbounds nuw i8, ptr %6, i64 304
  br label %.preheader60

.preheader60:                                     ; preds = %11, %middle.block
  %indvars.iv70 = phi i64 [ 0, %11 ], [ %indvars.iv.next71, %middle.block ]
  %63 = getelementptr inbounds nuw [320 x i8], ptr %2, i64 %indvars.iv70
  %64 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  %65 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv70
  br i1 %.not, label %vector.body, label %scalar.ph

vector.body:                                      ; preds = %.preheader60
  %66 = load double, ptr %65, align 8, !alias.scope !13
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %66, i64 0
  %broadcast.splat37 = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> poison, <2 x i32> zeroinitializer
  %67 = load double, ptr %64, align 8, !alias.scope !16
  %broadcast.splatinsert = insertelement <2 x double> poison, double %67, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %wide.load = load <2 x double>, ptr %63, align 8, !alias.scope !18, !noalias !20
  %wide.load31 = load <2 x double>, ptr %68, align 8, !alias.scope !18, !noalias !20
  %wide.load32 = load <2 x double>, ptr %4, align 8, !alias.scope !23
  %wide.load33 = load <2 x double>, ptr %25, align 8, !alias.scope !23
  %69 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32, <2 x double> %wide.load)
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33, <2 x double> %wide.load31)
  %wide.load34 = load <2 x double>, ptr %6, align 8, !alias.scope !24
  %wide.load35 = load <2 x double>, ptr %26, align 8, !alias.scope !24
  %71 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34, <2 x double> %69)
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35, <2 x double> %70)
  store <2 x double> %71, ptr %63, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %72, ptr %68, align 8, !alias.scope !18, !noalias !20
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %74 = getelementptr inbounds nuw i8, ptr %63, i64 48
  %wide.load.1 = load <2 x double>, ptr %73, align 8, !alias.scope !18, !noalias !20
  %wide.load31.1 = load <2 x double>, ptr %74, align 8, !alias.scope !18, !noalias !20
  %wide.load32.1 = load <2 x double>, ptr %27, align 8, !alias.scope !23
  %wide.load33.1 = load <2 x double>, ptr %28, align 8, !alias.scope !23
  %75 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.1, <2 x double> %wide.load.1)
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.1, <2 x double> %wide.load31.1)
  %wide.load34.1 = load <2 x double>, ptr %29, align 8, !alias.scope !24
  %wide.load35.1 = load <2 x double>, ptr %30, align 8, !alias.scope !24
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.1, <2 x double> %75)
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.1, <2 x double> %76)
  store <2 x double> %77, ptr %73, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %78, ptr %74, align 8, !alias.scope !18, !noalias !20
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 80
  %wide.load.2 = load <2 x double>, ptr %79, align 8, !alias.scope !18, !noalias !20
  %wide.load31.2 = load <2 x double>, ptr %80, align 8, !alias.scope !18, !noalias !20
  %wide.load32.2 = load <2 x double>, ptr %31, align 8, !alias.scope !23
  %wide.load33.2 = load <2 x double>, ptr %32, align 8, !alias.scope !23
  %81 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.2, <2 x double> %wide.load.2)
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.2, <2 x double> %wide.load31.2)
  %wide.load34.2 = load <2 x double>, ptr %33, align 8, !alias.scope !24
  %wide.load35.2 = load <2 x double>, ptr %34, align 8, !alias.scope !24
  %83 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.2, <2 x double> %81)
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.2, <2 x double> %82)
  store <2 x double> %83, ptr %79, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %84, ptr %80, align 8, !alias.scope !18, !noalias !20
  %85 = getelementptr inbounds nuw i8, ptr %63, i64 96
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 112
  %wide.load.3 = load <2 x double>, ptr %85, align 8, !alias.scope !18, !noalias !20
  %wide.load31.3 = load <2 x double>, ptr %86, align 8, !alias.scope !18, !noalias !20
  %wide.load32.3 = load <2 x double>, ptr %35, align 8, !alias.scope !23
  %wide.load33.3 = load <2 x double>, ptr %36, align 8, !alias.scope !23
  %87 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.3, <2 x double> %wide.load.3)
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.3, <2 x double> %wide.load31.3)
  %wide.load34.3 = load <2 x double>, ptr %37, align 8, !alias.scope !24
  %wide.load35.3 = load <2 x double>, ptr %38, align 8, !alias.scope !24
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.3, <2 x double> %87)
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.3, <2 x double> %88)
  store <2 x double> %89, ptr %85, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %90, ptr %86, align 8, !alias.scope !18, !noalias !20
  %91 = getelementptr inbounds nuw i8, ptr %63, i64 128
  %92 = getelementptr inbounds nuw i8, ptr %63, i64 144
  %wide.load.4 = load <2 x double>, ptr %91, align 8, !alias.scope !18, !noalias !20
  %wide.load31.4 = load <2 x double>, ptr %92, align 8, !alias.scope !18, !noalias !20
  %wide.load32.4 = load <2 x double>, ptr %39, align 8, !alias.scope !23
  %wide.load33.4 = load <2 x double>, ptr %40, align 8, !alias.scope !23
  %93 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.4, <2 x double> %wide.load.4)
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.4, <2 x double> %wide.load31.4)
  %wide.load34.4 = load <2 x double>, ptr %41, align 8, !alias.scope !24
  %wide.load35.4 = load <2 x double>, ptr %42, align 8, !alias.scope !24
  %95 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.4, <2 x double> %93)
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.4, <2 x double> %94)
  store <2 x double> %95, ptr %91, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %96, ptr %92, align 8, !alias.scope !18, !noalias !20
  %97 = getelementptr inbounds nuw i8, ptr %63, i64 160
  %98 = getelementptr inbounds nuw i8, ptr %63, i64 176
  %wide.load.5 = load <2 x double>, ptr %97, align 8, !alias.scope !18, !noalias !20
  %wide.load31.5 = load <2 x double>, ptr %98, align 8, !alias.scope !18, !noalias !20
  %wide.load32.5 = load <2 x double>, ptr %43, align 8, !alias.scope !23
  %wide.load33.5 = load <2 x double>, ptr %44, align 8, !alias.scope !23
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.5, <2 x double> %wide.load.5)
  %100 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.5, <2 x double> %wide.load31.5)
  %wide.load34.5 = load <2 x double>, ptr %45, align 8, !alias.scope !24
  %wide.load35.5 = load <2 x double>, ptr %46, align 8, !alias.scope !24
  %101 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.5, <2 x double> %99)
  %102 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.5, <2 x double> %100)
  store <2 x double> %101, ptr %97, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %102, ptr %98, align 8, !alias.scope !18, !noalias !20
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 192
  %104 = getelementptr inbounds nuw i8, ptr %63, i64 208
  %wide.load.6 = load <2 x double>, ptr %103, align 8, !alias.scope !18, !noalias !20
  %wide.load31.6 = load <2 x double>, ptr %104, align 8, !alias.scope !18, !noalias !20
  %wide.load32.6 = load <2 x double>, ptr %47, align 8, !alias.scope !23
  %wide.load33.6 = load <2 x double>, ptr %48, align 8, !alias.scope !23
  %105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.6, <2 x double> %wide.load.6)
  %106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.6, <2 x double> %wide.load31.6)
  %wide.load34.6 = load <2 x double>, ptr %49, align 8, !alias.scope !24
  %wide.load35.6 = load <2 x double>, ptr %50, align 8, !alias.scope !24
  %107 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.6, <2 x double> %105)
  %108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.6, <2 x double> %106)
  store <2 x double> %107, ptr %103, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %108, ptr %104, align 8, !alias.scope !18, !noalias !20
  %109 = getelementptr inbounds nuw i8, ptr %63, i64 224
  %110 = getelementptr inbounds nuw i8, ptr %63, i64 240
  %wide.load.7 = load <2 x double>, ptr %109, align 8, !alias.scope !18, !noalias !20
  %wide.load31.7 = load <2 x double>, ptr %110, align 8, !alias.scope !18, !noalias !20
  %wide.load32.7 = load <2 x double>, ptr %51, align 8, !alias.scope !23
  %wide.load33.7 = load <2 x double>, ptr %52, align 8, !alias.scope !23
  %111 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.7, <2 x double> %wide.load.7)
  %112 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.7, <2 x double> %wide.load31.7)
  %wide.load34.7 = load <2 x double>, ptr %53, align 8, !alias.scope !24
  %wide.load35.7 = load <2 x double>, ptr %54, align 8, !alias.scope !24
  %113 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.7, <2 x double> %111)
  %114 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.7, <2 x double> %112)
  store <2 x double> %113, ptr %109, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %114, ptr %110, align 8, !alias.scope !18, !noalias !20
  %115 = getelementptr inbounds nuw i8, ptr %63, i64 256
  %116 = getelementptr inbounds nuw i8, ptr %63, i64 272
  %wide.load.8 = load <2 x double>, ptr %115, align 8, !alias.scope !18, !noalias !20
  %wide.load31.8 = load <2 x double>, ptr %116, align 8, !alias.scope !18, !noalias !20
  %wide.load32.8 = load <2 x double>, ptr %55, align 8, !alias.scope !23
  %wide.load33.8 = load <2 x double>, ptr %56, align 8, !alias.scope !23
  %117 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.8, <2 x double> %wide.load.8)
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.8, <2 x double> %wide.load31.8)
  %wide.load34.8 = load <2 x double>, ptr %57, align 8, !alias.scope !24
  %wide.load35.8 = load <2 x double>, ptr %58, align 8, !alias.scope !24
  %119 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.8, <2 x double> %117)
  %120 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.8, <2 x double> %118)
  store <2 x double> %119, ptr %115, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %120, ptr %116, align 8, !alias.scope !18, !noalias !20
  %121 = getelementptr inbounds nuw i8, ptr %63, i64 288
  %122 = getelementptr inbounds nuw i8, ptr %63, i64 304
  %wide.load.9 = load <2 x double>, ptr %121, align 8, !alias.scope !18, !noalias !20
  %wide.load31.9 = load <2 x double>, ptr %122, align 8, !alias.scope !18, !noalias !20
  %wide.load32.9 = load <2 x double>, ptr %59, align 8, !alias.scope !23
  %wide.load33.9 = load <2 x double>, ptr %60, align 8, !alias.scope !23
  %123 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load32.9, <2 x double> %wide.load.9)
  %124 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33.9, <2 x double> %wide.load31.9)
  %wide.load34.9 = load <2 x double>, ptr %61, align 8, !alias.scope !24
  %wide.load35.9 = load <2 x double>, ptr %62, align 8, !alias.scope !24
  %125 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load34.9, <2 x double> %123)
  %126 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35.9, <2 x double> %124)
  store <2 x double> %125, ptr %121, align 8, !alias.scope !18, !noalias !20
  store <2 x double> %126, ptr %122, align 8, !alias.scope !18, !noalias !20
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader60, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %.preheader60 ]
  %127 = getelementptr inbounds nuw [8 x i8], ptr %63, i64 %indvars.iv
  %128 = load double, ptr %127, align 8
  %129 = load double, ptr %64, align 8
  %130 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %131 = load double, ptr %130, align 8
  %132 = tail call double @llvm.fmuladd.f64(double %129, double %131, double %128)
  %133 = load double, ptr %65, align 8
  %134 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %135 = load double, ptr %134, align 8
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %135, double %132)
  store double %136, ptr %127, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %137 = getelementptr inbounds nuw [8 x i8], ptr %63, i64 %indvars.iv.next
  %138 = load double, ptr %137, align 8
  %139 = load double, ptr %64, align 8
  %140 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %141 = load double, ptr %140, align 8
  %142 = tail call double @llvm.fmuladd.f64(double %139, double %141, double %138)
  %143 = load double, ptr %65, align 8
  %144 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next
  %145 = load double, ptr %144, align 8
  %146 = tail call double @llvm.fmuladd.f64(double %143, double %145, double %142)
  store double %146, ptr %137, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 40
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !25

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next71, 40
  br i1 %exitcond73.not, label %.preheader58, label %.preheader60, !llvm.loop !27

.preheader58:                                     ; preds = %middle.block, %160
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %160 ], [ 0, %middle.block ]
  %147 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv78
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv78
  %.promoted = load double, ptr %147, align 8
  br label %148

148:                                              ; preds = %148, %.preheader58
  %indvars.iv74 = phi i64 [ 0, %.preheader58 ], [ %indvars.iv.next75.1, %148 ]
  %149 = phi double [ %.promoted, %.preheader58 ], [ %159, %148 ]
  %gep = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep, i64 %indvars.iv74
  %150 = load double, ptr %gep, align 8
  %151 = fmul double %1, %150
  %152 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv74
  %153 = load double, ptr %152, align 8
  %154 = tail call double @llvm.fmuladd.f64(double %151, double %153, double %149)
  store double %154, ptr %147, align 8
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1
  %gep.1 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep, i64 %indvars.iv.next75
  %155 = load double, ptr %gep.1, align 8
  %156 = fmul double %1, %155
  %157 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv.next75
  %158 = load double, ptr %157, align 8
  %159 = tail call double @llvm.fmuladd.f64(double %156, double %158, double %154)
  store double %159, ptr %147, align 8
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2
  %exitcond77.not.1 = icmp eq i64 %indvars.iv.next75.1, 40
  br i1 %exitcond77.not.1, label %160, label %148, !llvm.loop !28

160:                                              ; preds = %148
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, 40
  br i1 %exitcond81.not, label %.preheader57.preheader, label %.preheader58, !llvm.loop !29

.preheader57.preheader:                           ; preds = %160
  %161 = load double, ptr %8, align 8
  %162 = load double, ptr %10, align 8
  %163 = fadd double %161, %162
  store double %163, ptr %8, align 8
  %164 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %165 = load double, ptr %164, align 8
  %166 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %167 = load double, ptr %166, align 8
  %168 = fadd double %165, %167
  store double %168, ptr %164, align 8
  %169 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %170 = load double, ptr %169, align 8
  %171 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %172 = load double, ptr %171, align 8
  %173 = fadd double %170, %172
  store double %173, ptr %169, align 8
  %174 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %175 = load double, ptr %174, align 8
  %176 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %177 = load double, ptr %176, align 8
  %178 = fadd double %175, %177
  store double %178, ptr %174, align 8
  %179 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %180 = load double, ptr %179, align 8
  %181 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %182 = load double, ptr %181, align 8
  %183 = fadd double %180, %182
  store double %183, ptr %179, align 8
  %184 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %185 = load double, ptr %184, align 8
  %186 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %187 = load double, ptr %186, align 8
  %188 = fadd double %185, %187
  store double %188, ptr %184, align 8
  %189 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %190 = load double, ptr %189, align 8
  %191 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %192 = load double, ptr %191, align 8
  %193 = fadd double %190, %192
  store double %193, ptr %189, align 8
  %194 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %195 = load double, ptr %194, align 8
  %196 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %197 = load double, ptr %196, align 8
  %198 = fadd double %195, %197
  store double %198, ptr %194, align 8
  %199 = getelementptr inbounds nuw i8, ptr %8, i64 64
  %200 = load double, ptr %199, align 8
  %201 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %202 = load double, ptr %201, align 8
  %203 = fadd double %200, %202
  store double %203, ptr %199, align 8
  %204 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %205 = load double, ptr %204, align 8
  %206 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %207 = load double, ptr %206, align 8
  %208 = fadd double %205, %207
  store double %208, ptr %204, align 8
  %209 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %210 = load double, ptr %209, align 8
  %211 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %212 = load double, ptr %211, align 8
  %213 = fadd double %210, %212
  store double %213, ptr %209, align 8
  %214 = getelementptr inbounds nuw i8, ptr %8, i64 88
  %215 = load double, ptr %214, align 8
  %216 = getelementptr inbounds nuw i8, ptr %10, i64 88
  %217 = load double, ptr %216, align 8
  %218 = fadd double %215, %217
  store double %218, ptr %214, align 8
  %219 = getelementptr inbounds nuw i8, ptr %8, i64 96
  %220 = load double, ptr %219, align 8
  %221 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %222 = load double, ptr %221, align 8
  %223 = fadd double %220, %222
  store double %223, ptr %219, align 8
  %224 = getelementptr inbounds nuw i8, ptr %8, i64 104
  %225 = load double, ptr %224, align 8
  %226 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %227 = load double, ptr %226, align 8
  %228 = fadd double %225, %227
  store double %228, ptr %224, align 8
  %229 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %230 = load double, ptr %229, align 8
  %231 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %232 = load double, ptr %231, align 8
  %233 = fadd double %230, %232
  store double %233, ptr %229, align 8
  %234 = getelementptr inbounds nuw i8, ptr %8, i64 120
  %235 = load double, ptr %234, align 8
  %236 = getelementptr inbounds nuw i8, ptr %10, i64 120
  %237 = load double, ptr %236, align 8
  %238 = fadd double %235, %237
  store double %238, ptr %234, align 8
  %239 = getelementptr inbounds nuw i8, ptr %8, i64 128
  %240 = load double, ptr %239, align 8
  %241 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %242 = load double, ptr %241, align 8
  %243 = fadd double %240, %242
  store double %243, ptr %239, align 8
  %244 = getelementptr inbounds nuw i8, ptr %8, i64 136
  %245 = load double, ptr %244, align 8
  %246 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %247 = load double, ptr %246, align 8
  %248 = fadd double %245, %247
  store double %248, ptr %244, align 8
  %249 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %250 = load double, ptr %249, align 8
  %251 = getelementptr inbounds nuw i8, ptr %10, i64 144
  %252 = load double, ptr %251, align 8
  %253 = fadd double %250, %252
  store double %253, ptr %249, align 8
  %254 = getelementptr inbounds nuw i8, ptr %8, i64 152
  %255 = load double, ptr %254, align 8
  %256 = getelementptr inbounds nuw i8, ptr %10, i64 152
  %257 = load double, ptr %256, align 8
  %258 = fadd double %255, %257
  store double %258, ptr %254, align 8
  %259 = getelementptr inbounds nuw i8, ptr %8, i64 160
  %260 = load double, ptr %259, align 8
  %261 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %262 = load double, ptr %261, align 8
  %263 = fadd double %260, %262
  store double %263, ptr %259, align 8
  %264 = getelementptr inbounds nuw i8, ptr %8, i64 168
  %265 = load double, ptr %264, align 8
  %266 = getelementptr inbounds nuw i8, ptr %10, i64 168
  %267 = load double, ptr %266, align 8
  %268 = fadd double %265, %267
  store double %268, ptr %264, align 8
  %269 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %270 = load double, ptr %269, align 8
  %271 = getelementptr inbounds nuw i8, ptr %10, i64 176
  %272 = load double, ptr %271, align 8
  %273 = fadd double %270, %272
  store double %273, ptr %269, align 8
  %274 = getelementptr inbounds nuw i8, ptr %8, i64 184
  %275 = load double, ptr %274, align 8
  %276 = getelementptr inbounds nuw i8, ptr %10, i64 184
  %277 = load double, ptr %276, align 8
  %278 = fadd double %275, %277
  store double %278, ptr %274, align 8
  %279 = getelementptr inbounds nuw i8, ptr %8, i64 192
  %280 = load double, ptr %279, align 8
  %281 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %282 = load double, ptr %281, align 8
  %283 = fadd double %280, %282
  store double %283, ptr %279, align 8
  %284 = getelementptr inbounds nuw i8, ptr %8, i64 200
  %285 = load double, ptr %284, align 8
  %286 = getelementptr inbounds nuw i8, ptr %10, i64 200
  %287 = load double, ptr %286, align 8
  %288 = fadd double %285, %287
  store double %288, ptr %284, align 8
  %289 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %290 = load double, ptr %289, align 8
  %291 = getelementptr inbounds nuw i8, ptr %10, i64 208
  %292 = load double, ptr %291, align 8
  %293 = fadd double %290, %292
  store double %293, ptr %289, align 8
  %294 = getelementptr inbounds nuw i8, ptr %8, i64 216
  %295 = load double, ptr %294, align 8
  %296 = getelementptr inbounds nuw i8, ptr %10, i64 216
  %297 = load double, ptr %296, align 8
  %298 = fadd double %295, %297
  store double %298, ptr %294, align 8
  %299 = getelementptr inbounds nuw i8, ptr %8, i64 224
  %300 = load double, ptr %299, align 8
  %301 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %302 = load double, ptr %301, align 8
  %303 = fadd double %300, %302
  store double %303, ptr %299, align 8
  %304 = getelementptr inbounds nuw i8, ptr %8, i64 232
  %305 = load double, ptr %304, align 8
  %306 = getelementptr inbounds nuw i8, ptr %10, i64 232
  %307 = load double, ptr %306, align 8
  %308 = fadd double %305, %307
  store double %308, ptr %304, align 8
  %309 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %310 = load double, ptr %309, align 8
  %311 = getelementptr inbounds nuw i8, ptr %10, i64 240
  %312 = load double, ptr %311, align 8
  %313 = fadd double %310, %312
  store double %313, ptr %309, align 8
  %314 = getelementptr inbounds nuw i8, ptr %8, i64 248
  %315 = load double, ptr %314, align 8
  %316 = getelementptr inbounds nuw i8, ptr %10, i64 248
  %317 = load double, ptr %316, align 8
  %318 = fadd double %315, %317
  store double %318, ptr %314, align 8
  %319 = getelementptr inbounds nuw i8, ptr %8, i64 256
  %320 = load double, ptr %319, align 8
  %321 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %322 = load double, ptr %321, align 8
  %323 = fadd double %320, %322
  store double %323, ptr %319, align 8
  %324 = getelementptr inbounds nuw i8, ptr %8, i64 264
  %325 = load double, ptr %324, align 8
  %326 = getelementptr inbounds nuw i8, ptr %10, i64 264
  %327 = load double, ptr %326, align 8
  %328 = fadd double %325, %327
  store double %328, ptr %324, align 8
  %329 = getelementptr inbounds nuw i8, ptr %8, i64 272
  %330 = load double, ptr %329, align 8
  %331 = getelementptr inbounds nuw i8, ptr %10, i64 272
  %332 = load double, ptr %331, align 8
  %333 = fadd double %330, %332
  store double %333, ptr %329, align 8
  %334 = getelementptr inbounds nuw i8, ptr %8, i64 280
  %335 = load double, ptr %334, align 8
  %336 = getelementptr inbounds nuw i8, ptr %10, i64 280
  %337 = load double, ptr %336, align 8
  %338 = fadd double %335, %337
  store double %338, ptr %334, align 8
  %339 = getelementptr inbounds nuw i8, ptr %8, i64 288
  %340 = load double, ptr %339, align 8
  %341 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %342 = load double, ptr %341, align 8
  %343 = fadd double %340, %342
  store double %343, ptr %339, align 8
  %344 = getelementptr inbounds nuw i8, ptr %8, i64 296
  %345 = load double, ptr %344, align 8
  %346 = getelementptr inbounds nuw i8, ptr %10, i64 296
  %347 = load double, ptr %346, align 8
  %348 = fadd double %345, %347
  store double %348, ptr %344, align 8
  %349 = getelementptr inbounds nuw i8, ptr %8, i64 304
  %350 = load double, ptr %349, align 8
  %351 = getelementptr inbounds nuw i8, ptr %10, i64 304
  %352 = load double, ptr %351, align 8
  %353 = fadd double %350, %352
  store double %353, ptr %349, align 8
  %354 = getelementptr inbounds nuw i8, ptr %8, i64 312
  %355 = load double, ptr %354, align 8
  %356 = getelementptr inbounds nuw i8, ptr %10, i64 312
  %357 = load double, ptr %356, align 8
  %358 = fadd double %355, %357
  store double %358, ptr %354, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader57.preheader, %375
  %indvars.iv90 = phi i64 [ 0, %.preheader57.preheader ], [ %indvars.iv.next91, %375 ]
  %359 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv90
  %360 = getelementptr inbounds nuw [320 x i8], ptr %2, i64 %indvars.iv90
  %.promoted66 = load double, ptr %359, align 8
  br label %361

361:                                              ; preds = %361, %.preheader
  %indvars.iv86 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next87.1, %361 ]
  %362 = phi double [ %.promoted66, %.preheader ], [ %374, %361 ]
  %363 = getelementptr inbounds nuw [8 x i8], ptr %360, i64 %indvars.iv86
  %364 = load double, ptr %363, align 8
  %365 = fmul double %0, %364
  %366 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv86
  %367 = load double, ptr %366, align 8
  %368 = tail call double @llvm.fmuladd.f64(double %365, double %367, double %362)
  store double %368, ptr %359, align 8
  %indvars.iv.next87 = or disjoint i64 %indvars.iv86, 1
  %369 = getelementptr inbounds nuw [8 x i8], ptr %360, i64 %indvars.iv.next87
  %370 = load double, ptr %369, align 8
  %371 = fmul double %0, %370
  %372 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next87
  %373 = load double, ptr %372, align 8
  %374 = tail call double @llvm.fmuladd.f64(double %371, double %373, double %368)
  store double %374, ptr %359, align 8
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2
  %exitcond89.not.1 = icmp eq i64 %indvars.iv.next87.1, 40
  br i1 %exitcond89.not.1, label %375, label %361, !llvm.loop !30

375:                                              ; preds = %361
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 40
  br i1 %exitcond93.not, label %376, label %.preheader, !llvm.loop !31

376:                                              ; preds = %375
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01NOFIACDB@w?$AA@") #9
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
  %9 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %9)
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %12 = load double, ptr %11, align 8
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %12) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %15, label %5, !llvm.loop !32

15:                                               ; preds = %10
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01NOFIACDB@w?$AA@") #9
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemver\\gemver.c", directory: "C:\\work\\llvm-profitability-research")
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
!12 = distinct !{!12, !8}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !15}
!20 = !{!17, !21, !14, !22}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = !{!21}
!24 = !{!22}
!25 = distinct !{!25, !8, !9, !26}
!26 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
