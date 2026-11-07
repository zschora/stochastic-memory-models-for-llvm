; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\covariance\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\covariance\\covariance.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_03MNMGCKGD@cov?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_03MNMGCKGD@cov?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"cov\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 896, i32 noundef 8) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 784, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 28, i32 noundef 8) #8
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  %7 = load double, ptr %3, align 8
  tail call fastcc void @kernel_covariance(double noundef %7, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %8 = icmp sgt i32 %0, 42
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %10, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %9
  tail call fastcc void @print_array(ptr noundef %5)
  br label %12

12:                                               ; preds = %11, %9, %2
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #2 {
  store double 3.200000e+01, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %2, %.preheader
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %.preheader ]
  %3 = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %indvars.iv
  store double 0.000000e+00, ptr %3, align 8
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %6 = shl nuw nsw i32 %indvars.iv.tr, 1
  %7 = uitofp nneg i32 %4 to double
  %8 = uitofp nneg i32 %6 to double
  %9 = insertelement <2 x double> poison, double %7, i64 0
  %10 = insertelement <2 x double> %9, double %8, i64 1
  %11 = fdiv <2 x double> %10, splat (double 2.800000e+01)
  store <2 x double> %11, ptr %5, align 8
  %12 = trunc i64 %indvars.iv to i32
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %indvars.iv.tr15 = trunc nuw nsw i64 %indvars.iv to i32
  %14 = mul i32 %12, 3
  %15 = uitofp nneg i32 %14 to double
  %16 = shl nuw nsw i32 %indvars.iv.tr15, 2
  %17 = uitofp nneg i32 %16 to double
  %18 = insertelement <2 x double> poison, double %15, i64 0
  %19 = insertelement <2 x double> %18, double %17, i64 1
  %20 = fdiv <2 x double> %19, splat (double 2.800000e+01)
  store <2 x double> %20, ptr %13, align 8
  %21 = trunc i64 %indvars.iv to i32
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %23 = trunc i64 %indvars.iv to i32
  %24 = mul i32 %21, 5
  %25 = uitofp nneg i32 %24 to double
  %26 = mul i32 %23, 6
  %27 = uitofp nneg i32 %26 to double
  %28 = insertelement <2 x double> poison, double %25, i64 0
  %29 = insertelement <2 x double> %28, double %27, i64 1
  %30 = fdiv <2 x double> %29, splat (double 2.800000e+01)
  store <2 x double> %30, ptr %22, align 8
  %31 = trunc i64 %indvars.iv to i32
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %indvars.iv.tr16 = trunc nuw nsw i64 %indvars.iv to i32
  %33 = mul i32 %31, 7
  %34 = uitofp nneg i32 %33 to double
  %35 = shl nuw nsw i32 %indvars.iv.tr16, 3
  %36 = uitofp nneg i32 %35 to double
  %37 = insertelement <2 x double> poison, double %34, i64 0
  %38 = insertelement <2 x double> %37, double %36, i64 1
  %39 = fdiv <2 x double> %38, splat (double 2.800000e+01)
  store <2 x double> %39, ptr %32, align 8
  %40 = trunc i64 %indvars.iv to i32
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %42 = trunc i64 %indvars.iv to i32
  %43 = mul i32 %40, 9
  %44 = uitofp nneg i32 %43 to double
  %45 = mul i32 %42, 10
  %46 = uitofp nneg i32 %45 to double
  %47 = insertelement <2 x double> poison, double %44, i64 0
  %48 = insertelement <2 x double> %47, double %46, i64 1
  %49 = fdiv <2 x double> %48, splat (double 2.800000e+01)
  store <2 x double> %49, ptr %41, align 8
  %50 = trunc i64 %indvars.iv to i32
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %52 = trunc i64 %indvars.iv to i32
  %53 = mul i32 %50, 11
  %54 = uitofp nneg i32 %53 to double
  %55 = mul i32 %52, 12
  %56 = uitofp nneg i32 %55 to double
  %57 = insertelement <2 x double> poison, double %54, i64 0
  %58 = insertelement <2 x double> %57, double %56, i64 1
  %59 = fdiv <2 x double> %58, splat (double 2.800000e+01)
  store <2 x double> %59, ptr %51, align 8
  %60 = trunc i64 %indvars.iv to i32
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %62 = trunc i64 %indvars.iv to i32
  %63 = mul i32 %60, 13
  %64 = uitofp nneg i32 %63 to double
  %65 = mul i32 %62, 14
  %66 = uitofp nneg i32 %65 to double
  %67 = insertelement <2 x double> poison, double %64, i64 0
  %68 = insertelement <2 x double> %67, double %66, i64 1
  %69 = fdiv <2 x double> %68, splat (double 2.800000e+01)
  store <2 x double> %69, ptr %61, align 8
  %70 = trunc i64 %indvars.iv to i32
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %indvars.iv.tr17 = trunc nuw nsw i64 %indvars.iv to i32
  %72 = mul i32 %70, 15
  %73 = uitofp nneg i32 %72 to double
  %74 = shl nuw nsw i32 %indvars.iv.tr17, 4
  %75 = uitofp nneg i32 %74 to double
  %76 = insertelement <2 x double> poison, double %73, i64 0
  %77 = insertelement <2 x double> %76, double %75, i64 1
  %78 = fdiv <2 x double> %77, splat (double 2.800000e+01)
  store <2 x double> %78, ptr %71, align 8
  %79 = trunc i64 %indvars.iv to i32
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %81 = trunc i64 %indvars.iv to i32
  %82 = mul i32 %79, 17
  %83 = uitofp nneg i32 %82 to double
  %84 = mul i32 %81, 18
  %85 = uitofp nneg i32 %84 to double
  %86 = insertelement <2 x double> poison, double %83, i64 0
  %87 = insertelement <2 x double> %86, double %85, i64 1
  %88 = fdiv <2 x double> %87, splat (double 2.800000e+01)
  store <2 x double> %88, ptr %80, align 8
  %89 = trunc i64 %indvars.iv to i32
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %91 = trunc i64 %indvars.iv to i32
  %92 = mul i32 %89, 19
  %93 = uitofp nneg i32 %92 to double
  %94 = mul i32 %91, 20
  %95 = uitofp nneg i32 %94 to double
  %96 = insertelement <2 x double> poison, double %93, i64 0
  %97 = insertelement <2 x double> %96, double %95, i64 1
  %98 = fdiv <2 x double> %97, splat (double 2.800000e+01)
  store <2 x double> %98, ptr %90, align 8
  %99 = trunc i64 %indvars.iv to i32
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %101 = trunc i64 %indvars.iv to i32
  %102 = mul i32 %99, 21
  %103 = uitofp nneg i32 %102 to double
  %104 = mul i32 %101, 22
  %105 = uitofp nneg i32 %104 to double
  %106 = insertelement <2 x double> poison, double %103, i64 0
  %107 = insertelement <2 x double> %106, double %105, i64 1
  %108 = fdiv <2 x double> %107, splat (double 2.800000e+01)
  store <2 x double> %108, ptr %100, align 8
  %109 = trunc i64 %indvars.iv to i32
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %111 = trunc i64 %indvars.iv to i32
  %112 = mul i32 %109, 23
  %113 = uitofp nneg i32 %112 to double
  %114 = mul i32 %111, 24
  %115 = uitofp nneg i32 %114 to double
  %116 = insertelement <2 x double> poison, double %113, i64 0
  %117 = insertelement <2 x double> %116, double %115, i64 1
  %118 = fdiv <2 x double> %117, splat (double 2.800000e+01)
  store <2 x double> %118, ptr %110, align 8
  %119 = trunc i64 %indvars.iv to i32
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %121 = trunc i64 %indvars.iv to i32
  %122 = mul i32 %119, 25
  %123 = uitofp nneg i32 %122 to double
  %124 = mul i32 %121, 26
  %125 = uitofp nneg i32 %124 to double
  %126 = insertelement <2 x double> poison, double %123, i64 0
  %127 = insertelement <2 x double> %126, double %125, i64 1
  %128 = fdiv <2 x double> %127, splat (double 2.800000e+01)
  store <2 x double> %128, ptr %120, align 8
  %129 = trunc i64 %indvars.iv to i32
  %130 = mul i32 %129, 27
  %131 = uitofp nneg i32 %130 to double
  %132 = fdiv double %131, 2.800000e+01
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 216
  store double %132, ptr %133, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %134, label %.preheader, !llvm.loop !7

