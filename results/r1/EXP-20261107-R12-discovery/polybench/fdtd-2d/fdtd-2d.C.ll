; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\fdtd-2d\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\fdtd-2d\\fdtd-2d.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_02KJEENMNI@ex?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_02LAFPONJJ@ey?$AA@" = comdat any

$"??_C@_02JDKKCNAJ@hz?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_02KJEENMNI@ex?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"ex\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_02LAFPONJJ@ey?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"ey\00", comdat, align 4
@"??_C@_02JDKKCNAJ@hz?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"hz\00", comdat, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 20, i32 noundef 8) #9
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  tail call fastcc void @kernel_fdtd_2d(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = icmp sgt i32 %0, 42
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %9, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %8
  tail call fastcc void @print_array(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %11

11:                                               ; preds = %10, %8, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 160)) %3) unnamed_addr #2 {
.preheader.preheader:
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %2 to i64
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x double> <double 2.000000e+00, double 3.000000e+00>, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x double> <double 4.000000e+00, double 5.000000e+00>, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x double> <double 6.000000e+00, double 7.000000e+00>, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x double> <double 8.000000e+00, double 9.000000e+00>, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <2 x double> <double 1.000000e+01, double 1.100000e+01>, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <2 x double> <double 1.200000e+01, double 1.300000e+01>, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x double> <double 1.400000e+01, double 1.500000e+01>, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x double> <double 1.600000e+01, double 1.700000e+01>, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store <2 x double> <double 1.800000e+01, double 1.900000e+01>, ptr %15, align 8
  %16 = sub i64 %4, %5
  %diff.check = icmp ugt i64 %16, -16
  %17 = sub i64 %4, %6
  %diff.check4 = icmp ugt i64 %17, -16
  %conflict.rdx = or i1 %diff.check, %diff.check4
  %18 = sub i64 %5, %6
  %diff.check5 = icmp ugt i64 %18, -16
  %conflict.rdx6 = or i1 %conflict.rdx, %diff.check5
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block
  %indvars.iv38 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next39, %middle.block ]
  %19 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv38
  %20 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv38
  %21 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv38
  br i1 %conflict.rdx6, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv38, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %22 = add nuw nsw <2 x i64> %vec.ind, splat (i64 1)
  %23 = mul nuw nsw <2 x i64> %22, %broadcast.splat
  %24 = trunc nuw nsw <2 x i64> %23 to <2 x i32>
  %25 = uitofp nneg <2 x i32> %24 to <2 x double>
  %26 = fdiv <2 x double> %25, splat (double 2.000000e+01)
  %27 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %index
  store <2 x double> %26, ptr %27, align 8
  %28 = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %29 = mul nuw nsw <2 x i64> %28, %broadcast.splat
  %30 = trunc nuw nsw <2 x i64> %29 to <2 x i32>
  %31 = uitofp nneg <2 x i32> %30 to <2 x double>
  %32 = fdiv <2 x double> %31, splat (double 3.000000e+01)
  %33 = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %index
  store <2 x double> %32, ptr %33, align 8
  %34 = add nuw nsw <2 x i64> %vec.ind, splat (i64 3)
  %35 = mul nuw nsw <2 x i64> %34, %broadcast.splat
  %36 = trunc nuw nsw <2 x i64> %35 to <2 x i32>
  %37 = uitofp nneg <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, splat (double 2.000000e+01)
  %39 = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index
  store <2 x double> %38, ptr %39, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %40 = icmp eq i64 %index.next, 30
  br i1 %40, label %middle.block, label %vector.body, !llvm.loop !7

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %41 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv
  %42 = add nuw nsw i64 %indvars.iv, 2
  %43 = mul nuw nsw i64 %indvars.iv.next, %indvars.iv38
  %44 = trunc nuw nsw i64 %43 to i32
  %45 = uitofp nneg i32 %44 to double
  %46 = mul nuw nsw i64 %42, %indvars.iv38
  %47 = trunc nuw nsw i64 %46 to i32
  %48 = uitofp nneg i32 %47 to double
  %49 = insertelement <2 x double> poison, double %45, i64 0
  %50 = insertelement <2 x double> %49, double %48, i64 1
  %51 = fdiv <2 x double> %50, <double 2.000000e+01, double 3.000000e+01>
  %52 = extractelement <2 x double> %51, i64 0
  store double %52, ptr %41, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %indvars.iv
  %54 = extractelement <2 x double> %51, i64 1
  store double %54, ptr %53, align 8
  %55 = add nuw nsw i64 %indvars.iv, 3
  %56 = mul nuw nsw i64 %55, %indvars.iv38
  %57 = trunc nuw nsw i64 %56 to i32
  %58 = uitofp nneg i32 %57 to double
  %59 = fdiv double %58, 2.000000e+01
  %60 = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %indvars.iv
  store double %59, ptr %60, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !12

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 20
  br i1 %exitcond41.not, label %61, label %.preheader, !llvm.loop !14

