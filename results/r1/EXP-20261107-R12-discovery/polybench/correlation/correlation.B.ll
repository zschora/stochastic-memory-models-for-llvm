; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\correlation\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\correlation\\correlation.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_04MOHGEFGA@corr?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_04MOHGEFGA@corr?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"corr\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 896, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 784, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 28, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 28, i32 noundef 8) #9
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  %8 = load double, ptr %3, align 8
  tail call fastcc void @kernel_correlation(double noundef %8, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %9 = icmp sgt i32 %0, 42
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %11, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %12, label %13

12:                                               ; preds = %10
  tail call fastcc void @print_array(ptr noundef %5)
  br label %13

13:                                               ; preds = %12, %10, %2
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %7)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #2 {
  store double 3.200000e+01, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %2, %.preheader
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %.preheader ]
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  %4 = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %indvars.iv
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %6 = shl nuw nsw i32 %indvars.iv.tr, 1
  %7 = uitofp nneg i32 %3 to double
  store double %7, ptr %4, align 8
  %8 = uitofp nneg i32 %6 to double
  %9 = insertelement <2 x double> poison, double %7, i64 0
  %10 = insertelement <2 x double> %9, double %8, i64 1
  %11 = fdiv <2 x double> %10, splat (double 2.800000e+01)
  %12 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fadd <2 x double> %11, %12
  store <2 x double> %13, ptr %5, align 8
  %14 = trunc i64 %indvars.iv to i32
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %indvars.iv.tr15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = mul i32 %14, 3
  %17 = uitofp nneg i32 %16 to double
  %18 = shl nuw nsw i32 %indvars.iv.tr15, 2
  %19 = uitofp nneg i32 %18 to double
  %20 = insertelement <2 x double> poison, double %17, i64 0
  %21 = insertelement <2 x double> %20, double %19, i64 1
  %22 = fdiv <2 x double> %21, splat (double 2.800000e+01)
  %23 = fadd <2 x double> %22, %12
  store <2 x double> %23, ptr %15, align 8
  %24 = trunc i64 %indvars.iv to i32
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %26 = trunc i64 %indvars.iv to i32
  %27 = mul i32 %24, 5
  %28 = uitofp nneg i32 %27 to double
  %29 = mul i32 %26, 6
  %30 = uitofp nneg i32 %29 to double
  %31 = insertelement <2 x double> poison, double %28, i64 0
  %32 = insertelement <2 x double> %31, double %30, i64 1
  %33 = fdiv <2 x double> %32, splat (double 2.800000e+01)
  %34 = fadd <2 x double> %33, %12
  store <2 x double> %34, ptr %25, align 8
  %35 = trunc i64 %indvars.iv to i32
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %indvars.iv.tr16 = trunc nuw nsw i64 %indvars.iv to i32
  %37 = mul i32 %35, 7
  %38 = uitofp nneg i32 %37 to double
  %39 = shl nuw nsw i32 %indvars.iv.tr16, 3
  %40 = uitofp nneg i32 %39 to double
  %41 = insertelement <2 x double> poison, double %38, i64 0
  %42 = insertelement <2 x double> %41, double %40, i64 1
  %43 = fdiv <2 x double> %42, splat (double 2.800000e+01)
  %44 = fadd <2 x double> %43, %12
  store <2 x double> %44, ptr %36, align 8
  %45 = trunc i64 %indvars.iv to i32
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %47 = trunc i64 %indvars.iv to i32
  %48 = mul i32 %45, 9
  %49 = uitofp nneg i32 %48 to double
  %50 = mul i32 %47, 10
  %51 = uitofp nneg i32 %50 to double
  %52 = insertelement <2 x double> poison, double %49, i64 0
  %53 = insertelement <2 x double> %52, double %51, i64 1
  %54 = fdiv <2 x double> %53, splat (double 2.800000e+01)
  %55 = fadd <2 x double> %54, %12
  store <2 x double> %55, ptr %46, align 8
  %56 = trunc i64 %indvars.iv to i32
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %58 = trunc i64 %indvars.iv to i32
  %59 = mul i32 %56, 11
  %60 = uitofp nneg i32 %59 to double
  %61 = mul i32 %58, 12
  %62 = uitofp nneg i32 %61 to double
  %63 = insertelement <2 x double> poison, double %60, i64 0
  %64 = insertelement <2 x double> %63, double %62, i64 1
  %65 = fdiv <2 x double> %64, splat (double 2.800000e+01)
  %66 = fadd <2 x double> %65, %12
  store <2 x double> %66, ptr %57, align 8
  %67 = trunc i64 %indvars.iv to i32
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %69 = trunc i64 %indvars.iv to i32
  %70 = mul i32 %67, 13
  %71 = uitofp nneg i32 %70 to double
  %72 = mul i32 %69, 14
  %73 = uitofp nneg i32 %72 to double
  %74 = insertelement <2 x double> poison, double %71, i64 0
  %75 = insertelement <2 x double> %74, double %73, i64 1
  %76 = fdiv <2 x double> %75, splat (double 2.800000e+01)
  %77 = fadd <2 x double> %76, %12
  store <2 x double> %77, ptr %68, align 8
  %78 = trunc i64 %indvars.iv to i32
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %indvars.iv.tr17 = trunc nuw nsw i64 %indvars.iv to i32
  %80 = mul i32 %78, 15
  %81 = uitofp nneg i32 %80 to double
  %82 = shl nuw nsw i32 %indvars.iv.tr17, 4
  %83 = uitofp nneg i32 %82 to double
  %84 = insertelement <2 x double> poison, double %81, i64 0
  %85 = insertelement <2 x double> %84, double %83, i64 1
  %86 = fdiv <2 x double> %85, splat (double 2.800000e+01)
  %87 = fadd <2 x double> %86, %12
  store <2 x double> %87, ptr %79, align 8
  %88 = trunc i64 %indvars.iv to i32
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %90 = trunc i64 %indvars.iv to i32
  %91 = mul i32 %88, 17
  %92 = uitofp nneg i32 %91 to double
  %93 = mul i32 %90, 18
  %94 = uitofp nneg i32 %93 to double
  %95 = insertelement <2 x double> poison, double %92, i64 0
  %96 = insertelement <2 x double> %95, double %94, i64 1
  %97 = fdiv <2 x double> %96, splat (double 2.800000e+01)
  %98 = fadd <2 x double> %97, %12
  store <2 x double> %98, ptr %89, align 8
  %99 = trunc i64 %indvars.iv to i32
  %100 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %101 = trunc i64 %indvars.iv to i32
  %102 = mul i32 %99, 19
  %103 = uitofp nneg i32 %102 to double
  %104 = mul i32 %101, 20
  %105 = uitofp nneg i32 %104 to double
  %106 = insertelement <2 x double> poison, double %103, i64 0
  %107 = insertelement <2 x double> %106, double %105, i64 1
  %108 = fdiv <2 x double> %107, splat (double 2.800000e+01)
  %109 = fadd <2 x double> %108, %12
  store <2 x double> %109, ptr %100, align 8
  %110 = trunc i64 %indvars.iv to i32
  %111 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %112 = trunc i64 %indvars.iv to i32
  %113 = mul i32 %110, 21
  %114 = uitofp nneg i32 %113 to double
  %115 = mul i32 %112, 22
  %116 = uitofp nneg i32 %115 to double
  %117 = insertelement <2 x double> poison, double %114, i64 0
  %118 = insertelement <2 x double> %117, double %116, i64 1
  %119 = fdiv <2 x double> %118, splat (double 2.800000e+01)
  %120 = fadd <2 x double> %119, %12
  store <2 x double> %120, ptr %111, align 8
  %121 = trunc i64 %indvars.iv to i32
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %123 = trunc i64 %indvars.iv to i32
  %124 = mul i32 %121, 23
  %125 = uitofp nneg i32 %124 to double
  %126 = mul i32 %123, 24
  %127 = uitofp nneg i32 %126 to double
  %128 = insertelement <2 x double> poison, double %125, i64 0
  %129 = insertelement <2 x double> %128, double %127, i64 1
  %130 = fdiv <2 x double> %129, splat (double 2.800000e+01)
  %131 = fadd <2 x double> %130, %12
  store <2 x double> %131, ptr %122, align 8
  %132 = trunc i64 %indvars.iv to i32
  %133 = getelementptr inbounds nuw i8, ptr %4, i64 200
  %134 = trunc i64 %indvars.iv to i32
  %135 = mul i32 %132, 25
  %136 = uitofp nneg i32 %135 to double
  %137 = mul i32 %134, 26
  %138 = uitofp nneg i32 %137 to double
  %139 = insertelement <2 x double> poison, double %136, i64 0
  %140 = insertelement <2 x double> %139, double %138, i64 1
  %141 = fdiv <2 x double> %140, splat (double 2.800000e+01)
  %142 = fadd <2 x double> %141, %12
  store <2 x double> %142, ptr %133, align 8
  %143 = trunc i64 %indvars.iv to i32
  %144 = mul i32 %143, 27
  %145 = uitofp nneg i32 %144 to double
  %146 = fdiv double %145, 2.800000e+01
  %147 = fadd double %146, %7
  %148 = getelementptr inbounds nuw i8, ptr %4, i64 216
  store double %147, ptr %148, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %149, label %.preheader, !llvm.loop !7