134:                                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_covariance(double noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
vector.memcheck:
  %4 = getelementptr i8, ptr %3, i64 224
  %5 = getelementptr i8, ptr %1, i64 7168
  %bound0 = icmp ult ptr %3, %5
  %bound1 = icmp ult ptr %1, %4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x double> zeroinitializer, ptr %6, align 8, !alias.scope !9, !noalias !12
  %7 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x double>, ptr %7, align 8, !alias.scope !12
  %8 = fadd <2 x double> %wide.load, zeroinitializer
  store <2 x double> %8, ptr %6, align 8, !alias.scope !9, !noalias !12
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 224
  %wide.load2 = load <2 x double>, ptr %9, align 8, !alias.scope !12
  %10 = fadd <2 x double> %wide.load2, %8
  store <2 x double> %10, ptr %6, align 8, !alias.scope !9, !noalias !12
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 448
  %wide.load3 = load <2 x double>, ptr %11, align 8, !alias.scope !12
  %12 = fadd <2 x double> %wide.load3, %10
  store <2 x double> %12, ptr %6, align 8, !alias.scope !9, !noalias !12
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 672
  %wide.load4 = load <2 x double>, ptr %13, align 8, !alias.scope !12
  %14 = fadd <2 x double> %wide.load4, %12
  store <2 x double> %14, ptr %6, align 8, !alias.scope !9, !noalias !12
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 896
  %wide.load5 = load <2 x double>, ptr %15, align 8, !alias.scope !12
  %16 = fadd <2 x double> %wide.load5, %14
  store <2 x double> %16, ptr %6, align 8, !alias.scope !9, !noalias !12
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 1120
  %wide.load6 = load <2 x double>, ptr %17, align 8, !alias.scope !12
  %18 = fadd <2 x double> %wide.load6, %16
  store <2 x double> %18, ptr %6, align 8, !alias.scope !9, !noalias !12
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 1344
  %wide.load7 = load <2 x double>, ptr %19, align 8, !alias.scope !12
  %20 = fadd <2 x double> %wide.load7, %18
  store <2 x double> %20, ptr %6, align 8, !alias.scope !9, !noalias !12
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 1568
  %wide.load8 = load <2 x double>, ptr %21, align 8, !alias.scope !12
  %22 = fadd <2 x double> %wide.load8, %20
  store <2 x double> %22, ptr %6, align 8, !alias.scope !9, !noalias !12
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 1792
  %wide.load9 = load <2 x double>, ptr %23, align 8, !alias.scope !12
  %24 = fadd <2 x double> %wide.load9, %22
  store <2 x double> %24, ptr %6, align 8, !alias.scope !9, !noalias !12
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 2016
  %wide.load10 = load <2 x double>, ptr %25, align 8, !alias.scope !12
  %26 = fadd <2 x double> %wide.load10, %24
  store <2 x double> %26, ptr %6, align 8, !alias.scope !9, !noalias !12
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 2240
  %wide.load11 = load <2 x double>, ptr %27, align 8, !alias.scope !12
  %28 = fadd <2 x double> %wide.load11, %26
  store <2 x double> %28, ptr %6, align 8, !alias.scope !9, !noalias !12
  %29 = getelementptr inbounds nuw i8, ptr %7, i64 2464
  %wide.load12 = load <2 x double>, ptr %29, align 8, !alias.scope !12
  %30 = fadd <2 x double> %wide.load12, %28
  store <2 x double> %30, ptr %6, align 8, !alias.scope !9, !noalias !12
  %31 = getelementptr inbounds nuw i8, ptr %7, i64 2688
  %wide.load13 = load <2 x double>, ptr %31, align 8, !alias.scope !12
  %32 = fadd <2 x double> %wide.load13, %30
  store <2 x double> %32, ptr %6, align 8, !alias.scope !9, !noalias !12
  %33 = getelementptr inbounds nuw i8, ptr %7, i64 2912
  %wide.load14 = load <2 x double>, ptr %33, align 8, !alias.scope !12
  %34 = fadd <2 x double> %wide.load14, %32
  store <2 x double> %34, ptr %6, align 8, !alias.scope !9, !noalias !12
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 3136
  %wide.load15 = load <2 x double>, ptr %35, align 8, !alias.scope !12
  %36 = fadd <2 x double> %wide.load15, %34
  store <2 x double> %36, ptr %6, align 8, !alias.scope !9, !noalias !12
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %wide.load16 = load <2 x double>, ptr %37, align 8, !alias.scope !12
  %38 = fadd <2 x double> %wide.load16, %36
  store <2 x double> %38, ptr %6, align 8, !alias.scope !9, !noalias !12
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 3584
  %wide.load17 = load <2 x double>, ptr %39, align 8, !alias.scope !12
  %40 = fadd <2 x double> %wide.load17, %38
  store <2 x double> %40, ptr %6, align 8, !alias.scope !9, !noalias !12
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 3808
  %wide.load18 = load <2 x double>, ptr %41, align 8, !alias.scope !12
  %42 = fadd <2 x double> %wide.load18, %40
  store <2 x double> %42, ptr %6, align 8, !alias.scope !9, !noalias !12
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 4032
  %wide.load19 = load <2 x double>, ptr %43, align 8, !alias.scope !12
  %44 = fadd <2 x double> %wide.load19, %42
  store <2 x double> %44, ptr %6, align 8, !alias.scope !9, !noalias !12
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 4256
  %wide.load20 = load <2 x double>, ptr %45, align 8, !alias.scope !12
  %46 = fadd <2 x double> %wide.load20, %44
  store <2 x double> %46, ptr %6, align 8, !alias.scope !9, !noalias !12
  %47 = getelementptr inbounds nuw i8, ptr %7, i64 4480
  %wide.load21 = load <2 x double>, ptr %47, align 8, !alias.scope !12
  %48 = fadd <2 x double> %wide.load21, %46
  store <2 x double> %48, ptr %6, align 8, !alias.scope !9, !noalias !12
  %49 = getelementptr inbounds nuw i8, ptr %7, i64 4704
  %wide.load22 = load <2 x double>, ptr %49, align 8, !alias.scope !12
  %50 = fadd <2 x double> %wide.load22, %48
  store <2 x double> %50, ptr %6, align 8, !alias.scope !9, !noalias !12
  %51 = getelementptr inbounds nuw i8, ptr %7, i64 4928
  %wide.load23 = load <2 x double>, ptr %51, align 8, !alias.scope !12
  %52 = fadd <2 x double> %wide.load23, %50
  store <2 x double> %52, ptr %6, align 8, !alias.scope !9, !noalias !12
  %53 = getelementptr inbounds nuw i8, ptr %7, i64 5152
  %wide.load24 = load <2 x double>, ptr %53, align 8, !alias.scope !12
  %54 = fadd <2 x double> %wide.load24, %52
  store <2 x double> %54, ptr %6, align 8, !alias.scope !9, !noalias !12
  %55 = getelementptr inbounds nuw i8, ptr %7, i64 5376
  %wide.load25 = load <2 x double>, ptr %55, align 8, !alias.scope !12
  %56 = fadd <2 x double> %wide.load25, %54
  store <2 x double> %56, ptr %6, align 8, !alias.scope !9, !noalias !12
  %57 = getelementptr inbounds nuw i8, ptr %7, i64 5600
  %wide.load26 = load <2 x double>, ptr %57, align 8, !alias.scope !12
  %58 = fadd <2 x double> %wide.load26, %56
  store <2 x double> %58, ptr %6, align 8, !alias.scope !9, !noalias !12
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 5824
  %wide.load27 = load <2 x double>, ptr %59, align 8, !alias.scope !12
  %60 = fadd <2 x double> %wide.load27, %58
  store <2 x double> %60, ptr %6, align 8, !alias.scope !9, !noalias !12
  %61 = getelementptr inbounds nuw i8, ptr %7, i64 6048
  %wide.load28 = load <2 x double>, ptr %61, align 8, !alias.scope !12
  %62 = fadd <2 x double> %wide.load28, %60
  store <2 x double> %62, ptr %6, align 8, !alias.scope !9, !noalias !12
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 6272
  %wide.load29 = load <2 x double>, ptr %63, align 8, !alias.scope !12
  %64 = fadd <2 x double> %wide.load29, %62
  store <2 x double> %64, ptr %6, align 8, !alias.scope !9, !noalias !12
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 6496
  %wide.load30 = load <2 x double>, ptr %65, align 8, !alias.scope !12
  %66 = fadd <2 x double> %wide.load30, %64
  store <2 x double> %66, ptr %6, align 8, !alias.scope !9, !noalias !12
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 6720
  %wide.load31 = load <2 x double>, ptr %67, align 8, !alias.scope !12
  %68 = fadd <2 x double> %wide.load31, %66
  store <2 x double> %68, ptr %6, align 8, !alias.scope !9, !noalias !12
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 6944
  %wide.load32 = load <2 x double>, ptr %69, align 8, !alias.scope !12
  %70 = fadd <2 x double> %wide.load32, %68
  %71 = fdiv <2 x double> %70, %broadcast.splat
  store <2 x double> %71, ptr %6, align 8, !alias.scope !9, !noalias !12
  %index.next = add nuw i64 %index, 2
  %72 = icmp eq i64 %index.next, 28
  br i1 %72, label %.preheader56.preheader, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ]
  %73 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double 0.000000e+00, ptr %73, align 8
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %74 = load double, ptr %invariant.gep, align 8
  %75 = fadd double %74, 0.000000e+00
  store double %75, ptr %73, align 8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 224
  %76 = load double, ptr %gep.1, align 8
  %77 = fadd double %76, %75
  store double %77, ptr %73, align 8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 448
  %78 = load double, ptr %gep.2, align 8
  %79 = fadd double %78, %77
  store double %79, ptr %73, align 8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 672
  %80 = load double, ptr %gep.3, align 8
  %81 = fadd double %80, %79
  store double %81, ptr %73, align 8
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 896
  %82 = load double, ptr %gep.4, align 8
  %83 = fadd double %82, %81
  store double %83, ptr %73, align 8
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1120
  %84 = load double, ptr %gep.5, align 8
  %85 = fadd double %84, %83
  store double %85, ptr %73, align 8
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1344
  %86 = load double, ptr %gep.6, align 8
  %87 = fadd double %86, %85
  store double %87, ptr %73, align 8
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1568
  %88 = load double, ptr %gep.7, align 8
  %89 = fadd double %88, %87
  store double %89, ptr %73, align 8
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1792
  %90 = load double, ptr %gep.8, align 8
  %91 = fadd double %90, %89
  store double %91, ptr %73, align 8
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2016
  %92 = load double, ptr %gep.9, align 8
  %93 = fadd double %92, %91
  store double %93, ptr %73, align 8
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2240
  %94 = load double, ptr %gep.10, align 8
  %95 = fadd double %94, %93
  store double %95, ptr %73, align 8
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2464
  %96 = load double, ptr %gep.11, align 8
  %97 = fadd double %96, %95
  store double %97, ptr %73, align 8
  %gep.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2688
  %98 = load double, ptr %gep.12, align 8
  %99 = fadd double %98, %97
  store double %99, ptr %73, align 8
  %gep.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2912
  %100 = load double, ptr %gep.13, align 8
  %101 = fadd double %100, %99
  store double %101, ptr %73, align 8
  %gep.14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3136
  %102 = load double, ptr %gep.14, align 8
  %103 = fadd double %102, %101
  store double %103, ptr %73, align 8
  %gep.15 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3360
  %104 = load double, ptr %gep.15, align 8
  %105 = fadd double %104, %103
  store double %105, ptr %73, align 8
  %gep.16 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3584
  %106 = load double, ptr %gep.16, align 8
  %107 = fadd double %106, %105
  store double %107, ptr %73, align 8
  %gep.17 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3808
  %108 = load double, ptr %gep.17, align 8
  %109 = fadd double %108, %107
  store double %109, ptr %73, align 8
  %gep.18 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4032
  %110 = load double, ptr %gep.18, align 8
  %111 = fadd double %110, %109
  store double %111, ptr %73, align 8
  %gep.19 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4256
  %112 = load double, ptr %gep.19, align 8
  %113 = fadd double %112, %111
  store double %113, ptr %73, align 8
  %gep.20 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4480
  %114 = load double, ptr %gep.20, align 8
  %115 = fadd double %114, %113
  store double %115, ptr %73, align 8
  %gep.21 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4704
  %116 = load double, ptr %gep.21, align 8
  %117 = fadd double %116, %115
  store double %117, ptr %73, align 8
  %gep.22 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4928
  %118 = load double, ptr %gep.22, align 8
  %119 = fadd double %118, %117
  store double %119, ptr %73, align 8
  %gep.23 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5152
  %120 = load double, ptr %gep.23, align 8
  %121 = fadd double %120, %119
  store double %121, ptr %73, align 8
  %gep.24 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5376
  %122 = load double, ptr %gep.24, align 8
  %123 = fadd double %122, %121
  store double %123, ptr %73, align 8
  %gep.25 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5600
  %124 = load double, ptr %gep.25, align 8
  %125 = fadd double %124, %123
  store double %125, ptr %73, align 8
  %gep.26 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5824
  %126 = load double, ptr %gep.26, align 8
  %127 = fadd double %126, %125
  store double %127, ptr %73, align 8
  %gep.27 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6048
  %128 = load double, ptr %gep.27, align 8
  %129 = fadd double %128, %127
  store double %129, ptr %73, align 8
  %gep.28 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6272
  %130 = load double, ptr %gep.28, align 8
  %131 = fadd double %130, %129
  store double %131, ptr %73, align 8
  %gep.29 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6496
  %132 = load double, ptr %gep.29, align 8
  %133 = fadd double %132, %131
  store double %133, ptr %73, align 8
  %gep.30 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6720
  %134 = load double, ptr %gep.30, align 8
  %135 = fadd double %134, %133
  store double %135, ptr %73, align 8
  %gep.31 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6944
  %136 = load double, ptr %gep.31, align 8
  %137 = fadd double %136, %135
  %138 = fdiv double %137, %0
  store double %138, ptr %73, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond.not, label %.preheader56.preheader, label %scalar.ph, !llvm.loop !18