61:                                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_fdtd_2d(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((0, 240)) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #3 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 216
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 232
  %34 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %35 = insertelement <2 x ptr> %34, ptr %1, i64 1
  %36 = getelementptr i8, <2 x ptr> %35, <2 x i64> <i64 4560, i64 4792>
  %scevgep7 = getelementptr i8, ptr %2, i64 4552
  %37 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %38 = shufflevector <2 x ptr> %37, <2 x ptr> poison, <2 x i32> zeroinitializer
  %39 = icmp ult <2 x ptr> %38, %36
  %40 = insertelement <2 x ptr> poison, ptr %scevgep7, i64 0
  %41 = shufflevector <2 x ptr> %40, <2 x ptr> poison, <2 x i32> zeroinitializer
  %42 = icmp ult <2 x ptr> %35, %41
  %43 = and <2 x i1> %39, %42
  %44 = bitcast <2 x i1> %43 to i2
  %.not = icmp eq i2 %44, 0
  br label %.preheader70

.preheader70:                                     ; preds = %4, %702
  %indvars.iv98 = phi i64 [ 0, %4 ], [ %indvars.iv.next99, %702 ]
  %45 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv98
  %46 = load double, ptr %45, align 8
  store double %46, ptr %1, align 8
  store double %46, ptr %5, align 8
  %47 = load double, ptr %45, align 8
  store double %47, ptr %6, align 8
  store double %47, ptr %7, align 8
  %48 = load double, ptr %45, align 8
  store double %48, ptr %8, align 8
  store double %48, ptr %9, align 8
  %49 = load double, ptr %45, align 8
  store double %49, ptr %10, align 8
  store double %49, ptr %11, align 8
  %50 = load double, ptr %45, align 8
  store double %50, ptr %12, align 8
  store double %50, ptr %13, align 8
  %51 = load double, ptr %45, align 8
  store double %51, ptr %14, align 8
  store double %51, ptr %15, align 8
  %52 = load double, ptr %45, align 8
  store double %52, ptr %16, align 8
  store double %52, ptr %17, align 8
  %53 = load double, ptr %45, align 8
  store double %53, ptr %18, align 8
  store double %53, ptr %19, align 8
  %54 = load double, ptr %45, align 8
  store double %54, ptr %20, align 8
  store double %54, ptr %21, align 8
  %55 = load double, ptr %45, align 8
  store double %55, ptr %22, align 8
  store double %55, ptr %23, align 8
  %56 = load double, ptr %45, align 8
  store double %56, ptr %24, align 8
  store double %56, ptr %25, align 8
  %57 = load double, ptr %45, align 8
  store double %57, ptr %26, align 8
  store double %57, ptr %27, align 8
  %58 = load double, ptr %45, align 8
  store double %58, ptr %28, align 8
  store double %58, ptr %29, align 8
  %59 = load double, ptr %45, align 8
  store double %59, ptr %30, align 8
  store double %59, ptr %31, align 8
  %60 = load double, ptr %45, align 8
  store double %60, ptr %32, align 8
  store double %60, ptr %33, align 8
  br label %.preheader66

.preheader66:                                     ; preds = %.preheader70, %.preheader66
  %indvars.iv = phi i64 [ 1, %.preheader70 ], [ %indvars.iv.next, %.preheader66 ]
  %61 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv
  %62 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv
  %63 = getelementptr i8, ptr %62, i64 -240
  %64 = load double, ptr %61, align 8
  %65 = load double, ptr %62, align 8
  %66 = load double, ptr %63, align 8
  %67 = fsub double %65, %66
  %68 = tail call double @llvm.fmuladd.f64(double %67, double -5.000000e-01, double %64)
  store double %68, ptr %61, align 8
  %69 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %72 = load double, ptr %71, align 8
  %73 = getelementptr i8, ptr %62, i64 -232
  %74 = load double, ptr %73, align 8
  %75 = fsub double %72, %74
  %76 = tail call double @llvm.fmuladd.f64(double %75, double -5.000000e-01, double %70)
  store double %76, ptr %69, align 8
  %77 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %78 = load double, ptr %77, align 8
  %79 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %80 = load double, ptr %79, align 8
  %81 = getelementptr i8, ptr %62, i64 -224
  %82 = load double, ptr %81, align 8
  %83 = fsub double %80, %82
  %84 = tail call double @llvm.fmuladd.f64(double %83, double -5.000000e-01, double %78)
  store double %84, ptr %77, align 8
  %85 = getelementptr inbounds nuw i8, ptr %61, i64 24
  %86 = load double, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %88 = load double, ptr %87, align 8
  %89 = getelementptr i8, ptr %62, i64 -216
  %90 = load double, ptr %89, align 8
  %91 = fsub double %88, %90
  %92 = tail call double @llvm.fmuladd.f64(double %91, double -5.000000e-01, double %86)
  store double %92, ptr %85, align 8
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %94 = load double, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %96 = load double, ptr %95, align 8
  %97 = getelementptr i8, ptr %62, i64 -208
  %98 = load double, ptr %97, align 8
  %99 = fsub double %96, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double -5.000000e-01, double %94)
  store double %100, ptr %93, align 8
  %101 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %102 = load double, ptr %101, align 8
  %103 = getelementptr inbounds nuw i8, ptr %62, i64 40
  %104 = load double, ptr %103, align 8
  %105 = getelementptr i8, ptr %62, i64 -200
  %106 = load double, ptr %105, align 8
  %107 = fsub double %104, %106
  %108 = tail call double @llvm.fmuladd.f64(double %107, double -5.000000e-01, double %102)
  store double %108, ptr %101, align 8
  %109 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %110 = load double, ptr %109, align 8
  %111 = getelementptr inbounds nuw i8, ptr %62, i64 48
  %112 = load double, ptr %111, align 8
  %113 = getelementptr i8, ptr %62, i64 -192
  %114 = load double, ptr %113, align 8
  %115 = fsub double %112, %114
  %116 = tail call double @llvm.fmuladd.f64(double %115, double -5.000000e-01, double %110)
  store double %116, ptr %109, align 8
  %117 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %118 = load double, ptr %117, align 8
  %119 = getelementptr inbounds nuw i8, ptr %62, i64 56
  %120 = load double, ptr %119, align 8
  %121 = getelementptr i8, ptr %62, i64 -184
  %122 = load double, ptr %121, align 8
  %123 = fsub double %120, %122
  %124 = tail call double @llvm.fmuladd.f64(double %123, double -5.000000e-01, double %118)
  store double %124, ptr %117, align 8
  %125 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %126 = load double, ptr %125, align 8
  %127 = getelementptr inbounds nuw i8, ptr %62, i64 64
  %128 = load double, ptr %127, align 8
  %129 = getelementptr i8, ptr %62, i64 -176
  %130 = load double, ptr %129, align 8
  %131 = fsub double %128, %130
  %132 = tail call double @llvm.fmuladd.f64(double %131, double -5.000000e-01, double %126)
  store double %132, ptr %125, align 8
  %133 = getelementptr inbounds nuw i8, ptr %61, i64 72
  %134 = load double, ptr %133, align 8
  %135 = getelementptr inbounds nuw i8, ptr %62, i64 72
  %136 = load double, ptr %135, align 8
  %137 = getelementptr i8, ptr %62, i64 -168
  %138 = load double, ptr %137, align 8
  %139 = fsub double %136, %138
  %140 = tail call double @llvm.fmuladd.f64(double %139, double -5.000000e-01, double %134)
  store double %140, ptr %133, align 8
  %141 = getelementptr inbounds nuw i8, ptr %61, i64 80
  %142 = load double, ptr %141, align 8
  %143 = getelementptr inbounds nuw i8, ptr %62, i64 80
  %144 = load double, ptr %143, align 8
  %145 = getelementptr i8, ptr %62, i64 -160
  %146 = load double, ptr %145, align 8
  %147 = fsub double %144, %146
  %148 = tail call double @llvm.fmuladd.f64(double %147, double -5.000000e-01, double %142)
  store double %148, ptr %141, align 8
  %149 = getelementptr inbounds nuw i8, ptr %61, i64 88
  %150 = load double, ptr %149, align 8
  %151 = getelementptr inbounds nuw i8, ptr %62, i64 88
  %152 = load double, ptr %151, align 8
  %153 = getelementptr i8, ptr %62, i64 -152
  %154 = load double, ptr %153, align 8
  %155 = fsub double %152, %154
  %156 = tail call double @llvm.fmuladd.f64(double %155, double -5.000000e-01, double %150)
  store double %156, ptr %149, align 8
  %157 = getelementptr inbounds nuw i8, ptr %61, i64 96
  %158 = load double, ptr %157, align 8
  %159 = getelementptr inbounds nuw i8, ptr %62, i64 96
  %160 = load double, ptr %159, align 8
  %161 = getelementptr i8, ptr %62, i64 -144
  %162 = load double, ptr %161, align 8
  %163 = fsub double %160, %162
  %164 = tail call double @llvm.fmuladd.f64(double %163, double -5.000000e-01, double %158)
  store double %164, ptr %157, align 8
  %165 = getelementptr inbounds nuw i8, ptr %61, i64 104
  %166 = load double, ptr %165, align 8
  %167 = getelementptr inbounds nuw i8, ptr %62, i64 104
  %168 = load double, ptr %167, align 8
  %169 = getelementptr i8, ptr %62, i64 -136
  %170 = load double, ptr %169, align 8
  %171 = fsub double %168, %170
  %172 = tail call double @llvm.fmuladd.f64(double %171, double -5.000000e-01, double %166)
  store double %172, ptr %165, align 8
  %173 = getelementptr inbounds nuw i8, ptr %61, i64 112
  %174 = load double, ptr %173, align 8
  %175 = getelementptr inbounds nuw i8, ptr %62, i64 112
  %176 = load double, ptr %175, align 8
  %177 = getelementptr i8, ptr %62, i64 -128
  %178 = load double, ptr %177, align 8
  %179 = fsub double %176, %178
  %180 = tail call double @llvm.fmuladd.f64(double %179, double -5.000000e-01, double %174)
  store double %180, ptr %173, align 8
  %181 = getelementptr inbounds nuw i8, ptr %61, i64 120
  %182 = load double, ptr %181, align 8
  %183 = getelementptr inbounds nuw i8, ptr %62, i64 120
  %184 = load double, ptr %183, align 8
  %185 = getelementptr i8, ptr %62, i64 -120
  %186 = load double, ptr %185, align 8
  %187 = fsub double %184, %186
  %188 = tail call double @llvm.fmuladd.f64(double %187, double -5.000000e-01, double %182)
  store double %188, ptr %181, align 8
  %189 = getelementptr inbounds nuw i8, ptr %61, i64 128
  %190 = load double, ptr %189, align 8
  %191 = getelementptr inbounds nuw i8, ptr %62, i64 128
  %192 = load double, ptr %191, align 8
  %193 = getelementptr i8, ptr %62, i64 -112
  %194 = load double, ptr %193, align 8
  %195 = fsub double %192, %194
  %196 = tail call double @llvm.fmuladd.f64(double %195, double -5.000000e-01, double %190)
  store double %196, ptr %189, align 8
  %197 = getelementptr inbounds nuw i8, ptr %61, i64 136
  %198 = load double, ptr %197, align 8
  %199 = getelementptr inbounds nuw i8, ptr %62, i64 136
  %200 = load double, ptr %199, align 8
  %201 = getelementptr i8, ptr %62, i64 -104
  %202 = load double, ptr %201, align 8
  %203 = fsub double %200, %202
  %204 = tail call double @llvm.fmuladd.f64(double %203, double -5.000000e-01, double %198)
  store double %204, ptr %197, align 8
  %205 = getelementptr inbounds nuw i8, ptr %61, i64 144
  %206 = load double, ptr %205, align 8
  %207 = getelementptr inbounds nuw i8, ptr %62, i64 144
  %208 = load double, ptr %207, align 8
  %209 = getelementptr i8, ptr %62, i64 -96
  %210 = load double, ptr %209, align 8
  %211 = fsub double %208, %210
  %212 = tail call double @llvm.fmuladd.f64(double %211, double -5.000000e-01, double %206)
  store double %212, ptr %205, align 8
  %213 = getelementptr inbounds nuw i8, ptr %61, i64 152
  %214 = load double, ptr %213, align 8
  %215 = getelementptr inbounds nuw i8, ptr %62, i64 152
  %216 = load double, ptr %215, align 8
  %217 = getelementptr i8, ptr %62, i64 -88
  %218 = load double, ptr %217, align 8
  %219 = fsub double %216, %218
  %220 = tail call double @llvm.fmuladd.f64(double %219, double -5.000000e-01, double %214)
  store double %220, ptr %213, align 8
  %221 = getelementptr inbounds nuw i8, ptr %61, i64 160
  %222 = load double, ptr %221, align 8
  %223 = getelementptr inbounds nuw i8, ptr %62, i64 160
  %224 = load double, ptr %223, align 8
  %225 = getelementptr i8, ptr %62, i64 -80
  %226 = load double, ptr %225, align 8
  %227 = fsub double %224, %226
  %228 = tail call double @llvm.fmuladd.f64(double %227, double -5.000000e-01, double %222)
  store double %228, ptr %221, align 8
  %229 = getelementptr inbounds nuw i8, ptr %61, i64 168
  %230 = load double, ptr %229, align 8
  %231 = getelementptr inbounds nuw i8, ptr %62, i64 168
  %232 = load double, ptr %231, align 8
  %233 = getelementptr i8, ptr %62, i64 -72
  %234 = load double, ptr %233, align 8
  %235 = fsub double %232, %234
  %236 = tail call double @llvm.fmuladd.f64(double %235, double -5.000000e-01, double %230)
  store double %236, ptr %229, align 8
  %237 = getelementptr inbounds nuw i8, ptr %61, i64 176
  %238 = load double, ptr %237, align 8
  %239 = getelementptr inbounds nuw i8, ptr %62, i64 176
  %240 = load double, ptr %239, align 8
  %241 = getelementptr i8, ptr %62, i64 -64
  %242 = load double, ptr %241, align 8
  %243 = fsub double %240, %242
  %244 = tail call double @llvm.fmuladd.f64(double %243, double -5.000000e-01, double %238)
  store double %244, ptr %237, align 8
  %245 = getelementptr inbounds nuw i8, ptr %61, i64 184
  %246 = load double, ptr %245, align 8
  %247 = getelementptr inbounds nuw i8, ptr %62, i64 184
  %248 = load double, ptr %247, align 8
  %249 = getelementptr i8, ptr %62, i64 -56
  %250 = load double, ptr %249, align 8
  %251 = fsub double %248, %250
  %252 = tail call double @llvm.fmuladd.f64(double %251, double -5.000000e-01, double %246)
  store double %252, ptr %245, align 8
  %253 = getelementptr inbounds nuw i8, ptr %61, i64 192
  %254 = load double, ptr %253, align 8
  %255 = getelementptr inbounds nuw i8, ptr %62, i64 192
  %256 = load double, ptr %255, align 8
  %257 = getelementptr i8, ptr %62, i64 -48
  %258 = load double, ptr %257, align 8
  %259 = fsub double %256, %258
  %260 = tail call double @llvm.fmuladd.f64(double %259, double -5.000000e-01, double %254)
  store double %260, ptr %253, align 8
  %261 = getelementptr inbounds nuw i8, ptr %61, i64 200
  %262 = load double, ptr %261, align 8
  %263 = getelementptr inbounds nuw i8, ptr %62, i64 200
  %264 = load double, ptr %263, align 8
  %265 = getelementptr i8, ptr %62, i64 -40
  %266 = load double, ptr %265, align 8
  %267 = fsub double %264, %266
  %268 = tail call double @llvm.fmuladd.f64(double %267, double -5.000000e-01, double %262)
  store double %268, ptr %261, align 8
  %269 = getelementptr inbounds nuw i8, ptr %61, i64 208
  %270 = load double, ptr %269, align 8
  %271 = getelementptr inbounds nuw i8, ptr %62, i64 208
  %272 = load double, ptr %271, align 8
  %273 = getelementptr i8, ptr %62, i64 -32
  %274 = load double, ptr %273, align 8
  %275 = fsub double %272, %274
  %276 = tail call double @llvm.fmuladd.f64(double %275, double -5.000000e-01, double %270)
  store double %276, ptr %269, align 8
  %277 = getelementptr inbounds nuw i8, ptr %61, i64 216
  %278 = load double, ptr %277, align 8
  %279 = getelementptr inbounds nuw i8, ptr %62, i64 216
  %280 = load double, ptr %279, align 8
  %281 = getelementptr i8, ptr %62, i64 -24
  %282 = load double, ptr %281, align 8
  %283 = fsub double %280, %282
  %284 = tail call double @llvm.fmuladd.f64(double %283, double -5.000000e-01, double %278)
  store double %284, ptr %277, align 8
  %285 = getelementptr inbounds nuw i8, ptr %61, i64 224
  %286 = load double, ptr %285, align 8
  %287 = getelementptr inbounds nuw i8, ptr %62, i64 224
  %288 = load double, ptr %287, align 8
  %289 = getelementptr i8, ptr %62, i64 -16
  %290 = load double, ptr %289, align 8
  %291 = fsub double %288, %290
  %292 = tail call double @llvm.fmuladd.f64(double %291, double -5.000000e-01, double %286)
  store double %292, ptr %285, align 8
  %293 = getelementptr inbounds nuw i8, ptr %61, i64 232
  %294 = load double, ptr %293, align 8
  %295 = getelementptr inbounds nuw i8, ptr %62, i64 232
  %296 = load double, ptr %295, align 8
  %297 = getelementptr i8, ptr %62, i64 -8
  %298 = load double, ptr %297, align 8
  %299 = fsub double %296, %298
  %300 = tail call double @llvm.fmuladd.f64(double %299, double -5.000000e-01, double %294)
  store double %300, ptr %293, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %.preheader65, label %.preheader66, !llvm.loop !15