149:                                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @kernel_correlation(double noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #3 {
vector.memcheck:
  %5 = getelementptr i8, ptr %3, i64 224
  %6 = getelementptr i8, ptr %1, i64 7168
  %bound0 = icmp ult ptr %3, %6
  %bound1 = icmp ult ptr %1, %5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x double> zeroinitializer, ptr %7, align 8, !alias.scope !9, !noalias !12
  %8 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x double>, ptr %8, align 8, !alias.scope !12
  %9 = fadd <2 x double> %wide.load, zeroinitializer
  store <2 x double> %9, ptr %7, align 8, !alias.scope !9, !noalias !12
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 224
  %wide.load2 = load <2 x double>, ptr %10, align 8, !alias.scope !12
  %11 = fadd <2 x double> %wide.load2, %9
  store <2 x double> %11, ptr %7, align 8, !alias.scope !9, !noalias !12
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 448
  %wide.load3 = load <2 x double>, ptr %12, align 8, !alias.scope !12
  %13 = fadd <2 x double> %wide.load3, %11
  store <2 x double> %13, ptr %7, align 8, !alias.scope !9, !noalias !12
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 672
  %wide.load4 = load <2 x double>, ptr %14, align 8, !alias.scope !12
  %15 = fadd <2 x double> %wide.load4, %13
  store <2 x double> %15, ptr %7, align 8, !alias.scope !9, !noalias !12
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 896
  %wide.load5 = load <2 x double>, ptr %16, align 8, !alias.scope !12
  %17 = fadd <2 x double> %wide.load5, %15
  store <2 x double> %17, ptr %7, align 8, !alias.scope !9, !noalias !12
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 1120
  %wide.load6 = load <2 x double>, ptr %18, align 8, !alias.scope !12
  %19 = fadd <2 x double> %wide.load6, %17
  store <2 x double> %19, ptr %7, align 8, !alias.scope !9, !noalias !12
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 1344
  %wide.load7 = load <2 x double>, ptr %20, align 8, !alias.scope !12
  %21 = fadd <2 x double> %wide.load7, %19
  store <2 x double> %21, ptr %7, align 8, !alias.scope !9, !noalias !12
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 1568
  %wide.load8 = load <2 x double>, ptr %22, align 8, !alias.scope !12
  %23 = fadd <2 x double> %wide.load8, %21
  store <2 x double> %23, ptr %7, align 8, !alias.scope !9, !noalias !12
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 1792
  %wide.load9 = load <2 x double>, ptr %24, align 8, !alias.scope !12
  %25 = fadd <2 x double> %wide.load9, %23
  store <2 x double> %25, ptr %7, align 8, !alias.scope !9, !noalias !12
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 2016
  %wide.load10 = load <2 x double>, ptr %26, align 8, !alias.scope !12
  %27 = fadd <2 x double> %wide.load10, %25
  store <2 x double> %27, ptr %7, align 8, !alias.scope !9, !noalias !12
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 2240
  %wide.load11 = load <2 x double>, ptr %28, align 8, !alias.scope !12
  %29 = fadd <2 x double> %wide.load11, %27
  store <2 x double> %29, ptr %7, align 8, !alias.scope !9, !noalias !12
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 2464
  %wide.load12 = load <2 x double>, ptr %30, align 8, !alias.scope !12
  %31 = fadd <2 x double> %wide.load12, %29
  store <2 x double> %31, ptr %7, align 8, !alias.scope !9, !noalias !12
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 2688
  %wide.load13 = load <2 x double>, ptr %32, align 8, !alias.scope !12
  %33 = fadd <2 x double> %wide.load13, %31
  store <2 x double> %33, ptr %7, align 8, !alias.scope !9, !noalias !12
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 2912
  %wide.load14 = load <2 x double>, ptr %34, align 8, !alias.scope !12
  %35 = fadd <2 x double> %wide.load14, %33
  store <2 x double> %35, ptr %7, align 8, !alias.scope !9, !noalias !12
  %36 = getelementptr inbounds nuw i8, ptr %8, i64 3136
  %wide.load15 = load <2 x double>, ptr %36, align 8, !alias.scope !12
  %37 = fadd <2 x double> %wide.load15, %35
  store <2 x double> %37, ptr %7, align 8, !alias.scope !9, !noalias !12
  %38 = getelementptr inbounds nuw i8, ptr %8, i64 3360
  %wide.load16 = load <2 x double>, ptr %38, align 8, !alias.scope !12
  %39 = fadd <2 x double> %wide.load16, %37
  store <2 x double> %39, ptr %7, align 8, !alias.scope !9, !noalias !12
  %40 = getelementptr inbounds nuw i8, ptr %8, i64 3584
  %wide.load17 = load <2 x double>, ptr %40, align 8, !alias.scope !12
  %41 = fadd <2 x double> %wide.load17, %39
  store <2 x double> %41, ptr %7, align 8, !alias.scope !9, !noalias !12
  %42 = getelementptr inbounds nuw i8, ptr %8, i64 3808
  %wide.load18 = load <2 x double>, ptr %42, align 8, !alias.scope !12
  %43 = fadd <2 x double> %wide.load18, %41
  store <2 x double> %43, ptr %7, align 8, !alias.scope !9, !noalias !12
  %44 = getelementptr inbounds nuw i8, ptr %8, i64 4032
  %wide.load19 = load <2 x double>, ptr %44, align 8, !alias.scope !12
  %45 = fadd <2 x double> %wide.load19, %43
  store <2 x double> %45, ptr %7, align 8, !alias.scope !9, !noalias !12
  %46 = getelementptr inbounds nuw i8, ptr %8, i64 4256
  %wide.load20 = load <2 x double>, ptr %46, align 8, !alias.scope !12
  %47 = fadd <2 x double> %wide.load20, %45
  store <2 x double> %47, ptr %7, align 8, !alias.scope !9, !noalias !12
  %48 = getelementptr inbounds nuw i8, ptr %8, i64 4480
  %wide.load21 = load <2 x double>, ptr %48, align 8, !alias.scope !12
  %49 = fadd <2 x double> %wide.load21, %47
  store <2 x double> %49, ptr %7, align 8, !alias.scope !9, !noalias !12
  %50 = getelementptr inbounds nuw i8, ptr %8, i64 4704
  %wide.load22 = load <2 x double>, ptr %50, align 8, !alias.scope !12
  %51 = fadd <2 x double> %wide.load22, %49
  store <2 x double> %51, ptr %7, align 8, !alias.scope !9, !noalias !12
  %52 = getelementptr inbounds nuw i8, ptr %8, i64 4928
  %wide.load23 = load <2 x double>, ptr %52, align 8, !alias.scope !12
  %53 = fadd <2 x double> %wide.load23, %51
  store <2 x double> %53, ptr %7, align 8, !alias.scope !9, !noalias !12
  %54 = getelementptr inbounds nuw i8, ptr %8, i64 5152
  %wide.load24 = load <2 x double>, ptr %54, align 8, !alias.scope !12
  %55 = fadd <2 x double> %wide.load24, %53
  store <2 x double> %55, ptr %7, align 8, !alias.scope !9, !noalias !12
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 5376
  %wide.load25 = load <2 x double>, ptr %56, align 8, !alias.scope !12
  %57 = fadd <2 x double> %wide.load25, %55
  store <2 x double> %57, ptr %7, align 8, !alias.scope !9, !noalias !12
  %58 = getelementptr inbounds nuw i8, ptr %8, i64 5600
  %wide.load26 = load <2 x double>, ptr %58, align 8, !alias.scope !12
  %59 = fadd <2 x double> %wide.load26, %57
  store <2 x double> %59, ptr %7, align 8, !alias.scope !9, !noalias !12
  %60 = getelementptr inbounds nuw i8, ptr %8, i64 5824
  %wide.load27 = load <2 x double>, ptr %60, align 8, !alias.scope !12
  %61 = fadd <2 x double> %wide.load27, %59
  store <2 x double> %61, ptr %7, align 8, !alias.scope !9, !noalias !12
  %62 = getelementptr inbounds nuw i8, ptr %8, i64 6048
  %wide.load28 = load <2 x double>, ptr %62, align 8, !alias.scope !12
  %63 = fadd <2 x double> %wide.load28, %61
  store <2 x double> %63, ptr %7, align 8, !alias.scope !9, !noalias !12
  %64 = getelementptr inbounds nuw i8, ptr %8, i64 6272
  %wide.load29 = load <2 x double>, ptr %64, align 8, !alias.scope !12
  %65 = fadd <2 x double> %wide.load29, %63
  store <2 x double> %65, ptr %7, align 8, !alias.scope !9, !noalias !12
  %66 = getelementptr inbounds nuw i8, ptr %8, i64 6496
  %wide.load30 = load <2 x double>, ptr %66, align 8, !alias.scope !12
  %67 = fadd <2 x double> %wide.load30, %65
  store <2 x double> %67, ptr %7, align 8, !alias.scope !9, !noalias !12
  %68 = getelementptr inbounds nuw i8, ptr %8, i64 6720
  %wide.load31 = load <2 x double>, ptr %68, align 8, !alias.scope !12
  %69 = fadd <2 x double> %wide.load31, %67
  store <2 x double> %69, ptr %7, align 8, !alias.scope !9, !noalias !12
  %70 = getelementptr inbounds nuw i8, ptr %8, i64 6944
  %wide.load32 = load <2 x double>, ptr %70, align 8, !alias.scope !12
  %71 = fadd <2 x double> %wide.load32, %69
  %72 = fdiv <2 x double> %71, %broadcast.splat
  store <2 x double> %72, ptr %7, align 8, !alias.scope !9, !noalias !12
  %index.next = add nuw i64 %index, 2
  %73 = icmp eq i64 %index.next, 28
  br i1 %73, label %.preheader97.preheader, label %vector.body, !llvm.loop !14

.preheader97.preheader:                           ; preds = %vector.body, %scalar.ph
  br label %.preheader97

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ]
  %74 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double 0.000000e+00, ptr %74, align 8
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %75 = load double, ptr %invariant.gep, align 8
  %76 = fadd double %75, 0.000000e+00
  store double %76, ptr %74, align 8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 224
  %77 = load double, ptr %gep.1, align 8
  %78 = fadd double %77, %76
  store double %78, ptr %74, align 8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 448
  %79 = load double, ptr %gep.2, align 8
  %80 = fadd double %79, %78
  store double %80, ptr %74, align 8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 672
  %81 = load double, ptr %gep.3, align 8
  %82 = fadd double %81, %80
  store double %82, ptr %74, align 8
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 896
  %83 = load double, ptr %gep.4, align 8
  %84 = fadd double %83, %82
  store double %84, ptr %74, align 8
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1120
  %85 = load double, ptr %gep.5, align 8
  %86 = fadd double %85, %84
  store double %86, ptr %74, align 8
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1344
  %87 = load double, ptr %gep.6, align 8
  %88 = fadd double %87, %86
  store double %88, ptr %74, align 8
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1568
  %89 = load double, ptr %gep.7, align 8
  %90 = fadd double %89, %88
  store double %90, ptr %74, align 8
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1792
  %91 = load double, ptr %gep.8, align 8
  %92 = fadd double %91, %90
  store double %92, ptr %74, align 8
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2016
  %93 = load double, ptr %gep.9, align 8
  %94 = fadd double %93, %92
  store double %94, ptr %74, align 8
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2240
  %95 = load double, ptr %gep.10, align 8
  %96 = fadd double %95, %94
  store double %96, ptr %74, align 8
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2464
  %97 = load double, ptr %gep.11, align 8
  %98 = fadd double %97, %96
  store double %98, ptr %74, align 8
  %gep.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2688
  %99 = load double, ptr %gep.12, align 8
  %100 = fadd double %99, %98
  store double %100, ptr %74, align 8
  %gep.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2912
  %101 = load double, ptr %gep.13, align 8
  %102 = fadd double %101, %100
  store double %102, ptr %74, align 8
  %gep.14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3136
  %103 = load double, ptr %gep.14, align 8
  %104 = fadd double %103, %102
  store double %104, ptr %74, align 8
  %gep.15 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3360
  %105 = load double, ptr %gep.15, align 8
  %106 = fadd double %105, %104
  store double %106, ptr %74, align 8
  %gep.16 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3584
  %107 = load double, ptr %gep.16, align 8
  %108 = fadd double %107, %106
  store double %108, ptr %74, align 8
  %gep.17 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3808
  %109 = load double, ptr %gep.17, align 8
  %110 = fadd double %109, %108
  store double %110, ptr %74, align 8
  %gep.18 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4032
  %111 = load double, ptr %gep.18, align 8
  %112 = fadd double %111, %110
  store double %112, ptr %74, align 8
  %gep.19 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4256
  %113 = load double, ptr %gep.19, align 8
  %114 = fadd double %113, %112
  store double %114, ptr %74, align 8
  %gep.20 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4480
  %115 = load double, ptr %gep.20, align 8
  %116 = fadd double %115, %114
  store double %116, ptr %74, align 8
  %gep.21 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4704
  %117 = load double, ptr %gep.21, align 8
  %118 = fadd double %117, %116
  store double %118, ptr %74, align 8
  %gep.22 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4928
  %119 = load double, ptr %gep.22, align 8
  %120 = fadd double %119, %118
  store double %120, ptr %74, align 8
  %gep.23 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5152
  %121 = load double, ptr %gep.23, align 8
  %122 = fadd double %121, %120
  store double %122, ptr %74, align 8
  %gep.24 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5376
  %123 = load double, ptr %gep.24, align 8
  %124 = fadd double %123, %122
  store double %124, ptr %74, align 8
  %gep.25 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5600
  %125 = load double, ptr %gep.25, align 8
  %126 = fadd double %125, %124
  store double %126, ptr %74, align 8
  %gep.26 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5824
  %127 = load double, ptr %gep.26, align 8
  %128 = fadd double %127, %126
  store double %128, ptr %74, align 8
  %gep.27 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6048
  %129 = load double, ptr %gep.27, align 8
  %130 = fadd double %129, %128
  store double %130, ptr %74, align 8
  %gep.28 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6272
  %131 = load double, ptr %gep.28, align 8
  %132 = fadd double %131, %130
  store double %132, ptr %74, align 8
  %gep.29 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6496
  %133 = load double, ptr %gep.29, align 8
  %134 = fadd double %133, %132
  store double %134, ptr %74, align 8
  %gep.30 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6720
  %135 = load double, ptr %gep.30, align 8
  %136 = fadd double %135, %134
  store double %136, ptr %74, align 8
  %gep.31 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6944
  %137 = load double, ptr %gep.31, align 8
  %138 = fadd double %137, %136
  %139 = fdiv double %138, %0
  store double %139, ptr %74, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond.not, label %.preheader97.preheader, label %scalar.ph, !llvm.loop !18