.preheader56.preheader:                           ; preds = %vector.body, %scalar.ph
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 208
  %165 = getelementptr inbounds nuw i8, ptr %3, i64 216
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %.preheader56
  %indvars.iv74 = phi i64 [ 0, %.preheader56.preheader ], [ %indvars.iv.next75, %.preheader56 ]
  %166 = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %indvars.iv74
  %167 = load double, ptr %3, align 8
  %168 = load double, ptr %166, align 8
  %169 = fsub double %168, %167
  store double %169, ptr %166, align 8
  %170 = load double, ptr %139, align 8
  %171 = getelementptr inbounds nuw i8, ptr %166, i64 8
  %172 = load double, ptr %171, align 8
  %173 = fsub double %172, %170
  store double %173, ptr %171, align 8
  %174 = load double, ptr %140, align 8
  %175 = getelementptr inbounds nuw i8, ptr %166, i64 16
  %176 = load double, ptr %175, align 8
  %177 = fsub double %176, %174
  store double %177, ptr %175, align 8
  %178 = load double, ptr %141, align 8
  %179 = getelementptr inbounds nuw i8, ptr %166, i64 24
  %180 = load double, ptr %179, align 8
  %181 = fsub double %180, %178
  store double %181, ptr %179, align 8
  %182 = load double, ptr %142, align 8
  %183 = getelementptr inbounds nuw i8, ptr %166, i64 32
  %184 = load double, ptr %183, align 8
  %185 = fsub double %184, %182
  store double %185, ptr %183, align 8
  %186 = load double, ptr %143, align 8
  %187 = getelementptr inbounds nuw i8, ptr %166, i64 40
  %188 = load double, ptr %187, align 8
  %189 = fsub double %188, %186
  store double %189, ptr %187, align 8
  %190 = load double, ptr %144, align 8
  %191 = getelementptr inbounds nuw i8, ptr %166, i64 48
  %192 = load double, ptr %191, align 8
  %193 = fsub double %192, %190
  store double %193, ptr %191, align 8
  %194 = load double, ptr %145, align 8
  %195 = getelementptr inbounds nuw i8, ptr %166, i64 56
  %196 = load double, ptr %195, align 8
  %197 = fsub double %196, %194
  store double %197, ptr %195, align 8
  %198 = load double, ptr %146, align 8
  %199 = getelementptr inbounds nuw i8, ptr %166, i64 64
  %200 = load double, ptr %199, align 8
  %201 = fsub double %200, %198
  store double %201, ptr %199, align 8
  %202 = load double, ptr %147, align 8
  %203 = getelementptr inbounds nuw i8, ptr %166, i64 72
  %204 = load double, ptr %203, align 8
  %205 = fsub double %204, %202
  store double %205, ptr %203, align 8
  %206 = load double, ptr %148, align 8
  %207 = getelementptr inbounds nuw i8, ptr %166, i64 80
  %208 = load double, ptr %207, align 8
  %209 = fsub double %208, %206
  store double %209, ptr %207, align 8
  %210 = load double, ptr %149, align 8
  %211 = getelementptr inbounds nuw i8, ptr %166, i64 88
  %212 = load double, ptr %211, align 8
  %213 = fsub double %212, %210
  store double %213, ptr %211, align 8
  %214 = load double, ptr %150, align 8
  %215 = getelementptr inbounds nuw i8, ptr %166, i64 96
  %216 = load double, ptr %215, align 8
  %217 = fsub double %216, %214
  store double %217, ptr %215, align 8
  %218 = load double, ptr %151, align 8
  %219 = getelementptr inbounds nuw i8, ptr %166, i64 104
  %220 = load double, ptr %219, align 8
  %221 = fsub double %220, %218
  store double %221, ptr %219, align 8
  %222 = load double, ptr %152, align 8
  %223 = getelementptr inbounds nuw i8, ptr %166, i64 112
  %224 = load double, ptr %223, align 8
  %225 = fsub double %224, %222
  store double %225, ptr %223, align 8
  %226 = load double, ptr %153, align 8
  %227 = getelementptr inbounds nuw i8, ptr %166, i64 120
  %228 = load double, ptr %227, align 8
  %229 = fsub double %228, %226
  store double %229, ptr %227, align 8
  %230 = load double, ptr %154, align 8
  %231 = getelementptr inbounds nuw i8, ptr %166, i64 128
  %232 = load double, ptr %231, align 8
  %233 = fsub double %232, %230
  store double %233, ptr %231, align 8
  %234 = load double, ptr %155, align 8
  %235 = getelementptr inbounds nuw i8, ptr %166, i64 136
  %236 = load double, ptr %235, align 8
  %237 = fsub double %236, %234
  store double %237, ptr %235, align 8
  %238 = load double, ptr %156, align 8
  %239 = getelementptr inbounds nuw i8, ptr %166, i64 144
  %240 = load double, ptr %239, align 8
  %241 = fsub double %240, %238
  store double %241, ptr %239, align 8
  %242 = load double, ptr %157, align 8
  %243 = getelementptr inbounds nuw i8, ptr %166, i64 152
  %244 = load double, ptr %243, align 8
  %245 = fsub double %244, %242
  store double %245, ptr %243, align 8
  %246 = load double, ptr %158, align 8
  %247 = getelementptr inbounds nuw i8, ptr %166, i64 160
  %248 = load double, ptr %247, align 8
  %249 = fsub double %248, %246
  store double %249, ptr %247, align 8
  %250 = load double, ptr %159, align 8
  %251 = getelementptr inbounds nuw i8, ptr %166, i64 168
  %252 = load double, ptr %251, align 8
  %253 = fsub double %252, %250
  store double %253, ptr %251, align 8
  %254 = load double, ptr %160, align 8
  %255 = getelementptr inbounds nuw i8, ptr %166, i64 176
  %256 = load double, ptr %255, align 8
  %257 = fsub double %256, %254
  store double %257, ptr %255, align 8
  %258 = load double, ptr %161, align 8
  %259 = getelementptr inbounds nuw i8, ptr %166, i64 184
  %260 = load double, ptr %259, align 8
  %261 = fsub double %260, %258
  store double %261, ptr %259, align 8
  %262 = load double, ptr %162, align 8
  %263 = getelementptr inbounds nuw i8, ptr %166, i64 192
  %264 = load double, ptr %263, align 8
  %265 = fsub double %264, %262
  store double %265, ptr %263, align 8
  %266 = load double, ptr %163, align 8
  %267 = getelementptr inbounds nuw i8, ptr %166, i64 200
  %268 = load double, ptr %267, align 8
  %269 = fsub double %268, %266
  store double %269, ptr %267, align 8
  %270 = load double, ptr %164, align 8
  %271 = getelementptr inbounds nuw i8, ptr %166, i64 208
  %272 = load double, ptr %271, align 8
  %273 = fsub double %272, %270
  store double %273, ptr %271, align 8
  %274 = load double, ptr %165, align 8
  %275 = getelementptr inbounds nuw i8, ptr %166, i64 216
  %276 = load double, ptr %275, align 8
  %277 = fsub double %276, %274
  store double %277, ptr %275, align 8
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next75, 32
  br i1 %exitcond77.not, label %.preheader55, label %.preheader56, !llvm.loop !20