.preheader65:                                     ; preds = %.preheader66, %.preheader65
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.preheader65 ], [ 0, %.preheader66 ]
  %301 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv86
  %302 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv86
  %303 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %304 = load double, ptr %303, align 8
  %305 = getelementptr inbounds nuw i8, ptr %302, i64 8
  %306 = load double, ptr %305, align 8
  %307 = load double, ptr %302, align 8
  %308 = fsub double %306, %307
  %309 = tail call double @llvm.fmuladd.f64(double %308, double -5.000000e-01, double %304)
  store double %309, ptr %303, align 8
  %310 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %311 = load double, ptr %310, align 8
  %312 = getelementptr inbounds nuw i8, ptr %302, i64 16
  %313 = load double, ptr %312, align 8
  %314 = getelementptr i8, ptr %302, i64 8
  %315 = load double, ptr %314, align 8
  %316 = fsub double %313, %315
  %317 = tail call double @llvm.fmuladd.f64(double %316, double -5.000000e-01, double %311)
  store double %317, ptr %310, align 8
  %318 = getelementptr inbounds nuw i8, ptr %301, i64 24
  %319 = load double, ptr %318, align 8
  %320 = getelementptr inbounds nuw i8, ptr %302, i64 24
  %321 = load double, ptr %320, align 8
  %322 = getelementptr i8, ptr %302, i64 16
  %323 = load double, ptr %322, align 8
  %324 = fsub double %321, %323
  %325 = tail call double @llvm.fmuladd.f64(double %324, double -5.000000e-01, double %319)
  store double %325, ptr %318, align 8
  %326 = getelementptr inbounds nuw i8, ptr %301, i64 32
  %327 = load double, ptr %326, align 8
  %328 = getelementptr inbounds nuw i8, ptr %302, i64 32
  %329 = load double, ptr %328, align 8
  %330 = getelementptr i8, ptr %302, i64 24
  %331 = load double, ptr %330, align 8
  %332 = fsub double %329, %331
  %333 = tail call double @llvm.fmuladd.f64(double %332, double -5.000000e-01, double %327)
  store double %333, ptr %326, align 8
  %334 = getelementptr inbounds nuw i8, ptr %301, i64 40
  %335 = load double, ptr %334, align 8
  %336 = getelementptr inbounds nuw i8, ptr %302, i64 40
  %337 = load double, ptr %336, align 8
  %338 = getelementptr i8, ptr %302, i64 32
  %339 = load double, ptr %338, align 8
  %340 = fsub double %337, %339
  %341 = tail call double @llvm.fmuladd.f64(double %340, double -5.000000e-01, double %335)
  store double %341, ptr %334, align 8
  %342 = getelementptr inbounds nuw i8, ptr %301, i64 48
  %343 = load double, ptr %342, align 8
  %344 = getelementptr inbounds nuw i8, ptr %302, i64 48
  %345 = load double, ptr %344, align 8
  %346 = getelementptr i8, ptr %302, i64 40
  %347 = load double, ptr %346, align 8
  %348 = fsub double %345, %347
  %349 = tail call double @llvm.fmuladd.f64(double %348, double -5.000000e-01, double %343)
  store double %349, ptr %342, align 8
  %350 = getelementptr inbounds nuw i8, ptr %301, i64 56
  %351 = load double, ptr %350, align 8
  %352 = getelementptr inbounds nuw i8, ptr %302, i64 56
  %353 = load double, ptr %352, align 8
  %354 = getelementptr i8, ptr %302, i64 48
  %355 = load double, ptr %354, align 8
  %356 = fsub double %353, %355
  %357 = tail call double @llvm.fmuladd.f64(double %356, double -5.000000e-01, double %351)
  store double %357, ptr %350, align 8
  %358 = getelementptr inbounds nuw i8, ptr %301, i64 64
  %359 = load double, ptr %358, align 8
  %360 = getelementptr inbounds nuw i8, ptr %302, i64 64
  %361 = load double, ptr %360, align 8
  %362 = getelementptr i8, ptr %302, i64 56
  %363 = load double, ptr %362, align 8
  %364 = fsub double %361, %363
  %365 = tail call double @llvm.fmuladd.f64(double %364, double -5.000000e-01, double %359)
  store double %365, ptr %358, align 8
  %366 = getelementptr inbounds nuw i8, ptr %301, i64 72
  %367 = load double, ptr %366, align 8
  %368 = getelementptr inbounds nuw i8, ptr %302, i64 72
  %369 = load double, ptr %368, align 8
  %370 = getelementptr i8, ptr %302, i64 64
  %371 = load double, ptr %370, align 8
  %372 = fsub double %369, %371
  %373 = tail call double @llvm.fmuladd.f64(double %372, double -5.000000e-01, double %367)
  store double %373, ptr %366, align 8
  %374 = getelementptr inbounds nuw i8, ptr %301, i64 80
  %375 = load double, ptr %374, align 8
  %376 = getelementptr inbounds nuw i8, ptr %302, i64 80
  %377 = load double, ptr %376, align 8
  %378 = getelementptr i8, ptr %302, i64 72
  %379 = load double, ptr %378, align 8
  %380 = fsub double %377, %379
  %381 = tail call double @llvm.fmuladd.f64(double %380, double -5.000000e-01, double %375)
  store double %381, ptr %374, align 8
  %382 = getelementptr inbounds nuw i8, ptr %301, i64 88
  %383 = load double, ptr %382, align 8
  %384 = getelementptr inbounds nuw i8, ptr %302, i64 88
  %385 = load double, ptr %384, align 8
  %386 = getelementptr i8, ptr %302, i64 80
  %387 = load double, ptr %386, align 8
  %388 = fsub double %385, %387
  %389 = tail call double @llvm.fmuladd.f64(double %388, double -5.000000e-01, double %383)
  store double %389, ptr %382, align 8
  %390 = getelementptr inbounds nuw i8, ptr %301, i64 96
  %391 = load double, ptr %390, align 8
  %392 = getelementptr inbounds nuw i8, ptr %302, i64 96
  %393 = load double, ptr %392, align 8
  %394 = getelementptr i8, ptr %302, i64 88
  %395 = load double, ptr %394, align 8
  %396 = fsub double %393, %395
  %397 = tail call double @llvm.fmuladd.f64(double %396, double -5.000000e-01, double %391)
  store double %397, ptr %390, align 8
  %398 = getelementptr inbounds nuw i8, ptr %301, i64 104
  %399 = load double, ptr %398, align 8
  %400 = getelementptr inbounds nuw i8, ptr %302, i64 104
  %401 = load double, ptr %400, align 8
  %402 = getelementptr i8, ptr %302, i64 96
  %403 = load double, ptr %402, align 8
  %404 = fsub double %401, %403
  %405 = tail call double @llvm.fmuladd.f64(double %404, double -5.000000e-01, double %399)
  store double %405, ptr %398, align 8
  %406 = getelementptr inbounds nuw i8, ptr %301, i64 112
  %407 = load double, ptr %406, align 8
  %408 = getelementptr inbounds nuw i8, ptr %302, i64 112
  %409 = load double, ptr %408, align 8
  %410 = getelementptr i8, ptr %302, i64 104
  %411 = load double, ptr %410, align 8
  %412 = fsub double %409, %411
  %413 = tail call double @llvm.fmuladd.f64(double %412, double -5.000000e-01, double %407)
  store double %413, ptr %406, align 8
  %414 = getelementptr inbounds nuw i8, ptr %301, i64 120
  %415 = load double, ptr %414, align 8
  %416 = getelementptr inbounds nuw i8, ptr %302, i64 120
  %417 = load double, ptr %416, align 8
  %418 = getelementptr i8, ptr %302, i64 112
  %419 = load double, ptr %418, align 8
  %420 = fsub double %417, %419
  %421 = tail call double @llvm.fmuladd.f64(double %420, double -5.000000e-01, double %415)
  store double %421, ptr %414, align 8
  %422 = getelementptr inbounds nuw i8, ptr %301, i64 128
  %423 = load double, ptr %422, align 8
  %424 = getelementptr inbounds nuw i8, ptr %302, i64 128
  %425 = load double, ptr %424, align 8
  %426 = getelementptr i8, ptr %302, i64 120
  %427 = load double, ptr %426, align 8
  %428 = fsub double %425, %427
  %429 = tail call double @llvm.fmuladd.f64(double %428, double -5.000000e-01, double %423)
  store double %429, ptr %422, align 8
  %430 = getelementptr inbounds nuw i8, ptr %301, i64 136
  %431 = load double, ptr %430, align 8
  %432 = getelementptr inbounds nuw i8, ptr %302, i64 136
  %433 = load double, ptr %432, align 8
  %434 = getelementptr i8, ptr %302, i64 128
  %435 = load double, ptr %434, align 8
  %436 = fsub double %433, %435
  %437 = tail call double @llvm.fmuladd.f64(double %436, double -5.000000e-01, double %431)
  store double %437, ptr %430, align 8
  %438 = getelementptr inbounds nuw i8, ptr %301, i64 144
  %439 = load double, ptr %438, align 8
  %440 = getelementptr inbounds nuw i8, ptr %302, i64 144
  %441 = load double, ptr %440, align 8
  %442 = getelementptr i8, ptr %302, i64 136
  %443 = load double, ptr %442, align 8
  %444 = fsub double %441, %443
  %445 = tail call double @llvm.fmuladd.f64(double %444, double -5.000000e-01, double %439)
  store double %445, ptr %438, align 8
  %446 = getelementptr inbounds nuw i8, ptr %301, i64 152
  %447 = load double, ptr %446, align 8
  %448 = getelementptr inbounds nuw i8, ptr %302, i64 152
  %449 = load double, ptr %448, align 8
  %450 = getelementptr i8, ptr %302, i64 144
  %451 = load double, ptr %450, align 8
  %452 = fsub double %449, %451
  %453 = tail call double @llvm.fmuladd.f64(double %452, double -5.000000e-01, double %447)
  store double %453, ptr %446, align 8
  %454 = getelementptr inbounds nuw i8, ptr %301, i64 160
  %455 = load double, ptr %454, align 8
  %456 = getelementptr inbounds nuw i8, ptr %302, i64 160
  %457 = load double, ptr %456, align 8
  %458 = getelementptr i8, ptr %302, i64 152
  %459 = load double, ptr %458, align 8
  %460 = fsub double %457, %459
  %461 = tail call double @llvm.fmuladd.f64(double %460, double -5.000000e-01, double %455)
  store double %461, ptr %454, align 8
  %462 = getelementptr inbounds nuw i8, ptr %301, i64 168
  %463 = load double, ptr %462, align 8
  %464 = getelementptr inbounds nuw i8, ptr %302, i64 168
  %465 = load double, ptr %464, align 8
  %466 = getelementptr i8, ptr %302, i64 160
  %467 = load double, ptr %466, align 8
  %468 = fsub double %465, %467
  %469 = tail call double @llvm.fmuladd.f64(double %468, double -5.000000e-01, double %463)
  store double %469, ptr %462, align 8
  %470 = getelementptr inbounds nuw i8, ptr %301, i64 176
  %471 = load double, ptr %470, align 8
  %472 = getelementptr inbounds nuw i8, ptr %302, i64 176
  %473 = load double, ptr %472, align 8
  %474 = getelementptr i8, ptr %302, i64 168
  %475 = load double, ptr %474, align 8
  %476 = fsub double %473, %475
  %477 = tail call double @llvm.fmuladd.f64(double %476, double -5.000000e-01, double %471)
  store double %477, ptr %470, align 8
  %478 = getelementptr inbounds nuw i8, ptr %301, i64 184
  %479 = load double, ptr %478, align 8
  %480 = getelementptr inbounds nuw i8, ptr %302, i64 184
  %481 = load double, ptr %480, align 8
  %482 = getelementptr i8, ptr %302, i64 176
  %483 = load double, ptr %482, align 8
  %484 = fsub double %481, %483
  %485 = tail call double @llvm.fmuladd.f64(double %484, double -5.000000e-01, double %479)
  store double %485, ptr %478, align 8
  %486 = getelementptr inbounds nuw i8, ptr %301, i64 192
  %487 = load double, ptr %486, align 8
  %488 = getelementptr inbounds nuw i8, ptr %302, i64 192
  %489 = load double, ptr %488, align 8
  %490 = getelementptr i8, ptr %302, i64 184
  %491 = load double, ptr %490, align 8
  %492 = fsub double %489, %491
  %493 = tail call double @llvm.fmuladd.f64(double %492, double -5.000000e-01, double %487)
  store double %493, ptr %486, align 8
  %494 = getelementptr inbounds nuw i8, ptr %301, i64 200
  %495 = load double, ptr %494, align 8
  %496 = getelementptr inbounds nuw i8, ptr %302, i64 200
  %497 = load double, ptr %496, align 8
  %498 = getelementptr i8, ptr %302, i64 192
  %499 = load double, ptr %498, align 8
  %500 = fsub double %497, %499
  %501 = tail call double @llvm.fmuladd.f64(double %500, double -5.000000e-01, double %495)
  store double %501, ptr %494, align 8
  %502 = getelementptr inbounds nuw i8, ptr %301, i64 208
  %503 = load double, ptr %502, align 8
  %504 = getelementptr inbounds nuw i8, ptr %302, i64 208
  %505 = load double, ptr %504, align 8
  %506 = getelementptr i8, ptr %302, i64 200
  %507 = load double, ptr %506, align 8
  %508 = fsub double %505, %507
  %509 = tail call double @llvm.fmuladd.f64(double %508, double -5.000000e-01, double %503)
  store double %509, ptr %502, align 8
  %510 = getelementptr inbounds nuw i8, ptr %301, i64 216
  %511 = load double, ptr %510, align 8
  %512 = getelementptr inbounds nuw i8, ptr %302, i64 216
  %513 = load double, ptr %512, align 8
  %514 = getelementptr i8, ptr %302, i64 208
  %515 = load double, ptr %514, align 8
  %516 = fsub double %513, %515
  %517 = tail call double @llvm.fmuladd.f64(double %516, double -5.000000e-01, double %511)
  store double %517, ptr %510, align 8
  %518 = getelementptr inbounds nuw i8, ptr %301, i64 224
  %519 = load double, ptr %518, align 8
  %520 = getelementptr inbounds nuw i8, ptr %302, i64 224
  %521 = load double, ptr %520, align 8
  %522 = getelementptr i8, ptr %302, i64 216
  %523 = load double, ptr %522, align 8
  %524 = fsub double %521, %523
  %525 = tail call double @llvm.fmuladd.f64(double %524, double -5.000000e-01, double %519)
  store double %525, ptr %518, align 8
  %526 = getelementptr inbounds nuw i8, ptr %301, i64 232
  %527 = load double, ptr %526, align 8
  %528 = getelementptr inbounds nuw i8, ptr %302, i64 232
  %529 = load double, ptr %528, align 8
  %530 = getelementptr i8, ptr %302, i64 224
  %531 = load double, ptr %530, align 8
  %532 = fsub double %529, %531
  %533 = tail call double @llvm.fmuladd.f64(double %532, double -5.000000e-01, double %527)
  store double %533, ptr %526, align 8
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, 20
  br i1 %exitcond89.not, label %.preheader, label %.preheader65, !llvm.loop !16