.preheader96:                                     ; preds = %.preheader97
  %140 = tail call double @sqrt(double noundef %0) #9
  %141 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %142 = insertelement <2 x ptr> %141, ptr %4, i64 1
  %143 = getelementptr i8, <2 x ptr> %142, i64 224
  %scevgep43 = getelementptr i8, ptr %1, i64 7168
  %144 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %145 = shufflevector <2 x ptr> %144, <2 x ptr> poison, <2 x i32> zeroinitializer
  %146 = insertelement <2 x ptr> poison, ptr %scevgep43, i64 0
  %147 = shufflevector <2 x ptr> %146, <2 x ptr> poison, <2 x i32> zeroinitializer
  %148 = icmp ult <2 x ptr> %145, %143
  %149 = icmp ult <2 x ptr> %142, %147
  %150 = and <2 x i1> %148, %149
  %151 = bitcast <2 x i1> %150 to i2
  %.not = icmp eq i2 %151, 0
  %broadcast.splatinsert53 = insertelement <2 x double> poison, double %140, i64 0
  %broadcast.splat54 = shufflevector <2 x double> %broadcast.splatinsert53, <2 x double> poison, <2 x i32> zeroinitializer
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %153 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %155 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %157 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %161 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %163 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %165 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %166 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %167 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %169 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %170 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %171 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %173 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %175 = getelementptr inbounds nuw i8, ptr %4, i64 192
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 208
  %177 = getelementptr inbounds nuw i8, ptr %4, i64 208
  br label %.preheader95