.preheader55:                                     ; preds = %.preheader56
  %278 = fadd double %0, -1.000000e+00
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 448
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 672
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 896
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 2016
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 2240
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 2688
  %291 = getelementptr inbounds nuw i8, ptr %1, i64 2912
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 3136
  %293 = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %294 = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %295 = getelementptr inbounds nuw i8, ptr %1, i64 3808
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 4032
  %297 = getelementptr inbounds nuw i8, ptr %1, i64 4256
  %298 = getelementptr inbounds nuw i8, ptr %1, i64 4480
  %299 = getelementptr inbounds nuw i8, ptr %1, i64 4704
  %300 = getelementptr inbounds nuw i8, ptr %1, i64 4928
  %301 = getelementptr inbounds nuw i8, ptr %1, i64 5152
  %302 = getelementptr inbounds nuw i8, ptr %1, i64 5376
  %303 = getelementptr inbounds nuw i8, ptr %1, i64 5600
  %304 = getelementptr inbounds nuw i8, ptr %1, i64 5824
  %305 = getelementptr inbounds nuw i8, ptr %1, i64 6048
  %306 = getelementptr inbounds nuw i8, ptr %1, i64 6272
  %307 = getelementptr inbounds nuw i8, ptr %1, i64 6496
  %308 = getelementptr inbounds nuw i8, ptr %1, i64 6720
  %309 = getelementptr inbounds nuw i8, ptr %1, i64 6944
  br label %.preheader