.preheader:                                       ; preds = %.preheader65, %.unr-lcssa
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.unr-lcssa ], [ 0, %.preheader65 ]
  %534 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv94
  %535 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv94
  %536 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv94
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 240
  br i1 %.not, label %vector.body, label %scalar.ph.prol

vector.body:                                      ; preds = %.preheader
  %538 = getelementptr inbounds nuw i8, ptr %534, i64 16
  %wide.load = load <2 x double>, ptr %534, align 8, !alias.scope !17, !noalias !20
  %wide.load11 = load <2 x double>, ptr %538, align 8, !alias.scope !17, !noalias !20
  %539 = getelementptr inbounds nuw i8, ptr %535, i64 8
  %540 = getelementptr inbounds nuw i8, ptr %535, i64 24
  %wide.load12 = load <2 x double>, ptr %539, align 8, !alias.scope !23
  %wide.load13 = load <2 x double>, ptr %540, align 8, !alias.scope !23
  %541 = getelementptr inbounds nuw i8, ptr %535, i64 16
  %wide.load14 = load <2 x double>, ptr %535, align 8, !alias.scope !23
  %wide.load15 = load <2 x double>, ptr %541, align 8, !alias.scope !23
  %542 = fsub <2 x double> %wide.load12, %wide.load14
  %543 = fsub <2 x double> %wide.load13, %wide.load15
  %544 = getelementptr inbounds nuw i8, ptr %536, i64 256
  %wide.load16 = load <2 x double>, ptr %537, align 8, !alias.scope !24
  %wide.load17 = load <2 x double>, ptr %544, align 8, !alias.scope !24
  %545 = fadd <2 x double> %542, %wide.load16
  %546 = fadd <2 x double> %543, %wide.load17
  %547 = getelementptr inbounds nuw i8, ptr %536, i64 16
  %wide.load18 = load <2 x double>, ptr %536, align 8, !alias.scope !24
  %wide.load19 = load <2 x double>, ptr %547, align 8, !alias.scope !24
  %548 = fsub <2 x double> %545, %wide.load18
  %549 = fsub <2 x double> %546, %wide.load19
  %550 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %548, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load)
  %551 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %549, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load11)
  store <2 x double> %550, ptr %534, align 8, !alias.scope !17, !noalias !20
  store <2 x double> %551, ptr %538, align 8, !alias.scope !17, !noalias !20
  %552 = getelementptr inbounds nuw i8, ptr %534, i64 32
  %553 = getelementptr inbounds nuw i8, ptr %534, i64 48
  %wide.load.1 = load <2 x double>, ptr %552, align 8, !alias.scope !17, !noalias !20
  %wide.load11.1 = load <2 x double>, ptr %553, align 8, !alias.scope !17, !noalias !20
  %554 = getelementptr inbounds nuw i8, ptr %535, i64 40
  %555 = getelementptr inbounds nuw i8, ptr %535, i64 56
  %wide.load12.1 = load <2 x double>, ptr %554, align 8, !alias.scope !23
  %wide.load13.1 = load <2 x double>, ptr %555, align 8, !alias.scope !23
  %556 = getelementptr inbounds nuw i8, ptr %535, i64 32
  %557 = getelementptr inbounds nuw i8, ptr %535, i64 48
  %wide.load14.1 = load <2 x double>, ptr %556, align 8, !alias.scope !23
  %wide.load15.1 = load <2 x double>, ptr %557, align 8, !alias.scope !23
  %558 = fsub <2 x double> %wide.load12.1, %wide.load14.1
  %559 = fsub <2 x double> %wide.load13.1, %wide.load15.1
  %560 = getelementptr inbounds nuw i8, ptr %536, i64 272
  %561 = getelementptr inbounds nuw i8, ptr %536, i64 288
  %wide.load16.1 = load <2 x double>, ptr %560, align 8, !alias.scope !24
  %wide.load17.1 = load <2 x double>, ptr %561, align 8, !alias.scope !24
  %562 = fadd <2 x double> %558, %wide.load16.1
  %563 = fadd <2 x double> %559, %wide.load17.1
  %564 = getelementptr inbounds nuw i8, ptr %536, i64 32
  %565 = getelementptr inbounds nuw i8, ptr %536, i64 48
  %wide.load18.1 = load <2 x double>, ptr %564, align 8, !alias.scope !24
  %wide.load19.1 = load <2 x double>, ptr %565, align 8, !alias.scope !24
  %566 = fsub <2 x double> %562, %wide.load18.1
  %567 = fsub <2 x double> %563, %wide.load19.1
  %568 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %566, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load.1)
  %569 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %567, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load11.1)
  store <2 x double> %568, ptr %552, align 8, !alias.scope !17, !noalias !20
  store <2 x double> %569, ptr %553, align 8, !alias.scope !17, !noalias !20
  %570 = getelementptr inbounds nuw i8, ptr %534, i64 64
  %571 = getelementptr inbounds nuw i8, ptr %534, i64 80
  %wide.load.2 = load <2 x double>, ptr %570, align 8, !alias.scope !17, !noalias !20
  %wide.load11.2 = load <2 x double>, ptr %571, align 8, !alias.scope !17, !noalias !20
  %572 = getelementptr inbounds nuw i8, ptr %535, i64 72
  %573 = getelementptr inbounds nuw i8, ptr %535, i64 88
  %wide.load12.2 = load <2 x double>, ptr %572, align 8, !alias.scope !23
  %wide.load13.2 = load <2 x double>, ptr %573, align 8, !alias.scope !23
  %574 = getelementptr inbounds nuw i8, ptr %535, i64 64
  %575 = getelementptr inbounds nuw i8, ptr %535, i64 80
  %wide.load14.2 = load <2 x double>, ptr %574, align 8, !alias.scope !23
  %wide.load15.2 = load <2 x double>, ptr %575, align 8, !alias.scope !23
  %576 = fsub <2 x double> %wide.load12.2, %wide.load14.2
  %577 = fsub <2 x double> %wide.load13.2, %wide.load15.2
  %578 = getelementptr inbounds nuw i8, ptr %536, i64 304
  %579 = getelementptr inbounds nuw i8, ptr %536, i64 320
  %wide.load16.2 = load <2 x double>, ptr %578, align 8, !alias.scope !24
  %wide.load17.2 = load <2 x double>, ptr %579, align 8, !alias.scope !24
  %580 = fadd <2 x double> %576, %wide.load16.2
  %581 = fadd <2 x double> %577, %wide.load17.2
  %582 = getelementptr inbounds nuw i8, ptr %536, i64 64
  %583 = getelementptr inbounds nuw i8, ptr %536, i64 80
  %wide.load18.2 = load <2 x double>, ptr %582, align 8, !alias.scope !24
  %wide.load19.2 = load <2 x double>, ptr %583, align 8, !alias.scope !24
  %584 = fsub <2 x double> %580, %wide.load18.2
  %585 = fsub <2 x double> %581, %wide.load19.2
  %586 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %584, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load.2)
  %587 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %585, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load11.2)
  store <2 x double> %586, ptr %570, align 8, !alias.scope !17, !noalias !20
  store <2 x double> %587, ptr %571, align 8, !alias.scope !17, !noalias !20
  %588 = getelementptr inbounds nuw i8, ptr %534, i64 96
  %589 = getelementptr inbounds nuw i8, ptr %534, i64 112
  %wide.load.3 = load <2 x double>, ptr %588, align 8, !alias.scope !17, !noalias !20
  %wide.load11.3 = load <2 x double>, ptr %589, align 8, !alias.scope !17, !noalias !20
  %590 = getelementptr inbounds nuw i8, ptr %535, i64 104
  %591 = getelementptr inbounds nuw i8, ptr %535, i64 120
  %wide.load12.3 = load <2 x double>, ptr %590, align 8, !alias.scope !23
  %wide.load13.3 = load <2 x double>, ptr %591, align 8, !alias.scope !23
  %592 = getelementptr inbounds nuw i8, ptr %535, i64 96
  %593 = getelementptr inbounds nuw i8, ptr %535, i64 112
  %wide.load14.3 = load <2 x double>, ptr %592, align 8, !alias.scope !23
  %wide.load15.3 = load <2 x double>, ptr %593, align 8, !alias.scope !23
  %594 = fsub <2 x double> %wide.load12.3, %wide.load14.3
  %595 = fsub <2 x double> %wide.load13.3, %wide.load15.3
  %596 = getelementptr inbounds nuw i8, ptr %536, i64 336
  %597 = getelementptr inbounds nuw i8, ptr %536, i64 352
  %wide.load16.3 = load <2 x double>, ptr %596, align 8, !alias.scope !24
  %wide.load17.3 = load <2 x double>, ptr %597, align 8, !alias.scope !24
  %598 = fadd <2 x double> %594, %wide.load16.3
  %599 = fadd <2 x double> %595, %wide.load17.3
  %600 = getelementptr inbounds nuw i8, ptr %536, i64 96
  %601 = getelementptr inbounds nuw i8, ptr %536, i64 112
  %wide.load18.3 = load <2 x double>, ptr %600, align 8, !alias.scope !24
  %wide.load19.3 = load <2 x double>, ptr %601, align 8, !alias.scope !24
  %602 = fsub <2 x double> %598, %wide.load18.3
  %603 = fsub <2 x double> %599, %wide.load19.3
  %604 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %602, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load.3)
  %605 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %603, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load11.3)
  store <2 x double> %604, ptr %588, align 8, !alias.scope !17, !noalias !20
  store <2 x double> %605, ptr %589, align 8, !alias.scope !17, !noalias !20
  %606 = getelementptr inbounds nuw i8, ptr %534, i64 128
  %607 = getelementptr inbounds nuw i8, ptr %534, i64 144
  %wide.load.4 = load <2 x double>, ptr %606, align 8, !alias.scope !17, !noalias !20
  %wide.load11.4 = load <2 x double>, ptr %607, align 8, !alias.scope !17, !noalias !20
  %608 = getelementptr inbounds nuw i8, ptr %535, i64 136
  %609 = getelementptr inbounds nuw i8, ptr %535, i64 152
  %wide.load12.4 = load <2 x double>, ptr %608, align 8, !alias.scope !23
  %wide.load13.4 = load <2 x double>, ptr %609, align 8, !alias.scope !23
  %610 = getelementptr inbounds nuw i8, ptr %535, i64 128
  %611 = getelementptr inbounds nuw i8, ptr %535, i64 144
  %wide.load14.4 = load <2 x double>, ptr %610, align 8, !alias.scope !23
  %wide.load15.4 = load <2 x double>, ptr %611, align 8, !alias.scope !23
  %612 = fsub <2 x double> %wide.load12.4, %wide.load14.4
  %613 = fsub <2 x double> %wide.load13.4, %wide.load15.4
  %614 = getelementptr inbounds nuw i8, ptr %536, i64 368
  %615 = getelementptr inbounds nuw i8, ptr %536, i64 384
  %wide.load16.4 = load <2 x double>, ptr %614, align 8, !alias.scope !24
  %wide.load17.4 = load <2 x double>, ptr %615, align 8, !alias.scope !24
  %616 = fadd <2 x double> %612, %wide.load16.4
  %617 = fadd <2 x double> %613, %wide.load17.4
  %618 = getelementptr inbounds nuw i8, ptr %536, i64 128
  %619 = getelementptr inbounds nuw i8, ptr %536, i64 144
  %wide.load18.4 = load <2 x double>, ptr %618, align 8, !alias.scope !24
  %wide.load19.4 = load <2 x double>, ptr %619, align 8, !alias.scope !24
  %620 = fsub <2 x double> %616, %wide.load18.4
  %621 = fsub <2 x double> %617, %wide.load19.4
  %622 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %620, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load.4)
  %623 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %621, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load11.4)
  store <2 x double> %622, ptr %606, align 8, !alias.scope !17, !noalias !20
  store <2 x double> %623, ptr %607, align 8, !alias.scope !17, !noalias !20
  %624 = getelementptr inbounds nuw i8, ptr %534, i64 160
  %625 = getelementptr inbounds nuw i8, ptr %534, i64 176
  %wide.load.5 = load <2 x double>, ptr %624, align 8, !alias.scope !17, !noalias !20
  %wide.load11.5 = load <2 x double>, ptr %625, align 8, !alias.scope !17, !noalias !20
  %626 = getelementptr inbounds nuw i8, ptr %535, i64 168
  %627 = getelementptr inbounds nuw i8, ptr %535, i64 184
  %wide.load12.5 = load <2 x double>, ptr %626, align 8, !alias.scope !23
  %wide.load13.5 = load <2 x double>, ptr %627, align 8, !alias.scope !23
  %628 = getelementptr inbounds nuw i8, ptr %535, i64 160
  %629 = getelementptr inbounds nuw i8, ptr %535, i64 176
  %wide.load14.5 = load <2 x double>, ptr %628, align 8, !alias.scope !23
  %wide.load15.5 = load <2 x double>, ptr %629, align 8, !alias.scope !23
  %630 = fsub <2 x double> %wide.load12.5, %wide.load14.5
  %631 = fsub <2 x double> %wide.load13.5, %wide.load15.5
  %632 = getelementptr inbounds nuw i8, ptr %536, i64 400
  %633 = getelementptr inbounds nuw i8, ptr %536, i64 416
  %wide.load16.5 = load <2 x double>, ptr %632, align 8, !alias.scope !24
  %wide.load17.5 = load <2 x double>, ptr %633, align 8, !alias.scope !24
  %634 = fadd <2 x double> %630, %wide.load16.5
  %635 = fadd <2 x double> %631, %wide.load17.5
  %636 = getelementptr inbounds nuw i8, ptr %536, i64 160
  %637 = getelementptr inbounds nuw i8, ptr %536, i64 176
  %wide.load18.5 = load <2 x double>, ptr %636, align 8, !alias.scope !24
  %wide.load19.5 = load <2 x double>, ptr %637, align 8, !alias.scope !24
  %638 = fsub <2 x double> %634, %wide.load18.5
  %639 = fsub <2 x double> %635, %wide.load19.5
  %640 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %638, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load.5)
  %641 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %639, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load11.5)
  store <2 x double> %640, ptr %624, align 8, !alias.scope !17, !noalias !20
  store <2 x double> %641, ptr %625, align 8, !alias.scope !17, !noalias !20
  %642 = getelementptr inbounds nuw i8, ptr %534, i64 192
  %643 = getelementptr inbounds nuw i8, ptr %534, i64 208
  %wide.load.6 = load <2 x double>, ptr %642, align 8, !alias.scope !17, !noalias !20
  %wide.load11.6 = load <2 x double>, ptr %643, align 8, !alias.scope !17, !noalias !20
  %644 = getelementptr inbounds nuw i8, ptr %535, i64 200
  %645 = getelementptr inbounds nuw i8, ptr %535, i64 216
  %wide.load12.6 = load <2 x double>, ptr %644, align 8, !alias.scope !23
  %wide.load13.6 = load <2 x double>, ptr %645, align 8, !alias.scope !23
  %646 = getelementptr inbounds nuw i8, ptr %535, i64 192
  %647 = getelementptr inbounds nuw i8, ptr %535, i64 208
  %wide.load14.6 = load <2 x double>, ptr %646, align 8, !alias.scope !23
  %wide.load15.6 = load <2 x double>, ptr %647, align 8, !alias.scope !23
  %648 = fsub <2 x double> %wide.load12.6, %wide.load14.6
  %649 = fsub <2 x double> %wide.load13.6, %wide.load15.6
  %650 = getelementptr inbounds nuw i8, ptr %536, i64 432
  %651 = getelementptr inbounds nuw i8, ptr %536, i64 448
  %wide.load16.6 = load <2 x double>, ptr %650, align 8, !alias.scope !24
  %wide.load17.6 = load <2 x double>, ptr %651, align 8, !alias.scope !24
  %652 = fadd <2 x double> %648, %wide.load16.6
  %653 = fadd <2 x double> %649, %wide.load17.6
  %654 = getelementptr inbounds nuw i8, ptr %536, i64 192
  %655 = getelementptr inbounds nuw i8, ptr %536, i64 208
  %wide.load18.6 = load <2 x double>, ptr %654, align 8, !alias.scope !24
  %wide.load19.6 = load <2 x double>, ptr %655, align 8, !alias.scope !24
  %656 = fsub <2 x double> %652, %wide.load18.6
  %657 = fsub <2 x double> %653, %wide.load19.6
  %658 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %656, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load.6)
  %659 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %657, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load11.6)
  store <2 x double> %658, ptr %642, align 8, !alias.scope !17, !noalias !20
  store <2 x double> %659, ptr %643, align 8, !alias.scope !17, !noalias !20
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %vector.body, %.preheader
  %indvars.iv90.ph = phi i64 [ 0, %.preheader ], [ 28, %vector.body ]
  %660 = getelementptr inbounds nuw [8 x i8], ptr %534, i64 %indvars.iv90.ph
  %661 = load double, ptr %660, align 8
  %indvars.iv.next91.prol = or disjoint i64 %indvars.iv90.ph, 1
  %662 = getelementptr inbounds nuw [8 x i8], ptr %535, i64 %indvars.iv.next91.prol
  %663 = load double, ptr %662, align 8
  %664 = getelementptr inbounds nuw [8 x i8], ptr %535, i64 %indvars.iv90.ph
  %665 = load double, ptr %664, align 8
  %666 = fsub double %663, %665
  %667 = getelementptr inbounds nuw [8 x i8], ptr %537, i64 %indvars.iv90.ph
  %668 = load double, ptr %667, align 8
  %669 = fadd double %666, %668
  %670 = getelementptr inbounds nuw [8 x i8], ptr %536, i64 %indvars.iv90.ph
  %671 = load double, ptr %670, align 8
  %672 = fsub double %669, %671
  %673 = tail call double @llvm.fmuladd.f64(double %672, double f0xBFE6666666666666, double %661)
  store double %673, ptr %660, align 8
  br i1 %.not, label %.unr-lcssa, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol, %scalar.ph
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.1, %scalar.ph ], [ %indvars.iv.next91.prol, %scalar.ph.prol ]
  %674 = getelementptr inbounds nuw [8 x i8], ptr %534, i64 %indvars.iv90
  %675 = load double, ptr %674, align 8
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %676 = getelementptr inbounds nuw [8 x i8], ptr %535, i64 %indvars.iv.next91
  %677 = load double, ptr %676, align 8
  %678 = getelementptr inbounds nuw [8 x i8], ptr %535, i64 %indvars.iv90
  %679 = load double, ptr %678, align 8
  %680 = fsub double %677, %679
  %681 = getelementptr inbounds nuw [8 x i8], ptr %537, i64 %indvars.iv90
  %682 = load double, ptr %681, align 8
  %683 = fadd double %680, %682
  %684 = getelementptr inbounds nuw [8 x i8], ptr %536, i64 %indvars.iv90
  %685 = load double, ptr %684, align 8
  %686 = fsub double %683, %685
  %687 = tail call double @llvm.fmuladd.f64(double %686, double f0xBFE6666666666666, double %675)
  store double %687, ptr %674, align 8
  %688 = getelementptr inbounds nuw [8 x i8], ptr %534, i64 %indvars.iv.next91
  %689 = load double, ptr %688, align 8
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2
  %690 = getelementptr inbounds nuw [8 x i8], ptr %535, i64 %indvars.iv.next91.1
  %691 = load double, ptr %690, align 8
  %692 = getelementptr inbounds nuw [8 x i8], ptr %535, i64 %indvars.iv.next91
  %693 = load double, ptr %692, align 8
  %694 = fsub double %691, %693
  %695 = getelementptr inbounds nuw [8 x i8], ptr %537, i64 %indvars.iv.next91
  %696 = load double, ptr %695, align 8
  %697 = fadd double %694, %696
  %698 = getelementptr inbounds nuw [8 x i8], ptr %536, i64 %indvars.iv.next91
  %699 = load double, ptr %698, align 8
  %700 = fsub double %697, %699
  %701 = tail call double @llvm.fmuladd.f64(double %700, double f0xBFE6666666666666, double %689)
  store double %701, ptr %688, align 8
  %exitcond93.not.1 = icmp eq i64 %indvars.iv.next91.1, 29
  br i1 %exitcond93.not.1, label %.unr-lcssa, label %scalar.ph, !llvm.loop !25