.preheader97:                                     ; preds = %.preheader97.preheader, %.preheader97
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.preheader97 ], [ 0, %.preheader97.preheader ]
  %178 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv118
  store double 0.000000e+00, ptr %178, align 8
  %179 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv118
  %invariant.gep100 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv118
  %180 = load double, ptr %invariant.gep100, align 8
  %181 = load double, ptr %179, align 8
  %182 = fsub double %180, %181
  %183 = tail call double @llvm.fmuladd.f64(double %182, double %182, double 0.000000e+00)
  store double %183, ptr %178, align 8
  %gep101.1 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 224
  %184 = load double, ptr %gep101.1, align 8
  %185 = load double, ptr %179, align 8
  %186 = fsub double %184, %185
  %187 = tail call double @llvm.fmuladd.f64(double %186, double %186, double %183)
  store double %187, ptr %178, align 8
  %gep101.2 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 448
  %188 = load double, ptr %gep101.2, align 8
  %189 = load double, ptr %179, align 8
  %190 = fsub double %188, %189
  %191 = tail call double @llvm.fmuladd.f64(double %190, double %190, double %187)
  store double %191, ptr %178, align 8
  %gep101.3 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 672
  %192 = load double, ptr %gep101.3, align 8
  %193 = load double, ptr %179, align 8
  %194 = fsub double %192, %193
  %195 = tail call double @llvm.fmuladd.f64(double %194, double %194, double %191)
  store double %195, ptr %178, align 8
  %gep101.4 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 896
  %196 = load double, ptr %gep101.4, align 8
  %197 = load double, ptr %179, align 8
  %198 = fsub double %196, %197
  %199 = tail call double @llvm.fmuladd.f64(double %198, double %198, double %195)
  store double %199, ptr %178, align 8
  %gep101.5 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 1120
  %200 = load double, ptr %gep101.5, align 8
  %201 = load double, ptr %179, align 8
  %202 = fsub double %200, %201
  %203 = tail call double @llvm.fmuladd.f64(double %202, double %202, double %199)
  store double %203, ptr %178, align 8
  %gep101.6 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 1344
  %204 = load double, ptr %gep101.6, align 8
  %205 = load double, ptr %179, align 8
  %206 = fsub double %204, %205
  %207 = tail call double @llvm.fmuladd.f64(double %206, double %206, double %203)
  store double %207, ptr %178, align 8
  %gep101.7 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 1568
  %208 = load double, ptr %gep101.7, align 8
  %209 = load double, ptr %179, align 8
  %210 = fsub double %208, %209
  %211 = tail call double @llvm.fmuladd.f64(double %210, double %210, double %207)
  store double %211, ptr %178, align 8
  %gep101.8 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 1792
  %212 = load double, ptr %gep101.8, align 8
  %213 = load double, ptr %179, align 8
  %214 = fsub double %212, %213
  %215 = tail call double @llvm.fmuladd.f64(double %214, double %214, double %211)
  store double %215, ptr %178, align 8
  %gep101.9 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 2016
  %216 = load double, ptr %gep101.9, align 8
  %217 = load double, ptr %179, align 8
  %218 = fsub double %216, %217
  %219 = tail call double @llvm.fmuladd.f64(double %218, double %218, double %215)
  store double %219, ptr %178, align 8
  %gep101.10 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 2240
  %220 = load double, ptr %gep101.10, align 8
  %221 = load double, ptr %179, align 8
  %222 = fsub double %220, %221
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %222, double %219)
  store double %223, ptr %178, align 8
  %gep101.11 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 2464
  %224 = load double, ptr %gep101.11, align 8
  %225 = load double, ptr %179, align 8
  %226 = fsub double %224, %225
  %227 = tail call double @llvm.fmuladd.f64(double %226, double %226, double %223)
  store double %227, ptr %178, align 8
  %gep101.12 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 2688
  %228 = load double, ptr %gep101.12, align 8
  %229 = load double, ptr %179, align 8
  %230 = fsub double %228, %229
  %231 = tail call double @llvm.fmuladd.f64(double %230, double %230, double %227)
  store double %231, ptr %178, align 8
  %gep101.13 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 2912
  %232 = load double, ptr %gep101.13, align 8
  %233 = load double, ptr %179, align 8
  %234 = fsub double %232, %233
  %235 = tail call double @llvm.fmuladd.f64(double %234, double %234, double %231)
  store double %235, ptr %178, align 8
  %gep101.14 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 3136
  %236 = load double, ptr %gep101.14, align 8
  %237 = load double, ptr %179, align 8
  %238 = fsub double %236, %237
  %239 = tail call double @llvm.fmuladd.f64(double %238, double %238, double %235)
  store double %239, ptr %178, align 8
  %gep101.15 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 3360
  %240 = load double, ptr %gep101.15, align 8
  %241 = load double, ptr %179, align 8
  %242 = fsub double %240, %241
  %243 = tail call double @llvm.fmuladd.f64(double %242, double %242, double %239)
  store double %243, ptr %178, align 8
  %gep101.16 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 3584
  %244 = load double, ptr %gep101.16, align 8
  %245 = load double, ptr %179, align 8
  %246 = fsub double %244, %245
  %247 = tail call double @llvm.fmuladd.f64(double %246, double %246, double %243)
  store double %247, ptr %178, align 8
  %gep101.17 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 3808
  %248 = load double, ptr %gep101.17, align 8
  %249 = load double, ptr %179, align 8
  %250 = fsub double %248, %249
  %251 = tail call double @llvm.fmuladd.f64(double %250, double %250, double %247)
  store double %251, ptr %178, align 8
  %gep101.18 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 4032
  %252 = load double, ptr %gep101.18, align 8
  %253 = load double, ptr %179, align 8
  %254 = fsub double %252, %253
  %255 = tail call double @llvm.fmuladd.f64(double %254, double %254, double %251)
  store double %255, ptr %178, align 8
  %gep101.19 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 4256
  %256 = load double, ptr %gep101.19, align 8
  %257 = load double, ptr %179, align 8
  %258 = fsub double %256, %257
  %259 = tail call double @llvm.fmuladd.f64(double %258, double %258, double %255)
  store double %259, ptr %178, align 8
  %gep101.20 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 4480
  %260 = load double, ptr %gep101.20, align 8
  %261 = load double, ptr %179, align 8
  %262 = fsub double %260, %261
  %263 = tail call double @llvm.fmuladd.f64(double %262, double %262, double %259)
  store double %263, ptr %178, align 8
  %gep101.21 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 4704
  %264 = load double, ptr %gep101.21, align 8
  %265 = load double, ptr %179, align 8
  %266 = fsub double %264, %265
  %267 = tail call double @llvm.fmuladd.f64(double %266, double %266, double %263)
  store double %267, ptr %178, align 8
  %gep101.22 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 4928
  %268 = load double, ptr %gep101.22, align 8
  %269 = load double, ptr %179, align 8
  %270 = fsub double %268, %269
  %271 = tail call double @llvm.fmuladd.f64(double %270, double %270, double %267)
  store double %271, ptr %178, align 8
  %gep101.23 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 5152
  %272 = load double, ptr %gep101.23, align 8
  %273 = load double, ptr %179, align 8
  %274 = fsub double %272, %273
  %275 = tail call double @llvm.fmuladd.f64(double %274, double %274, double %271)
  store double %275, ptr %178, align 8
  %gep101.24 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 5376
  %276 = load double, ptr %gep101.24, align 8
  %277 = load double, ptr %179, align 8
  %278 = fsub double %276, %277
  %279 = tail call double @llvm.fmuladd.f64(double %278, double %278, double %275)
  store double %279, ptr %178, align 8
  %gep101.25 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 5600
  %280 = load double, ptr %gep101.25, align 8
  %281 = load double, ptr %179, align 8
  %282 = fsub double %280, %281
  %283 = tail call double @llvm.fmuladd.f64(double %282, double %282, double %279)
  store double %283, ptr %178, align 8
  %gep101.26 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 5824
  %284 = load double, ptr %gep101.26, align 8
  %285 = load double, ptr %179, align 8
  %286 = fsub double %284, %285
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %286, double %283)
  store double %287, ptr %178, align 8
  %gep101.27 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 6048
  %288 = load double, ptr %gep101.27, align 8
  %289 = load double, ptr %179, align 8
  %290 = fsub double %288, %289
  %291 = tail call double @llvm.fmuladd.f64(double %290, double %290, double %287)
  store double %291, ptr %178, align 8
  %gep101.28 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 6272
  %292 = load double, ptr %gep101.28, align 8
  %293 = load double, ptr %179, align 8
  %294 = fsub double %292, %293
  %295 = tail call double @llvm.fmuladd.f64(double %294, double %294, double %291)
  store double %295, ptr %178, align 8
  %gep101.29 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 6496
  %296 = load double, ptr %gep101.29, align 8
  %297 = load double, ptr %179, align 8
  %298 = fsub double %296, %297
  %299 = tail call double @llvm.fmuladd.f64(double %298, double %298, double %295)
  store double %299, ptr %178, align 8
  %gep101.30 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 6720
  %300 = load double, ptr %gep101.30, align 8
  %301 = load double, ptr %179, align 8
  %302 = fsub double %300, %301
  %303 = tail call double @llvm.fmuladd.f64(double %302, double %302, double %299)
  store double %303, ptr %178, align 8
  %gep101.31 = getelementptr inbounds nuw i8, ptr %invariant.gep100, i64 6944
  %304 = load double, ptr %gep101.31, align 8
  %305 = load double, ptr %179, align 8
  %306 = fsub double %304, %305
  %307 = tail call double @llvm.fmuladd.f64(double %306, double %306, double %303)
  store double %307, ptr %178, align 8
  %308 = fdiv double %307, %0
  %309 = tail call double @sqrt(double noundef %308) #9
  %310 = fcmp ugt double %309, 1.000000e-01
  %311 = select i1 %310, double %309, double 1.000000e+00
  store double %311, ptr %178, align 8
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %exitcond121.not = icmp eq i64 %indvars.iv.next119, 28
  br i1 %exitcond121.not, label %.preheader96, label %.preheader97, !llvm.loop !20