.preheader:                                       ; preds = %.preheader55, %474
  %indvars.iv82 = phi i64 [ 0, %.preheader55 ], [ %indvars.iv.next83, %474 ]
  %310 = getelementptr inbounds nuw [224 x i8], ptr %2, i64 %indvars.iv82
  %invariant.gep65 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv82
  %311 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82
  %312 = getelementptr inbounds nuw [8 x i8], ptr %279, i64 %indvars.iv82
  %313 = getelementptr inbounds nuw [8 x i8], ptr %280, i64 %indvars.iv82
  %314 = getelementptr inbounds nuw [8 x i8], ptr %281, i64 %indvars.iv82
  %315 = getelementptr inbounds nuw [8 x i8], ptr %282, i64 %indvars.iv82
  %316 = getelementptr inbounds nuw [8 x i8], ptr %283, i64 %indvars.iv82
  %317 = getelementptr inbounds nuw [8 x i8], ptr %284, i64 %indvars.iv82
  %318 = getelementptr inbounds nuw [8 x i8], ptr %285, i64 %indvars.iv82
  %319 = getelementptr inbounds nuw [8 x i8], ptr %286, i64 %indvars.iv82
  %320 = getelementptr inbounds nuw [8 x i8], ptr %287, i64 %indvars.iv82
  %321 = getelementptr inbounds nuw [8 x i8], ptr %288, i64 %indvars.iv82
  %322 = getelementptr inbounds nuw [8 x i8], ptr %289, i64 %indvars.iv82
  %323 = getelementptr inbounds nuw [8 x i8], ptr %290, i64 %indvars.iv82
  %324 = getelementptr inbounds nuw [8 x i8], ptr %291, i64 %indvars.iv82
  %325 = getelementptr inbounds nuw [8 x i8], ptr %292, i64 %indvars.iv82
  %326 = getelementptr inbounds nuw [8 x i8], ptr %293, i64 %indvars.iv82
  %327 = getelementptr inbounds nuw [8 x i8], ptr %294, i64 %indvars.iv82
  %328 = getelementptr inbounds nuw [8 x i8], ptr %295, i64 %indvars.iv82
  %329 = getelementptr inbounds nuw [8 x i8], ptr %296, i64 %indvars.iv82
  %330 = getelementptr inbounds nuw [8 x i8], ptr %297, i64 %indvars.iv82
  %331 = getelementptr inbounds nuw [8 x i8], ptr %298, i64 %indvars.iv82
  %332 = getelementptr inbounds nuw [8 x i8], ptr %299, i64 %indvars.iv82
  %333 = getelementptr inbounds nuw [8 x i8], ptr %300, i64 %indvars.iv82
  %334 = getelementptr inbounds nuw [8 x i8], ptr %301, i64 %indvars.iv82
  %335 = getelementptr inbounds nuw [8 x i8], ptr %302, i64 %indvars.iv82
  %336 = getelementptr inbounds nuw [8 x i8], ptr %303, i64 %indvars.iv82
  %337 = getelementptr inbounds nuw [8 x i8], ptr %304, i64 %indvars.iv82
  %338 = getelementptr inbounds nuw [8 x i8], ptr %305, i64 %indvars.iv82
  %339 = getelementptr inbounds nuw [8 x i8], ptr %306, i64 %indvars.iv82
  %340 = getelementptr inbounds nuw [8 x i8], ptr %307, i64 %indvars.iv82
  %341 = getelementptr inbounds nuw [8 x i8], ptr %308, i64 %indvars.iv82
  %342 = getelementptr inbounds nuw [8 x i8], ptr %309, i64 %indvars.iv82
  br label %343