.unr-lcssa:                                       ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next95, 19
  br i1 %exitcond97.not, label %702, label %.preheader, !llvm.loop !26

702:                                              ; preds = %.unr-lcssa
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next99, 20
  br i1 %exitcond101.not, label %703, label %.preheader70, !llvm.loop !27

703:                                              ; preds = %702
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
  %4 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %4)
  %5 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_02KJEENMNI@ex?$AA@") #9
  br label %.preheader47

.preheader47:                                     ; preds = %3, %21
  %indvars.iv55 = phi i64 [ 0, %3 ], [ %indvars.iv.next56, %21 ]
  %7 = mul nuw nsw i64 %indvars.iv55, 20
  %8 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv55
  br label %9

9:                                                ; preds = %.preheader47, %16
  %indvars.iv = phi i64 [ 0, %.preheader47 ], [ %indvars.iv.next, %16 ]
  %10 = add nuw nsw i64 %indvars.iv, %7
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = urem i32 %11, 20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc45 = tail call i32 @fputc(i32 10, ptr %15)
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %18 = load double, ptr %17, align 8
  %19 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %18) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %21, label %9, !llvm.loop !28

21:                                               ; preds = %16
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, 20
  br i1 %exitcond58.not, label %22, label %.preheader47, !llvm.loop !29