.preheader95:                                     ; preds = %.preheader96, %middle.block61
  %indvars.iv126 = phi i64 [ 0, %.preheader96 ], [ %indvars.iv.next127, %middle.block61 ]
  %312 = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %indvars.iv126
  br i1 %.not, label %vector.body55, label %scalar.ph44

vector.body55:                                    ; preds = %.preheader95
  %wide.load57 = load <2 x double>, ptr %3, align 8, !alias.scope !21
  %wide.load58 = load <2 x double>, ptr %312, align 8, !alias.scope !24, !noalias !26
  %313 = fsub <2 x double> %wide.load58, %wide.load57
  store <2 x double> %313, ptr %312, align 8, !alias.scope !24, !noalias !26
  %wide.load59 = load <2 x double>, ptr %4, align 8, !alias.scope !28
  %314 = fmul <2 x double> %broadcast.splat54, %wide.load59
  %315 = fdiv <2 x double> %313, %314
  store <2 x double> %315, ptr %312, align 8, !alias.scope !24, !noalias !26
  %wide.load57.1 = load <2 x double>, ptr %152, align 8, !alias.scope !21
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %wide.load58.1 = load <2 x double>, ptr %316, align 8, !alias.scope !24, !noalias !26
  %317 = fsub <2 x double> %wide.load58.1, %wide.load57.1
  store <2 x double> %317, ptr %316, align 8, !alias.scope !24, !noalias !26
  %wide.load59.1 = load <2 x double>, ptr %153, align 8, !alias.scope !28
  %318 = fmul <2 x double> %broadcast.splat54, %wide.load59.1
  %319 = fdiv <2 x double> %317, %318
  store <2 x double> %319, ptr %316, align 8, !alias.scope !24, !noalias !26
  %wide.load57.2 = load <2 x double>, ptr %154, align 8, !alias.scope !21
  %320 = getelementptr inbounds nuw i8, ptr %312, i64 32
  %wide.load58.2 = load <2 x double>, ptr %320, align 8, !alias.scope !24, !noalias !26
  %321 = fsub <2 x double> %wide.load58.2, %wide.load57.2
  store <2 x double> %321, ptr %320, align 8, !alias.scope !24, !noalias !26
  %wide.load59.2 = load <2 x double>, ptr %155, align 8, !alias.scope !28
  %322 = fmul <2 x double> %broadcast.splat54, %wide.load59.2
  %323 = fdiv <2 x double> %321, %322
  store <2 x double> %323, ptr %320, align 8, !alias.scope !24, !noalias !26
  %wide.load57.3 = load <2 x double>, ptr %156, align 8, !alias.scope !21
  %324 = getelementptr inbounds nuw i8, ptr %312, i64 48
  %wide.load58.3 = load <2 x double>, ptr %324, align 8, !alias.scope !24, !noalias !26
  %325 = fsub <2 x double> %wide.load58.3, %wide.load57.3
  store <2 x double> %325, ptr %324, align 8, !alias.scope !24, !noalias !26
  %wide.load59.3 = load <2 x double>, ptr %157, align 8, !alias.scope !28
  %326 = fmul <2 x double> %broadcast.splat54, %wide.load59.3
  %327 = fdiv <2 x double> %325, %326
  store <2 x double> %327, ptr %324, align 8, !alias.scope !24, !noalias !26
  %wide.load57.4 = load <2 x double>, ptr %158, align 8, !alias.scope !21
  %328 = getelementptr inbounds nuw i8, ptr %312, i64 64
  %wide.load58.4 = load <2 x double>, ptr %328, align 8, !alias.scope !24, !noalias !26
  %329 = fsub <2 x double> %wide.load58.4, %wide.load57.4
  store <2 x double> %329, ptr %328, align 8, !alias.scope !24, !noalias !26
  %wide.load59.4 = load <2 x double>, ptr %159, align 8, !alias.scope !28
  %330 = fmul <2 x double> %broadcast.splat54, %wide.load59.4
  %331 = fdiv <2 x double> %329, %330
  store <2 x double> %331, ptr %328, align 8, !alias.scope !24, !noalias !26
  %wide.load57.5 = load <2 x double>, ptr %160, align 8, !alias.scope !21
  %332 = getelementptr inbounds nuw i8, ptr %312, i64 80
  %wide.load58.5 = load <2 x double>, ptr %332, align 8, !alias.scope !24, !noalias !26
  %333 = fsub <2 x double> %wide.load58.5, %wide.load57.5
  store <2 x double> %333, ptr %332, align 8, !alias.scope !24, !noalias !26
  %wide.load59.5 = load <2 x double>, ptr %161, align 8, !alias.scope !28
  %334 = fmul <2 x double> %broadcast.splat54, %wide.load59.5
  %335 = fdiv <2 x double> %333, %334
  store <2 x double> %335, ptr %332, align 8, !alias.scope !24, !noalias !26
  %wide.load57.6 = load <2 x double>, ptr %162, align 8, !alias.scope !21
  %336 = getelementptr inbounds nuw i8, ptr %312, i64 96
  %wide.load58.6 = load <2 x double>, ptr %336, align 8, !alias.scope !24, !noalias !26
  %337 = fsub <2 x double> %wide.load58.6, %wide.load57.6
  store <2 x double> %337, ptr %336, align 8, !alias.scope !24, !noalias !26
  %wide.load59.6 = load <2 x double>, ptr %163, align 8, !alias.scope !28
  %338 = fmul <2 x double> %broadcast.splat54, %wide.load59.6
  %339 = fdiv <2 x double> %337, %338
  store <2 x double> %339, ptr %336, align 8, !alias.scope !24, !noalias !26
  %wide.load57.7 = load <2 x double>, ptr %164, align 8, !alias.scope !21
  %340 = getelementptr inbounds nuw i8, ptr %312, i64 112
  %wide.load58.7 = load <2 x double>, ptr %340, align 8, !alias.scope !24, !noalias !26
  %341 = fsub <2 x double> %wide.load58.7, %wide.load57.7
  store <2 x double> %341, ptr %340, align 8, !alias.scope !24, !noalias !26
  %wide.load59.7 = load <2 x double>, ptr %165, align 8, !alias.scope !28
  %342 = fmul <2 x double> %broadcast.splat54, %wide.load59.7
  %343 = fdiv <2 x double> %341, %342
  store <2 x double> %343, ptr %340, align 8, !alias.scope !24, !noalias !26
  %wide.load57.8 = load <2 x double>, ptr %166, align 8, !alias.scope !21
  %344 = getelementptr inbounds nuw i8, ptr %312, i64 128
  %wide.load58.8 = load <2 x double>, ptr %344, align 8, !alias.scope !24, !noalias !26
  %345 = fsub <2 x double> %wide.load58.8, %wide.load57.8
  store <2 x double> %345, ptr %344, align 8, !alias.scope !24, !noalias !26
  %wide.load59.8 = load <2 x double>, ptr %167, align 8, !alias.scope !28
  %346 = fmul <2 x double> %broadcast.splat54, %wide.load59.8
  %347 = fdiv <2 x double> %345, %346
  store <2 x double> %347, ptr %344, align 8, !alias.scope !24, !noalias !26
  %wide.load57.9 = load <2 x double>, ptr %168, align 8, !alias.scope !21
  %348 = getelementptr inbounds nuw i8, ptr %312, i64 144
  %wide.load58.9 = load <2 x double>, ptr %348, align 8, !alias.scope !24, !noalias !26
  %349 = fsub <2 x double> %wide.load58.9, %wide.load57.9
  store <2 x double> %349, ptr %348, align 8, !alias.scope !24, !noalias !26
  %wide.load59.9 = load <2 x double>, ptr %169, align 8, !alias.scope !28
  %350 = fmul <2 x double> %broadcast.splat54, %wide.load59.9
  %351 = fdiv <2 x double> %349, %350
  store <2 x double> %351, ptr %348, align 8, !alias.scope !24, !noalias !26
  %wide.load57.10 = load <2 x double>, ptr %170, align 8, !alias.scope !21
  %352 = getelementptr inbounds nuw i8, ptr %312, i64 160
  %wide.load58.10 = load <2 x double>, ptr %352, align 8, !alias.scope !24, !noalias !26
  %353 = fsub <2 x double> %wide.load58.10, %wide.load57.10
  store <2 x double> %353, ptr %352, align 8, !alias.scope !24, !noalias !26
  %wide.load59.10 = load <2 x double>, ptr %171, align 8, !alias.scope !28
  %354 = fmul <2 x double> %broadcast.splat54, %wide.load59.10
  %355 = fdiv <2 x double> %353, %354
  store <2 x double> %355, ptr %352, align 8, !alias.scope !24, !noalias !26
  %wide.load57.11 = load <2 x double>, ptr %172, align 8, !alias.scope !21
  %356 = getelementptr inbounds nuw i8, ptr %312, i64 176
  %wide.load58.11 = load <2 x double>, ptr %356, align 8, !alias.scope !24, !noalias !26
  %357 = fsub <2 x double> %wide.load58.11, %wide.load57.11
  store <2 x double> %357, ptr %356, align 8, !alias.scope !24, !noalias !26
  %wide.load59.11 = load <2 x double>, ptr %173, align 8, !alias.scope !28
  %358 = fmul <2 x double> %broadcast.splat54, %wide.load59.11
  %359 = fdiv <2 x double> %357, %358
  store <2 x double> %359, ptr %356, align 8, !alias.scope !24, !noalias !26
  %wide.load57.12 = load <2 x double>, ptr %174, align 8, !alias.scope !21
  %360 = getelementptr inbounds nuw i8, ptr %312, i64 192
  %wide.load58.12 = load <2 x double>, ptr %360, align 8, !alias.scope !24, !noalias !26
  %361 = fsub <2 x double> %wide.load58.12, %wide.load57.12
  store <2 x double> %361, ptr %360, align 8, !alias.scope !24, !noalias !26
  %wide.load59.12 = load <2 x double>, ptr %175, align 8, !alias.scope !28
  %362 = fmul <2 x double> %broadcast.splat54, %wide.load59.12
  %363 = fdiv <2 x double> %361, %362
  store <2 x double> %363, ptr %360, align 8, !alias.scope !24, !noalias !26
  %wide.load57.13 = load <2 x double>, ptr %176, align 8, !alias.scope !21
  %364 = getelementptr inbounds nuw i8, ptr %312, i64 208
  %wide.load58.13 = load <2 x double>, ptr %364, align 8, !alias.scope !24, !noalias !26
  %365 = fsub <2 x double> %wide.load58.13, %wide.load57.13
  store <2 x double> %365, ptr %364, align 8, !alias.scope !24, !noalias !26
  %wide.load59.13 = load <2 x double>, ptr %177, align 8, !alias.scope !28
  %366 = fmul <2 x double> %broadcast.splat54, %wide.load59.13
  %367 = fdiv <2 x double> %365, %366
  store <2 x double> %367, ptr %364, align 8, !alias.scope !24, !noalias !26
  br label %middle.block61