343:                                              ; preds = %.preheader, %343
  %indvars.iv84 = phi i64 [ %indvars.iv82, %.preheader ], [ %indvars.iv.next85, %343 ]
  %344 = getelementptr inbounds nuw [8 x i8], ptr %310, i64 %indvars.iv84
  store double 0.000000e+00, ptr %344, align 8
  %345 = load double, ptr %311, align 8
  %346 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %347 = load double, ptr %346, align 8
  %348 = tail call double @llvm.fmuladd.f64(double %345, double %347, double 0.000000e+00)
  store double %348, ptr %344, align 8
  %349 = load double, ptr %312, align 8
  %350 = getelementptr inbounds nuw [8 x i8], ptr %279, i64 %indvars.iv84
  %351 = load double, ptr %350, align 8
  %352 = tail call double @llvm.fmuladd.f64(double %349, double %351, double %348)
  store double %352, ptr %344, align 8
  %353 = load double, ptr %313, align 8
  %354 = getelementptr inbounds nuw [8 x i8], ptr %280, i64 %indvars.iv84
  %355 = load double, ptr %354, align 8
  %356 = tail call double @llvm.fmuladd.f64(double %353, double %355, double %352)
  store double %356, ptr %344, align 8
  %357 = load double, ptr %314, align 8
  %358 = getelementptr inbounds nuw [8 x i8], ptr %281, i64 %indvars.iv84
  %359 = load double, ptr %358, align 8
  %360 = tail call double @llvm.fmuladd.f64(double %357, double %359, double %356)
  store double %360, ptr %344, align 8
  %361 = load double, ptr %315, align 8
  %362 = getelementptr inbounds nuw [8 x i8], ptr %282, i64 %indvars.iv84
  %363 = load double, ptr %362, align 8
  %364 = tail call double @llvm.fmuladd.f64(double %361, double %363, double %360)
  store double %364, ptr %344, align 8
  %365 = load double, ptr %316, align 8
  %366 = getelementptr inbounds nuw [8 x i8], ptr %283, i64 %indvars.iv84
  %367 = load double, ptr %366, align 8
  %368 = tail call double @llvm.fmuladd.f64(double %365, double %367, double %364)
  store double %368, ptr %344, align 8
  %369 = load double, ptr %317, align 8
  %370 = getelementptr inbounds nuw [8 x i8], ptr %284, i64 %indvars.iv84
  %371 = load double, ptr %370, align 8
  %372 = tail call double @llvm.fmuladd.f64(double %369, double %371, double %368)
  store double %372, ptr %344, align 8
  %373 = load double, ptr %318, align 8
  %374 = getelementptr inbounds nuw [8 x i8], ptr %285, i64 %indvars.iv84
  %375 = load double, ptr %374, align 8
  %376 = tail call double @llvm.fmuladd.f64(double %373, double %375, double %372)
  store double %376, ptr %344, align 8
  %377 = load double, ptr %319, align 8
  %378 = getelementptr inbounds nuw [8 x i8], ptr %286, i64 %indvars.iv84
  %379 = load double, ptr %378, align 8
  %380 = tail call double @llvm.fmuladd.f64(double %377, double %379, double %376)
  store double %380, ptr %344, align 8
  %381 = load double, ptr %320, align 8
  %382 = getelementptr inbounds nuw [8 x i8], ptr %287, i64 %indvars.iv84
  %383 = load double, ptr %382, align 8
  %384 = tail call double @llvm.fmuladd.f64(double %381, double %383, double %380)
  store double %384, ptr %344, align 8
  %385 = load double, ptr %321, align 8
  %386 = getelementptr inbounds nuw [8 x i8], ptr %288, i64 %indvars.iv84
  %387 = load double, ptr %386, align 8
  %388 = tail call double @llvm.fmuladd.f64(double %385, double %387, double %384)
  store double %388, ptr %344, align 8
  %389 = load double, ptr %322, align 8
  %390 = getelementptr inbounds nuw [8 x i8], ptr %289, i64 %indvars.iv84
  %391 = load double, ptr %390, align 8
  %392 = tail call double @llvm.fmuladd.f64(double %389, double %391, double %388)
  store double %392, ptr %344, align 8
  %393 = load double, ptr %323, align 8
  %394 = getelementptr inbounds nuw [8 x i8], ptr %290, i64 %indvars.iv84
  %395 = load double, ptr %394, align 8
  %396 = tail call double @llvm.fmuladd.f64(double %393, double %395, double %392)
  store double %396, ptr %344, align 8
  %397 = load double, ptr %324, align 8
  %398 = getelementptr inbounds nuw [8 x i8], ptr %291, i64 %indvars.iv84
  %399 = load double, ptr %398, align 8
  %400 = tail call double @llvm.fmuladd.f64(double %397, double %399, double %396)
  store double %400, ptr %344, align 8
  %401 = load double, ptr %325, align 8
  %402 = getelementptr inbounds nuw [8 x i8], ptr %292, i64 %indvars.iv84
  %403 = load double, ptr %402, align 8
  %404 = tail call double @llvm.fmuladd.f64(double %401, double %403, double %400)
  store double %404, ptr %344, align 8
  %405 = load double, ptr %326, align 8
  %406 = getelementptr inbounds nuw [8 x i8], ptr %293, i64 %indvars.iv84
  %407 = load double, ptr %406, align 8
  %408 = tail call double @llvm.fmuladd.f64(double %405, double %407, double %404)
  store double %408, ptr %344, align 8
  %409 = load double, ptr %327, align 8
  %410 = getelementptr inbounds nuw [8 x i8], ptr %294, i64 %indvars.iv84
  %411 = load double, ptr %410, align 8
  %412 = tail call double @llvm.fmuladd.f64(double %409, double %411, double %408)
  store double %412, ptr %344, align 8
  %413 = load double, ptr %328, align 8
  %414 = getelementptr inbounds nuw [8 x i8], ptr %295, i64 %indvars.iv84
  %415 = load double, ptr %414, align 8
  %416 = tail call double @llvm.fmuladd.f64(double %413, double %415, double %412)
  store double %416, ptr %344, align 8
  %417 = load double, ptr %329, align 8
  %418 = getelementptr inbounds nuw [8 x i8], ptr %296, i64 %indvars.iv84
  %419 = load double, ptr %418, align 8
  %420 = tail call double @llvm.fmuladd.f64(double %417, double %419, double %416)
  store double %420, ptr %344, align 8
  %421 = load double, ptr %330, align 8
  %422 = getelementptr inbounds nuw [8 x i8], ptr %297, i64 %indvars.iv84
  %423 = load double, ptr %422, align 8
  %424 = tail call double @llvm.fmuladd.f64(double %421, double %423, double %420)
  store double %424, ptr %344, align 8
  %425 = load double, ptr %331, align 8
  %426 = getelementptr inbounds nuw [8 x i8], ptr %298, i64 %indvars.iv84
  %427 = load double, ptr %426, align 8
  %428 = tail call double @llvm.fmuladd.f64(double %425, double %427, double %424)
  store double %428, ptr %344, align 8
  %429 = load double, ptr %332, align 8
  %430 = getelementptr inbounds nuw [8 x i8], ptr %299, i64 %indvars.iv84
  %431 = load double, ptr %430, align 8
  %432 = tail call double @llvm.fmuladd.f64(double %429, double %431, double %428)
  store double %432, ptr %344, align 8
  %433 = load double, ptr %333, align 8
  %434 = getelementptr inbounds nuw [8 x i8], ptr %300, i64 %indvars.iv84
  %435 = load double, ptr %434, align 8
  %436 = tail call double @llvm.fmuladd.f64(double %433, double %435, double %432)
  store double %436, ptr %344, align 8
  %437 = load double, ptr %334, align 8
  %438 = getelementptr inbounds nuw [8 x i8], ptr %301, i64 %indvars.iv84
  %439 = load double, ptr %438, align 8
  %440 = tail call double @llvm.fmuladd.f64(double %437, double %439, double %436)
  store double %440, ptr %344, align 8
  %441 = load double, ptr %335, align 8
  %442 = getelementptr inbounds nuw [8 x i8], ptr %302, i64 %indvars.iv84
  %443 = load double, ptr %442, align 8
  %444 = tail call double @llvm.fmuladd.f64(double %441, double %443, double %440)
  store double %444, ptr %344, align 8
  %445 = load double, ptr %336, align 8
  %446 = getelementptr inbounds nuw [8 x i8], ptr %303, i64 %indvars.iv84
  %447 = load double, ptr %446, align 8
  %448 = tail call double @llvm.fmuladd.f64(double %445, double %447, double %444)
  store double %448, ptr %344, align 8
  %449 = load double, ptr %337, align 8
  %450 = getelementptr inbounds nuw [8 x i8], ptr %304, i64 %indvars.iv84
  %451 = load double, ptr %450, align 8
  %452 = tail call double @llvm.fmuladd.f64(double %449, double %451, double %448)
  store double %452, ptr %344, align 8
  %453 = load double, ptr %338, align 8
  %454 = getelementptr inbounds nuw [8 x i8], ptr %305, i64 %indvars.iv84
  %455 = load double, ptr %454, align 8
  %456 = tail call double @llvm.fmuladd.f64(double %453, double %455, double %452)
  store double %456, ptr %344, align 8
  %457 = load double, ptr %339, align 8
  %458 = getelementptr inbounds nuw [8 x i8], ptr %306, i64 %indvars.iv84
  %459 = load double, ptr %458, align 8
  %460 = tail call double @llvm.fmuladd.f64(double %457, double %459, double %456)
  store double %460, ptr %344, align 8
  %461 = load double, ptr %340, align 8
  %462 = getelementptr inbounds nuw [8 x i8], ptr %307, i64 %indvars.iv84
  %463 = load double, ptr %462, align 8
  %464 = tail call double @llvm.fmuladd.f64(double %461, double %463, double %460)
  store double %464, ptr %344, align 8
  %465 = load double, ptr %341, align 8
  %466 = getelementptr inbounds nuw [8 x i8], ptr %308, i64 %indvars.iv84
  %467 = load double, ptr %466, align 8
  %468 = tail call double @llvm.fmuladd.f64(double %465, double %467, double %464)
  store double %468, ptr %344, align 8
  %469 = load double, ptr %342, align 8
  %470 = getelementptr inbounds nuw [8 x i8], ptr %309, i64 %indvars.iv84
  %471 = load double, ptr %470, align 8
  %472 = tail call double @llvm.fmuladd.f64(double %469, double %471, double %468)
  %473 = fdiv double %472, %278
  store double %473, ptr %344, align 8
  %gep66 = getelementptr inbounds nuw [224 x i8], ptr %invariant.gep65, i64 %indvars.iv84
  store double %473, ptr %gep66, align 8
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 28
  br i1 %exitcond87.not, label %474, label %343, !llvm.loop !21

474:                                              ; preds = %343
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next83, 28
  br i1 %exitcond89.not, label %475, label %.preheader, !llvm.loop !22

475:                                              ; preds = %474
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_03MNMGCKGD@cov?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 28
  %6 = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %indvars.iv18
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !23

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 28
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !24

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_03MNMGCKGD@cov?$AA@") #8
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\covariance\\covariance.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, i1 false, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !8, !15, !16, !17}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.vectorize.body", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !8, !15, !19}
!19 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