22:                                               ; preds = %21
  %23 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_02KJEENMNI@ex?$AA@") #9
  %25 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %25)
  %26 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_02LAFPONJJ@ey?$AA@") #9
  br label %.preheader46

.preheader46:                                     ; preds = %22, %42
  %indvars.iv63 = phi i64 [ 0, %22 ], [ %indvars.iv.next64, %42 ]
  %28 = mul nuw nsw i64 %indvars.iv63, 20
  %29 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv63
  br label %30

30:                                               ; preds = %.preheader46, %37
  %indvars.iv59 = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next60, %37 ]
  %31 = add nuw nsw i64 %indvars.iv59, %28
  %32 = trunc nuw nsw i64 %31 to i32
  %33 = urem i32 %32, 20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc43 = tail call i32 @fputc(i32 10, ptr %36)
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %indvars.iv59
  %39 = load double, ptr %38, align 8
  %40 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %39) #9
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 30
  br i1 %exitcond62.not, label %42, label %30, !llvm.loop !30

42:                                               ; preds = %37
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 20
  br i1 %exitcond66.not, label %43, label %.preheader46, !llvm.loop !31

43:                                               ; preds = %42
  %44 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_02LAFPONJJ@ey?$AA@") #9
  %46 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_02JDKKCNAJ@hz?$AA@") #9
  br label %.preheader