scalar.ph44:                                      ; preds = %.preheader95, %scalar.ph44
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.1, %scalar.ph44 ], [ 0, %.preheader95 ]
  %368 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv122
  %369 = load double, ptr %368, align 8
  %370 = getelementptr inbounds nuw [8 x i8], ptr %312, i64 %indvars.iv122
  %371 = load double, ptr %370, align 8
  %372 = fsub double %371, %369
  store double %372, ptr %370, align 8
  %373 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv122
  %374 = load double, ptr %373, align 8
  %375 = fmul double %140, %374
  %376 = fdiv double %372, %375
  store double %376, ptr %370, align 8
  %indvars.iv.next123 = or disjoint i64 %indvars.iv122, 1
  %377 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next123
  %378 = load double, ptr %377, align 8
  %379 = getelementptr inbounds nuw [8 x i8], ptr %312, i64 %indvars.iv.next123
  %380 = load double, ptr %379, align 8
  %381 = fsub double %380, %378
  store double %381, ptr %379, align 8
  %382 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next123
  %383 = load double, ptr %382, align 8
  %384 = fmul double %140, %383
  %385 = fdiv double %381, %384
  store double %385, ptr %379, align 8
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2
  %exitcond125.not.1 = icmp eq i64 %indvars.iv.next123.1, 28
  br i1 %exitcond125.not.1, label %middle.block61, label %scalar.ph44, !llvm.loop !29

middle.block61:                                   ; preds = %scalar.ph44, %vector.body55
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next127, 32
  br i1 %exitcond129.not, label %.preheader.preheader, label %.preheader95, !llvm.loop !30

.preheader.preheader:                             ; preds = %middle.block61
  %386 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %387 = getelementptr inbounds nuw i8, ptr %1, i64 448
  %388 = getelementptr inbounds nuw i8, ptr %1, i64 672
  %389 = getelementptr inbounds nuw i8, ptr %1, i64 896
  %390 = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %391 = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %392 = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %393 = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %394 = getelementptr inbounds nuw i8, ptr %1, i64 2016
  %395 = getelementptr inbounds nuw i8, ptr %1, i64 2240
  %396 = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %397 = getelementptr inbounds nuw i8, ptr %1, i64 2688
  %398 = getelementptr inbounds nuw i8, ptr %1, i64 2912
  %399 = getelementptr inbounds nuw i8, ptr %1, i64 3136
  %400 = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %401 = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %402 = getelementptr inbounds nuw i8, ptr %1, i64 3808
  %403 = getelementptr inbounds nuw i8, ptr %1, i64 4032
  %404 = getelementptr inbounds nuw i8, ptr %1, i64 4256
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 4480
  %406 = getelementptr inbounds nuw i8, ptr %1, i64 4704
  %407 = getelementptr inbounds nuw i8, ptr %1, i64 4928
  %408 = getelementptr inbounds nuw i8, ptr %1, i64 5152
  %409 = getelementptr inbounds nuw i8, ptr %1, i64 5376
  %410 = getelementptr inbounds nuw i8, ptr %1, i64 5600
  %411 = getelementptr inbounds nuw i8, ptr %1, i64 5824
  %412 = getelementptr inbounds nuw i8, ptr %1, i64 6048
  %413 = getelementptr inbounds nuw i8, ptr %1, i64 6272
  %414 = getelementptr inbounds nuw i8, ptr %1, i64 6496
  %415 = getelementptr inbounds nuw i8, ptr %1, i64 6720
  %416 = getelementptr inbounds nuw i8, ptr %1, i64 6944
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, 27
  br i1 %exitcond143.not, label %580, label %.lr.ph.preheader, !llvm.loop !31