.preheader:                                       ; preds = %43, %62
  %indvars.iv71 = phi i64 [ 0, %43 ], [ %indvars.iv.next72, %62 ]
  %48 = mul nuw nsw i64 %indvars.iv71, 20
  %49 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv71
  br label %50

50:                                               ; preds = %.preheader, %57
  %indvars.iv67 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next68, %57 ]
  %51 = add nuw nsw i64 %indvars.iv67, %48
  %52 = trunc nuw nsw i64 %51 to i32
  %53 = urem i32 %52, 20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %56)
  br label %57

57:                                               ; preds = %55, %50
  %58 = getelementptr inbounds nuw [8 x i8], ptr %49, i64 %indvars.iv67
  %59 = load double, ptr %58, align 8
  %60 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %59) #9
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, 30
  br i1 %exitcond70.not, label %62, label %50, !llvm.loop !32

62:                                               ; preds = %57
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 20
  br i1 %exitcond74.not, label %63, label %.preheader, !llvm.loop !33

63:                                               ; preds = %62
  %64 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_02JDKKCNAJ@hz?$AA@") #9
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\fdtd-2d\\fdtd-2d.c", directory: "C:\\work\\llvm-profitability-research")
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
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = !{!21, !22}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!21}
!24 = !{!22}
!25 = distinct !{!25, !8, !9, !13}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