.lr.ph.preheader:                                 ; preds = %.loopexit, %.preheader.preheader
  %indvars.iv140 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next141, %.loopexit ]
  %indvars.iv134 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next135, %.loopexit ]
  %417 = getelementptr inbounds nuw [224 x i8], ptr %2, i64 %indvars.iv140
  %418 = getelementptr inbounds nuw [8 x i8], ptr %417, i64 %indvars.iv140
  store double 1.000000e+00, ptr %418, align 8
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %invariant.gep108 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv140
  %419 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv140
  %420 = getelementptr inbounds nuw [8 x i8], ptr %386, i64 %indvars.iv140
  %421 = getelementptr inbounds nuw [8 x i8], ptr %387, i64 %indvars.iv140
  %422 = getelementptr inbounds nuw [8 x i8], ptr %388, i64 %indvars.iv140
  %423 = getelementptr inbounds nuw [8 x i8], ptr %389, i64 %indvars.iv140
  %424 = getelementptr inbounds nuw [8 x i8], ptr %390, i64 %indvars.iv140
  %425 = getelementptr inbounds nuw [8 x i8], ptr %391, i64 %indvars.iv140
  %426 = getelementptr inbounds nuw [8 x i8], ptr %392, i64 %indvars.iv140
  %427 = getelementptr inbounds nuw [8 x i8], ptr %393, i64 %indvars.iv140
  %428 = getelementptr inbounds nuw [8 x i8], ptr %394, i64 %indvars.iv140
  %429 = getelementptr inbounds nuw [8 x i8], ptr %395, i64 %indvars.iv140
  %430 = getelementptr inbounds nuw [8 x i8], ptr %396, i64 %indvars.iv140
  %431 = getelementptr inbounds nuw [8 x i8], ptr %397, i64 %indvars.iv140
  %432 = getelementptr inbounds nuw [8 x i8], ptr %398, i64 %indvars.iv140
  %433 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %indvars.iv140
  %434 = getelementptr inbounds nuw [8 x i8], ptr %400, i64 %indvars.iv140
  %435 = getelementptr inbounds nuw [8 x i8], ptr %401, i64 %indvars.iv140
  %436 = getelementptr inbounds nuw [8 x i8], ptr %402, i64 %indvars.iv140
  %437 = getelementptr inbounds nuw [8 x i8], ptr %403, i64 %indvars.iv140
  %438 = getelementptr inbounds nuw [8 x i8], ptr %404, i64 %indvars.iv140
  %439 = getelementptr inbounds nuw [8 x i8], ptr %405, i64 %indvars.iv140
  %440 = getelementptr inbounds nuw [8 x i8], ptr %406, i64 %indvars.iv140
  %441 = getelementptr inbounds nuw [8 x i8], ptr %407, i64 %indvars.iv140
  %442 = getelementptr inbounds nuw [8 x i8], ptr %408, i64 %indvars.iv140
  %443 = getelementptr inbounds nuw [8 x i8], ptr %409, i64 %indvars.iv140
  %444 = getelementptr inbounds nuw [8 x i8], ptr %410, i64 %indvars.iv140
  %445 = getelementptr inbounds nuw [8 x i8], ptr %411, i64 %indvars.iv140
  %446 = getelementptr inbounds nuw [8 x i8], ptr %412, i64 %indvars.iv140
  %447 = getelementptr inbounds nuw [8 x i8], ptr %413, i64 %indvars.iv140
  %448 = getelementptr inbounds nuw [8 x i8], ptr %414, i64 %indvars.iv140
  %449 = getelementptr inbounds nuw [8 x i8], ptr %415, i64 %indvars.iv140
  %450 = getelementptr inbounds nuw [8 x i8], ptr %416, i64 %indvars.iv140
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv136 = phi i64 [ %indvars.iv134, %.lr.ph.preheader ], [ %indvars.iv.next137, %.lr.ph ]
  %451 = getelementptr inbounds nuw [8 x i8], ptr %417, i64 %indvars.iv136
  store double 0.000000e+00, ptr %451, align 8
  %452 = load double, ptr %419, align 8
  %453 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv136
  %454 = load double, ptr %453, align 8
  %455 = tail call double @llvm.fmuladd.f64(double %452, double %454, double 0.000000e+00)
  store double %455, ptr %451, align 8
  %456 = load double, ptr %420, align 8
  %457 = getelementptr inbounds nuw [8 x i8], ptr %386, i64 %indvars.iv136
  %458 = load double, ptr %457, align 8
  %459 = tail call double @llvm.fmuladd.f64(double %456, double %458, double %455)
  store double %459, ptr %451, align 8
  %460 = load double, ptr %421, align 8
  %461 = getelementptr inbounds nuw [8 x i8], ptr %387, i64 %indvars.iv136
  %462 = load double, ptr %461, align 8
  %463 = tail call double @llvm.fmuladd.f64(double %460, double %462, double %459)
  store double %463, ptr %451, align 8
  %464 = load double, ptr %422, align 8
  %465 = getelementptr inbounds nuw [8 x i8], ptr %388, i64 %indvars.iv136
  %466 = load double, ptr %465, align 8
  %467 = tail call double @llvm.fmuladd.f64(double %464, double %466, double %463)
  store double %467, ptr %451, align 8
  %468 = load double, ptr %423, align 8
  %469 = getelementptr inbounds nuw [8 x i8], ptr %389, i64 %indvars.iv136
  %470 = load double, ptr %469, align 8
  %471 = tail call double @llvm.fmuladd.f64(double %468, double %470, double %467)
  store double %471, ptr %451, align 8
  %472 = load double, ptr %424, align 8
  %473 = getelementptr inbounds nuw [8 x i8], ptr %390, i64 %indvars.iv136
  %474 = load double, ptr %473, align 8
  %475 = tail call double @llvm.fmuladd.f64(double %472, double %474, double %471)
  store double %475, ptr %451, align 8
  %476 = load double, ptr %425, align 8
  %477 = getelementptr inbounds nuw [8 x i8], ptr %391, i64 %indvars.iv136
  %478 = load double, ptr %477, align 8
  %479 = tail call double @llvm.fmuladd.f64(double %476, double %478, double %475)
  store double %479, ptr %451, align 8
  %480 = load double, ptr %426, align 8
  %481 = getelementptr inbounds nuw [8 x i8], ptr %392, i64 %indvars.iv136
  %482 = load double, ptr %481, align 8
  %483 = tail call double @llvm.fmuladd.f64(double %480, double %482, double %479)
  store double %483, ptr %451, align 8
  %484 = load double, ptr %427, align 8
  %485 = getelementptr inbounds nuw [8 x i8], ptr %393, i64 %indvars.iv136
  %486 = load double, ptr %485, align 8
  %487 = tail call double @llvm.fmuladd.f64(double %484, double %486, double %483)
  store double %487, ptr %451, align 8
  %488 = load double, ptr %428, align 8
  %489 = getelementptr inbounds nuw [8 x i8], ptr %394, i64 %indvars.iv136
  %490 = load double, ptr %489, align 8
  %491 = tail call double @llvm.fmuladd.f64(double %488, double %490, double %487)
  store double %491, ptr %451, align 8
  %492 = load double, ptr %429, align 8
  %493 = getelementptr inbounds nuw [8 x i8], ptr %395, i64 %indvars.iv136
  %494 = load double, ptr %493, align 8
  %495 = tail call double @llvm.fmuladd.f64(double %492, double %494, double %491)
  store double %495, ptr %451, align 8
  %496 = load double, ptr %430, align 8
  %497 = getelementptr inbounds nuw [8 x i8], ptr %396, i64 %indvars.iv136
  %498 = load double, ptr %497, align 8
  %499 = tail call double @llvm.fmuladd.f64(double %496, double %498, double %495)
  store double %499, ptr %451, align 8
  %500 = load double, ptr %431, align 8
  %501 = getelementptr inbounds nuw [8 x i8], ptr %397, i64 %indvars.iv136
  %502 = load double, ptr %501, align 8
  %503 = tail call double @llvm.fmuladd.f64(double %500, double %502, double %499)
  store double %503, ptr %451, align 8
  %504 = load double, ptr %432, align 8
  %505 = getelementptr inbounds nuw [8 x i8], ptr %398, i64 %indvars.iv136
  %506 = load double, ptr %505, align 8
  %507 = tail call double @llvm.fmuladd.f64(double %504, double %506, double %503)
  store double %507, ptr %451, align 8
  %508 = load double, ptr %433, align 8
  %509 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %indvars.iv136
  %510 = load double, ptr %509, align 8
  %511 = tail call double @llvm.fmuladd.f64(double %508, double %510, double %507)
  store double %511, ptr %451, align 8
  %512 = load double, ptr %434, align 8
  %513 = getelementptr inbounds nuw [8 x i8], ptr %400, i64 %indvars.iv136
  %514 = load double, ptr %513, align 8
  %515 = tail call double @llvm.fmuladd.f64(double %512, double %514, double %511)
  store double %515, ptr %451, align 8
  %516 = load double, ptr %435, align 8
  %517 = getelementptr inbounds nuw [8 x i8], ptr %401, i64 %indvars.iv136
  %518 = load double, ptr %517, align 8
  %519 = tail call double @llvm.fmuladd.f64(double %516, double %518, double %515)
  store double %519, ptr %451, align 8
  %520 = load double, ptr %436, align 8
  %521 = getelementptr inbounds nuw [8 x i8], ptr %402, i64 %indvars.iv136
  %522 = load double, ptr %521, align 8
  %523 = tail call double @llvm.fmuladd.f64(double %520, double %522, double %519)
  store double %523, ptr %451, align 8
  %524 = load double, ptr %437, align 8
  %525 = getelementptr inbounds nuw [8 x i8], ptr %403, i64 %indvars.iv136
  %526 = load double, ptr %525, align 8
  %527 = tail call double @llvm.fmuladd.f64(double %524, double %526, double %523)
  store double %527, ptr %451, align 8
  %528 = load double, ptr %438, align 8
  %529 = getelementptr inbounds nuw [8 x i8], ptr %404, i64 %indvars.iv136
  %530 = load double, ptr %529, align 8
  %531 = tail call double @llvm.fmuladd.f64(double %528, double %530, double %527)
  store double %531, ptr %451, align 8
  %532 = load double, ptr %439, align 8
  %533 = getelementptr inbounds nuw [8 x i8], ptr %405, i64 %indvars.iv136
  %534 = load double, ptr %533, align 8
  %535 = tail call double @llvm.fmuladd.f64(double %532, double %534, double %531)
  store double %535, ptr %451, align 8
  %536 = load double, ptr %440, align 8
  %537 = getelementptr inbounds nuw [8 x i8], ptr %406, i64 %indvars.iv136
  %538 = load double, ptr %537, align 8
  %539 = tail call double @llvm.fmuladd.f64(double %536, double %538, double %535)
  store double %539, ptr %451, align 8
  %540 = load double, ptr %441, align 8
  %541 = getelementptr inbounds nuw [8 x i8], ptr %407, i64 %indvars.iv136
  %542 = load double, ptr %541, align 8
  %543 = tail call double @llvm.fmuladd.f64(double %540, double %542, double %539)
  store double %543, ptr %451, align 8
  %544 = load double, ptr %442, align 8
  %545 = getelementptr inbounds nuw [8 x i8], ptr %408, i64 %indvars.iv136
  %546 = load double, ptr %545, align 8
  %547 = tail call double @llvm.fmuladd.f64(double %544, double %546, double %543)
  store double %547, ptr %451, align 8
  %548 = load double, ptr %443, align 8
  %549 = getelementptr inbounds nuw [8 x i8], ptr %409, i64 %indvars.iv136
  %550 = load double, ptr %549, align 8
  %551 = tail call double @llvm.fmuladd.f64(double %548, double %550, double %547)
  store double %551, ptr %451, align 8
  %552 = load double, ptr %444, align 8
  %553 = getelementptr inbounds nuw [8 x i8], ptr %410, i64 %indvars.iv136
  %554 = load double, ptr %553, align 8
  %555 = tail call double @llvm.fmuladd.f64(double %552, double %554, double %551)
  store double %555, ptr %451, align 8
  %556 = load double, ptr %445, align 8
  %557 = getelementptr inbounds nuw [8 x i8], ptr %411, i64 %indvars.iv136
  %558 = load double, ptr %557, align 8
  %559 = tail call double @llvm.fmuladd.f64(double %556, double %558, double %555)
  store double %559, ptr %451, align 8
  %560 = load double, ptr %446, align 8
  %561 = getelementptr inbounds nuw [8 x i8], ptr %412, i64 %indvars.iv136
  %562 = load double, ptr %561, align 8
  %563 = tail call double @llvm.fmuladd.f64(double %560, double %562, double %559)
  store double %563, ptr %451, align 8
  %564 = load double, ptr %447, align 8
  %565 = getelementptr inbounds nuw [8 x i8], ptr %413, i64 %indvars.iv136
  %566 = load double, ptr %565, align 8
  %567 = tail call double @llvm.fmuladd.f64(double %564, double %566, double %563)
  store double %567, ptr %451, align 8
  %568 = load double, ptr %448, align 8
  %569 = getelementptr inbounds nuw [8 x i8], ptr %414, i64 %indvars.iv136
  %570 = load double, ptr %569, align 8
  %571 = tail call double @llvm.fmuladd.f64(double %568, double %570, double %567)
  store double %571, ptr %451, align 8
  %572 = load double, ptr %449, align 8
  %573 = getelementptr inbounds nuw [8 x i8], ptr %415, i64 %indvars.iv136
  %574 = load double, ptr %573, align 8
  %575 = tail call double @llvm.fmuladd.f64(double %572, double %574, double %571)
  store double %575, ptr %451, align 8
  %576 = load double, ptr %450, align 8
  %577 = getelementptr inbounds nuw [8 x i8], ptr %416, i64 %indvars.iv136
  %578 = load double, ptr %577, align 8
  %579 = tail call double @llvm.fmuladd.f64(double %576, double %578, double %575)
  store double %579, ptr %451, align 8
  %gep109 = getelementptr inbounds nuw [224 x i8], ptr %invariant.gep108, i64 %indvars.iv136
  store double %579, ptr %gep109, align 8
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next137, 28
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph, !llvm.loop !32

580:                                              ; preds = %.loopexit
  %581 = getelementptr inbounds nuw i8, ptr %2, i64 6264
  store double 1.000000e+00, ptr %581, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_04MOHGEFGA@corr?$AA@") #9
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
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %13)
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %16 = load double, ptr %15, align 8
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %16) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !33

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 28
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !34

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_04MOHGEFGA@corr?$AA@") #9
  %23 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare dso_local double @sqrt(double noundef) local_unnamed_addr #7

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
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\correlation\\correlation.c", directory: "C:\\work\\llvm-profitability-research")
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
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, i1 false, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = !{!22, !27}
!27 = distinct !{!27, !23}
!28 = !{!27}
!29 = distinct !{!29, !8, !15, !19}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
