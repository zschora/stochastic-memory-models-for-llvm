; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\gramschmidt\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\gramschmidt\\gramschmidt.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01DGKLNCNG@R?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_01BNIGIBBF@Q?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01DGKLNCNG@R?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"R\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_01BNIGIBBF@Q?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"Q\00", comdat, align 4
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #11
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #11
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #11
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  tail call fastcc void @kernel_gramschmidt(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %6 = icmp sgt i32 %0, 42
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %8, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @print_array(ptr noundef %4, ptr noundef %5)
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
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %2 to i64
  %6 = sub i64 %4, %5
  %diff.check = icmp ugt i64 %6, -16
  br label %.preheader29

.preheader29:                                     ; preds = %3, %middle.block
  %indvars.iv35 = phi i64 [ 0, %3 ], [ %indvars.iv.next36, %middle.block ]
  %7 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv35
  %8 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv35
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader29
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv35, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %9 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %10 = trunc nuw nsw <2 x i64> %9 to <2 x i32>
  %11 = urem <2 x i32> %10, splat (i32 20)
  %12 = uitofp nneg <2 x i32> %11 to <2 x double>
  %13 = fdiv <2 x double> %12, splat (double 2.000000e+01)
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> splat (double 1.000000e+02), <2 x double> splat (double 1.000000e+01))
  %15 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index
  store <2 x double> %14, ptr %15, align 8
  %16 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index
  store <2 x double> zeroinitializer, ptr %16, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %17 = icmp eq i64 %index.next, 30
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !7

scalar.ph:                                        ; preds = %.preheader29, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader29 ]
  %18 = mul nuw nsw i64 %indvars.iv, %indvars.iv35
  %19 = trunc nuw nsw i64 %18 to i32
  %20 = urem i32 %19, 20
  %21 = uitofp nneg i32 %20 to double
  %22 = fdiv double %21, 2.000000e+01
  %23 = tail call double @llvm.fmuladd.f64(double %22, double 1.000000e+02, double 1.000000e+01)
  %24 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  store double %23, ptr %24, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  store double 0.000000e+00, ptr %25, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !12

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 20
  br i1 %exitcond38.not, label %.preheader.preheader, label %.preheader29, !llvm.loop !14

.preheader.preheader:                             ; preds = %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7200) %1, i8 0, i64 7200, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @kernel_gramschmidt(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #3 {
  %scevgep = getelementptr i8, ptr %2, i64 4800
  %scevgep12 = getelementptr i8, ptr %0, i64 4800
  %bound117 = icmp ult ptr %2, %scevgep12
  br label %.preheader59

.loopexit:                                        ; preds = %.preheader, %middle.block, %.preheader59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, 30
  br i1 %exitcond89.not, label %381, label %.preheader59, !llvm.loop !15

.preheader59:                                     ; preds = %3, %.loopexit
  %indvars.iv86 = phi i64 [ 0, %3 ], [ %indvars.iv.next87, %.loopexit ]
  %indvars.iv = phi i64 [ 1, %3 ], [ %indvars.iv.next, %.loopexit ]
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv86
  %4 = load double, ptr %invariant.gep, align 8
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %4, double 0.000000e+00)
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %6 = load double, ptr %gep.1, align 8
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %5)
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %8 = load double, ptr %gep.2, align 8
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %7)
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %10 = load double, ptr %gep.3, align 8
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %9)
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 960
  %12 = load double, ptr %gep.4, align 8
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %11)
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1200
  %14 = load double, ptr %gep.5, align 8
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %13)
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1440
  %16 = load double, ptr %gep.6, align 8
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %15)
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1680
  %18 = load double, ptr %gep.7, align 8
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %17)
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1920
  %20 = load double, ptr %gep.8, align 8
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double %19)
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2160
  %22 = load double, ptr %gep.9, align 8
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %22, double %21)
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2400
  %24 = load double, ptr %gep.10, align 8
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %23)
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2640
  %26 = load double, ptr %gep.11, align 8
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %26, double %25)
  %gep.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2880
  %28 = load double, ptr %gep.12, align 8
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %27)
  %gep.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3120
  %30 = load double, ptr %gep.13, align 8
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %29)
  %gep.14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3360
  %32 = load double, ptr %gep.14, align 8
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %32, double %31)
  %gep.15 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3600
  %34 = load double, ptr %gep.15, align 8
  %35 = tail call double @llvm.fmuladd.f64(double %34, double %34, double %33)
  %gep.16 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3840
  %36 = load double, ptr %gep.16, align 8
  %37 = tail call double @llvm.fmuladd.f64(double %36, double %36, double %35)
  %gep.17 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4080
  %38 = load double, ptr %gep.17, align 8
  %39 = tail call double @llvm.fmuladd.f64(double %38, double %38, double %37)
  %gep.18 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4320
  %40 = load double, ptr %gep.18, align 8
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %40, double %39)
  %gep.19 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4560
  %42 = load double, ptr %gep.19, align 8
  %43 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %41)
  %44 = tail call double @sqrt(double noundef %43) #11
  %45 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv86
  %46 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %indvars.iv86
  store double %44, ptr %46, align 8
  %invariant.gep64 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv86
  %47 = load double, ptr %invariant.gep, align 8
  %48 = fdiv double %47, %44
  store double %48, ptr %invariant.gep64, align 8
  %49 = load double, ptr %gep.1, align 8
  %50 = load double, ptr %46, align 8
  %51 = fdiv double %49, %50
  %gep65.1 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 240
  store double %51, ptr %gep65.1, align 8
  %52 = load double, ptr %gep.2, align 8
  %53 = load double, ptr %46, align 8
  %54 = fdiv double %52, %53
  %gep65.2 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 480
  store double %54, ptr %gep65.2, align 8
  %55 = load double, ptr %gep.3, align 8
  %56 = load double, ptr %46, align 8
  %57 = fdiv double %55, %56
  %gep65.3 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 720
  store double %57, ptr %gep65.3, align 8
  %58 = load double, ptr %gep.4, align 8
  %59 = load double, ptr %46, align 8
  %60 = fdiv double %58, %59
  %gep65.4 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 960
  store double %60, ptr %gep65.4, align 8
  %61 = load double, ptr %gep.5, align 8
  %62 = load double, ptr %46, align 8
  %63 = fdiv double %61, %62
  %gep65.5 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 1200
  store double %63, ptr %gep65.5, align 8
  %64 = load double, ptr %gep.6, align 8
  %65 = load double, ptr %46, align 8
  %66 = fdiv double %64, %65
  %gep65.6 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 1440
  store double %66, ptr %gep65.6, align 8
  %67 = load double, ptr %gep.7, align 8
  %68 = load double, ptr %46, align 8
  %69 = fdiv double %67, %68
  %gep65.7 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 1680
  store double %69, ptr %gep65.7, align 8
  %70 = load double, ptr %gep.8, align 8
  %71 = load double, ptr %46, align 8
  %72 = fdiv double %70, %71
  %gep65.8 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 1920
  store double %72, ptr %gep65.8, align 8
  %73 = load double, ptr %gep.9, align 8
  %74 = load double, ptr %46, align 8
  %75 = fdiv double %73, %74
  %gep65.9 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 2160
  store double %75, ptr %gep65.9, align 8
  %76 = load double, ptr %gep.10, align 8
  %77 = load double, ptr %46, align 8
  %78 = fdiv double %76, %77
  %gep65.10 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 2400
  store double %78, ptr %gep65.10, align 8
  %79 = load double, ptr %gep.11, align 8
  %80 = load double, ptr %46, align 8
  %81 = fdiv double %79, %80
  %gep65.11 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 2640
  store double %81, ptr %gep65.11, align 8
  %82 = load double, ptr %gep.12, align 8
  %83 = load double, ptr %46, align 8
  %84 = fdiv double %82, %83
  %gep65.12 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 2880
  store double %84, ptr %gep65.12, align 8
  %85 = load double, ptr %gep.13, align 8
  %86 = load double, ptr %46, align 8
  %87 = fdiv double %85, %86
  %gep65.13 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 3120
  store double %87, ptr %gep65.13, align 8
  %88 = load double, ptr %gep.14, align 8
  %89 = load double, ptr %46, align 8
  %90 = fdiv double %88, %89
  %gep65.14 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 3360
  store double %90, ptr %gep65.14, align 8
  %91 = load double, ptr %gep.15, align 8
  %92 = load double, ptr %46, align 8
  %93 = fdiv double %91, %92
  %gep65.15 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 3600
  store double %93, ptr %gep65.15, align 8
  %94 = load double, ptr %gep.16, align 8
  %95 = load double, ptr %46, align 8
  %96 = fdiv double %94, %95
  %gep65.16 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 3840
  store double %96, ptr %gep65.16, align 8
  %97 = load double, ptr %gep.17, align 8
  %98 = load double, ptr %46, align 8
  %99 = fdiv double %97, %98
  %gep65.17 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 4080
  store double %99, ptr %gep65.17, align 8
  %100 = load double, ptr %gep.18, align 8
  %101 = load double, ptr %46, align 8
  %102 = fdiv double %100, %101
  %gep65.18 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 4320
  store double %102, ptr %gep65.18, align 8
  %103 = load double, ptr %gep.19, align 8
  %104 = load double, ptr %46, align 8
  %105 = fdiv double %103, %104
  %gep65.19 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 4560
  store double %105, ptr %gep65.19, align 8
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %106 = icmp samesign ult i64 %indvars.iv86, 29
  br i1 %106, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader59
  %107 = sub nuw nsw i64 29, %indvars.iv86
  %min.iters.check = icmp eq i64 %indvars.iv86, 28
  br i1 %min.iters.check, label %.preheader.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %108 = mul nuw nsw i64 %indvars.iv86, 248
  %109 = getelementptr i8, ptr %1, i64 %108
  %110 = getelementptr i8, ptr %109, i64 8
  %111 = mul nuw nsw i64 %indvars.iv86, 240
  %112 = getelementptr i8, ptr %1, i64 %111
  %113 = getelementptr i8, ptr %112, i64 240
  %114 = shl nuw nsw i64 %indvars.iv86, 3
  %115 = getelementptr i8, ptr %0, i64 %114
  %116 = getelementptr i8, ptr %115, i64 8
  %bound0 = icmp ult ptr %110, %scevgep12
  %bound1 = icmp ult ptr %116, %113
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %110, %scevgep
  %bound114 = icmp ult ptr %2, %113
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  %bound016 = icmp ult ptr %116, %scevgep
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx19 = or i1 %conflict.rdx, %found.conflict18
  br i1 %conflict.rdx19, label %.preheader.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %107, 30
  %117 = add nuw i64 %indvars.iv, %n.vec
  %118 = load double, ptr %invariant.gep64, align 8, !alias.scope !16
  %broadcast.splatinsert = insertelement <2 x double> poison, double %118, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %119 = load double, ptr %gep65.1, align 8, !alias.scope !16
  %broadcast.splatinsert20 = insertelement <2 x double> poison, double %119, i64 0
  %broadcast.splat21 = shufflevector <2 x double> %broadcast.splatinsert20, <2 x double> poison, <2 x i32> zeroinitializer
  %120 = load double, ptr %gep65.2, align 8, !alias.scope !16
  %broadcast.splatinsert22 = insertelement <2 x double> poison, double %120, i64 0
  %broadcast.splat23 = shufflevector <2 x double> %broadcast.splatinsert22, <2 x double> poison, <2 x i32> zeroinitializer
  %121 = load double, ptr %gep65.3, align 8, !alias.scope !16
  %broadcast.splatinsert24 = insertelement <2 x double> poison, double %121, i64 0
  %broadcast.splat25 = shufflevector <2 x double> %broadcast.splatinsert24, <2 x double> poison, <2 x i32> zeroinitializer
  %122 = load double, ptr %gep65.4, align 8, !alias.scope !16
  %broadcast.splatinsert26 = insertelement <2 x double> poison, double %122, i64 0
  %broadcast.splat27 = shufflevector <2 x double> %broadcast.splatinsert26, <2 x double> poison, <2 x i32> zeroinitializer
  %123 = load double, ptr %gep65.5, align 8, !alias.scope !16
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %123, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer
  %124 = load double, ptr %gep65.6, align 8, !alias.scope !16
  %broadcast.splatinsert30 = insertelement <2 x double> poison, double %124, i64 0
  %broadcast.splat31 = shufflevector <2 x double> %broadcast.splatinsert30, <2 x double> poison, <2 x i32> zeroinitializer
  %125 = load double, ptr %gep65.7, align 8, !alias.scope !16
  %broadcast.splatinsert32 = insertelement <2 x double> poison, double %125, i64 0
  %broadcast.splat33 = shufflevector <2 x double> %broadcast.splatinsert32, <2 x double> poison, <2 x i32> zeroinitializer
  %126 = load double, ptr %gep65.8, align 8, !alias.scope !16
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %126, i64 0
  %broadcast.splat35 = shufflevector <2 x double> %broadcast.splatinsert34, <2 x double> poison, <2 x i32> zeroinitializer
  %127 = load double, ptr %gep65.9, align 8, !alias.scope !16
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %127, i64 0
  %broadcast.splat37 = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> poison, <2 x i32> zeroinitializer
  %128 = load double, ptr %gep65.10, align 8, !alias.scope !16
  %broadcast.splatinsert38 = insertelement <2 x double> poison, double %128, i64 0
  %broadcast.splat39 = shufflevector <2 x double> %broadcast.splatinsert38, <2 x double> poison, <2 x i32> zeroinitializer
  %129 = load double, ptr %gep65.11, align 8, !alias.scope !16
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %129, i64 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer
  %130 = load double, ptr %gep65.12, align 8, !alias.scope !16
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %130, i64 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer
  %131 = load double, ptr %gep65.13, align 8, !alias.scope !16
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %131, i64 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  %132 = load double, ptr %gep65.14, align 8, !alias.scope !16
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %132, i64 0
  %broadcast.splat47 = shufflevector <2 x double> %broadcast.splatinsert46, <2 x double> poison, <2 x i32> zeroinitializer
  %133 = load double, ptr %gep65.15, align 8, !alias.scope !16
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %133, i64 0
  %broadcast.splat49 = shufflevector <2 x double> %broadcast.splatinsert48, <2 x double> poison, <2 x i32> zeroinitializer
  %134 = load double, ptr %gep65.16, align 8, !alias.scope !16
  %broadcast.splatinsert50 = insertelement <2 x double> poison, double %134, i64 0
  %broadcast.splat51 = shufflevector <2 x double> %broadcast.splatinsert50, <2 x double> poison, <2 x i32> zeroinitializer
  %135 = load double, ptr %gep65.17, align 8, !alias.scope !16
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %135, i64 0
  %broadcast.splat53 = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> poison, <2 x i32> zeroinitializer
  %136 = load double, ptr %gep65.18, align 8, !alias.scope !16
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %136, i64 0
  %broadcast.splat55 = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> poison, <2 x i32> zeroinitializer
  %137 = load double, ptr %gep65.19, align 8, !alias.scope !16
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %137, i64 0
  %broadcast.splat57 = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> poison, <2 x i32> zeroinitializer
  %138 = fneg <2 x double> %broadcast.splat
  %139 = fneg <2 x double> %broadcast.splat21
  %140 = fneg <2 x double> %broadcast.splat23
  %141 = fneg <2 x double> %broadcast.splat25
  %142 = fneg <2 x double> %broadcast.splat27
  %143 = fneg <2 x double> %broadcast.splat29
  %144 = fneg <2 x double> %broadcast.splat31
  %145 = fneg <2 x double> %broadcast.splat33
  %146 = fneg <2 x double> %broadcast.splat35
  %147 = fneg <2 x double> %broadcast.splat37
  %148 = fneg <2 x double> %broadcast.splat39
  %149 = fneg <2 x double> %broadcast.splat41
  %150 = fneg <2 x double> %broadcast.splat43
  %151 = fneg <2 x double> %broadcast.splat45
  %152 = fneg <2 x double> %broadcast.splat47
  %153 = fneg <2 x double> %broadcast.splat49
  %154 = fneg <2 x double> %broadcast.splat51
  %155 = fneg <2 x double> %broadcast.splat53
  %156 = fneg <2 x double> %broadcast.splat55
  %157 = fneg <2 x double> %broadcast.splat57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %158 = add nuw i64 %indvars.iv, %index
  %159 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %158
  store <2 x double> zeroinitializer, ptr %159, align 8, !alias.scope !19, !noalias !21
  %160 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %158
  %wide.load = load <2 x double>, ptr %160, align 8, !alias.scope !23, !noalias !16
  %161 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> zeroinitializer)
  store <2 x double> %161, ptr %159, align 8, !alias.scope !19, !noalias !21
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 240
  %wide.load58 = load <2 x double>, ptr %162, align 8, !alias.scope !23, !noalias !16
  %163 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat21, <2 x double> %wide.load58, <2 x double> %161)
  store <2 x double> %163, ptr %159, align 8, !alias.scope !19, !noalias !21
  %164 = getelementptr inbounds nuw i8, ptr %160, i64 480
  %wide.load59 = load <2 x double>, ptr %164, align 8, !alias.scope !23, !noalias !16
  %165 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat23, <2 x double> %wide.load59, <2 x double> %163)
  store <2 x double> %165, ptr %159, align 8, !alias.scope !19, !noalias !21
  %166 = getelementptr inbounds nuw i8, ptr %160, i64 720
  %wide.load60 = load <2 x double>, ptr %166, align 8, !alias.scope !23, !noalias !16
  %167 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat25, <2 x double> %wide.load60, <2 x double> %165)
  store <2 x double> %167, ptr %159, align 8, !alias.scope !19, !noalias !21
  %168 = getelementptr inbounds nuw i8, ptr %160, i64 960
  %wide.load61 = load <2 x double>, ptr %168, align 8, !alias.scope !23, !noalias !16
  %169 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat27, <2 x double> %wide.load61, <2 x double> %167)
  store <2 x double> %169, ptr %159, align 8, !alias.scope !19, !noalias !21
  %170 = getelementptr inbounds nuw i8, ptr %160, i64 1200
  %wide.load62 = load <2 x double>, ptr %170, align 8, !alias.scope !23, !noalias !16
  %171 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load62, <2 x double> %169)
  store <2 x double> %171, ptr %159, align 8, !alias.scope !19, !noalias !21
  %172 = getelementptr inbounds nuw i8, ptr %160, i64 1440
  %wide.load63 = load <2 x double>, ptr %172, align 8, !alias.scope !23, !noalias !16
  %173 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat31, <2 x double> %wide.load63, <2 x double> %171)
  store <2 x double> %173, ptr %159, align 8, !alias.scope !19, !noalias !21
  %174 = getelementptr inbounds nuw i8, ptr %160, i64 1680
  %wide.load64 = load <2 x double>, ptr %174, align 8, !alias.scope !23, !noalias !16
  %175 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat33, <2 x double> %wide.load64, <2 x double> %173)
  store <2 x double> %175, ptr %159, align 8, !alias.scope !19, !noalias !21
  %176 = getelementptr inbounds nuw i8, ptr %160, i64 1920
  %wide.load65 = load <2 x double>, ptr %176, align 8, !alias.scope !23, !noalias !16
  %177 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat35, <2 x double> %wide.load65, <2 x double> %175)
  store <2 x double> %177, ptr %159, align 8, !alias.scope !19, !noalias !21
  %178 = getelementptr inbounds nuw i8, ptr %160, i64 2160
  %wide.load66 = load <2 x double>, ptr %178, align 8, !alias.scope !23, !noalias !16
  %179 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load66, <2 x double> %177)
  store <2 x double> %179, ptr %159, align 8, !alias.scope !19, !noalias !21
  %180 = getelementptr inbounds nuw i8, ptr %160, i64 2400
  %wide.load67 = load <2 x double>, ptr %180, align 8, !alias.scope !23, !noalias !16
  %181 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat39, <2 x double> %wide.load67, <2 x double> %179)
  store <2 x double> %181, ptr %159, align 8, !alias.scope !19, !noalias !21
  %182 = getelementptr inbounds nuw i8, ptr %160, i64 2640
  %wide.load68 = load <2 x double>, ptr %182, align 8, !alias.scope !23, !noalias !16
  %183 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat41, <2 x double> %wide.load68, <2 x double> %181)
  store <2 x double> %183, ptr %159, align 8, !alias.scope !19, !noalias !21
  %184 = getelementptr inbounds nuw i8, ptr %160, i64 2880
  %wide.load69 = load <2 x double>, ptr %184, align 8, !alias.scope !23, !noalias !16
  %185 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat43, <2 x double> %wide.load69, <2 x double> %183)
  store <2 x double> %185, ptr %159, align 8, !alias.scope !19, !noalias !21
  %186 = getelementptr inbounds nuw i8, ptr %160, i64 3120
  %wide.load70 = load <2 x double>, ptr %186, align 8, !alias.scope !23, !noalias !16
  %187 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat45, <2 x double> %wide.load70, <2 x double> %185)
  store <2 x double> %187, ptr %159, align 8, !alias.scope !19, !noalias !21
  %188 = getelementptr inbounds nuw i8, ptr %160, i64 3360
  %wide.load71 = load <2 x double>, ptr %188, align 8, !alias.scope !23, !noalias !16
  %189 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat47, <2 x double> %wide.load71, <2 x double> %187)
  store <2 x double> %189, ptr %159, align 8, !alias.scope !19, !noalias !21
  %190 = getelementptr inbounds nuw i8, ptr %160, i64 3600
  %wide.load72 = load <2 x double>, ptr %190, align 8, !alias.scope !23, !noalias !16
  %191 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load72, <2 x double> %189)
  store <2 x double> %191, ptr %159, align 8, !alias.scope !19, !noalias !21
  %192 = getelementptr inbounds nuw i8, ptr %160, i64 3840
  %wide.load73 = load <2 x double>, ptr %192, align 8, !alias.scope !23, !noalias !16
  %193 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat51, <2 x double> %wide.load73, <2 x double> %191)
  store <2 x double> %193, ptr %159, align 8, !alias.scope !19, !noalias !21
  %194 = getelementptr inbounds nuw i8, ptr %160, i64 4080
  %wide.load74 = load <2 x double>, ptr %194, align 8, !alias.scope !23, !noalias !16
  %195 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load74, <2 x double> %193)
  store <2 x double> %195, ptr %159, align 8, !alias.scope !19, !noalias !21
  %196 = getelementptr inbounds nuw i8, ptr %160, i64 4320
  %wide.load75 = load <2 x double>, ptr %196, align 8, !alias.scope !23, !noalias !16
  %197 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat55, <2 x double> %wide.load75, <2 x double> %195)
  store <2 x double> %197, ptr %159, align 8, !alias.scope !19, !noalias !21
  %198 = getelementptr inbounds nuw i8, ptr %160, i64 4560
  %wide.load76 = load <2 x double>, ptr %198, align 8, !alias.scope !23, !noalias !16
  %199 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat57, <2 x double> %wide.load76, <2 x double> %197)
  store <2 x double> %199, ptr %159, align 8, !alias.scope !19, !noalias !21
  %wide.load77 = load <2 x double>, ptr %160, align 8, !alias.scope !23, !noalias !16
  %200 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %138, <2 x double> %199, <2 x double> %wide.load77)
  store <2 x double> %200, ptr %160, align 8, !alias.scope !23, !noalias !16
  %wide.load78 = load <2 x double>, ptr %162, align 8, !alias.scope !23, !noalias !16
  %201 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %139, <2 x double> %199, <2 x double> %wide.load78)
  store <2 x double> %201, ptr %162, align 8, !alias.scope !23, !noalias !16
  %wide.load80 = load <2 x double>, ptr %164, align 8, !alias.scope !23, !noalias !16
  %wide.load81 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %202 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %140, <2 x double> %wide.load81, <2 x double> %wide.load80)
  store <2 x double> %202, ptr %164, align 8, !alias.scope !23, !noalias !16
  %wide.load82 = load <2 x double>, ptr %166, align 8, !alias.scope !23, !noalias !16
  %203 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %141, <2 x double> %wide.load81, <2 x double> %wide.load82)
  store <2 x double> %203, ptr %166, align 8, !alias.scope !23, !noalias !16
  %wide.load84 = load <2 x double>, ptr %168, align 8, !alias.scope !23, !noalias !16
  %wide.load85 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %204 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %142, <2 x double> %wide.load85, <2 x double> %wide.load84)
  store <2 x double> %204, ptr %168, align 8, !alias.scope !23, !noalias !16
  %wide.load86 = load <2 x double>, ptr %170, align 8, !alias.scope !23, !noalias !16
  %205 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %143, <2 x double> %wide.load85, <2 x double> %wide.load86)
  store <2 x double> %205, ptr %170, align 8, !alias.scope !23, !noalias !16
  %wide.load88 = load <2 x double>, ptr %172, align 8, !alias.scope !23, !noalias !16
  %wide.load89 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %206 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %144, <2 x double> %wide.load89, <2 x double> %wide.load88)
  store <2 x double> %206, ptr %172, align 8, !alias.scope !23, !noalias !16
  %wide.load90 = load <2 x double>, ptr %174, align 8, !alias.scope !23, !noalias !16
  %207 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %145, <2 x double> %wide.load89, <2 x double> %wide.load90)
  store <2 x double> %207, ptr %174, align 8, !alias.scope !23, !noalias !16
  %wide.load92 = load <2 x double>, ptr %176, align 8, !alias.scope !23, !noalias !16
  %wide.load93 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %208 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %146, <2 x double> %wide.load93, <2 x double> %wide.load92)
  store <2 x double> %208, ptr %176, align 8, !alias.scope !23, !noalias !16
  %wide.load94 = load <2 x double>, ptr %178, align 8, !alias.scope !23, !noalias !16
  %209 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %147, <2 x double> %wide.load93, <2 x double> %wide.load94)
  store <2 x double> %209, ptr %178, align 8, !alias.scope !23, !noalias !16
  %wide.load96 = load <2 x double>, ptr %180, align 8, !alias.scope !23, !noalias !16
  %wide.load97 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %210 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %148, <2 x double> %wide.load97, <2 x double> %wide.load96)
  store <2 x double> %210, ptr %180, align 8, !alias.scope !23, !noalias !16
  %wide.load98 = load <2 x double>, ptr %182, align 8, !alias.scope !23, !noalias !16
  %211 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %149, <2 x double> %wide.load97, <2 x double> %wide.load98)
  store <2 x double> %211, ptr %182, align 8, !alias.scope !23, !noalias !16
  %wide.load100 = load <2 x double>, ptr %184, align 8, !alias.scope !23, !noalias !16
  %wide.load101 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %212 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %150, <2 x double> %wide.load101, <2 x double> %wide.load100)
  store <2 x double> %212, ptr %184, align 8, !alias.scope !23, !noalias !16
  %wide.load102 = load <2 x double>, ptr %186, align 8, !alias.scope !23, !noalias !16
  %213 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %151, <2 x double> %wide.load101, <2 x double> %wide.load102)
  store <2 x double> %213, ptr %186, align 8, !alias.scope !23, !noalias !16
  %wide.load104 = load <2 x double>, ptr %188, align 8, !alias.scope !23, !noalias !16
  %wide.load105 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %214 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %152, <2 x double> %wide.load105, <2 x double> %wide.load104)
  store <2 x double> %214, ptr %188, align 8, !alias.scope !23, !noalias !16
  %wide.load106 = load <2 x double>, ptr %190, align 8, !alias.scope !23, !noalias !16
  %215 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %153, <2 x double> %wide.load105, <2 x double> %wide.load106)
  store <2 x double> %215, ptr %190, align 8, !alias.scope !23, !noalias !16
  %wide.load108 = load <2 x double>, ptr %192, align 8, !alias.scope !23, !noalias !16
  %wide.load109 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %216 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %154, <2 x double> %wide.load109, <2 x double> %wide.load108)
  store <2 x double> %216, ptr %192, align 8, !alias.scope !23, !noalias !16
  %wide.load110 = load <2 x double>, ptr %194, align 8, !alias.scope !23, !noalias !16
  %217 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %155, <2 x double> %wide.load109, <2 x double> %wide.load110)
  store <2 x double> %217, ptr %194, align 8, !alias.scope !23, !noalias !16
  %wide.load112 = load <2 x double>, ptr %196, align 8, !alias.scope !23, !noalias !16
  %wide.load113 = load <2 x double>, ptr %159, align 8, !alias.scope !19, !noalias !21
  %218 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %156, <2 x double> %wide.load113, <2 x double> %wide.load112)
  store <2 x double> %218, ptr %196, align 8, !alias.scope !23, !noalias !16
  %wide.load114 = load <2 x double>, ptr %198, align 8, !alias.scope !23, !noalias !16
  %219 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %157, <2 x double> %wide.load113, <2 x double> %wide.load114)
  store <2 x double> %219, ptr %198, align 8, !alias.scope !23, !noalias !16
  %index.next = add nuw i64 %index, 2
  %220 = icmp eq i64 %index.next, %n.vec
  br i1 %220, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %107, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader116

.preheader.preheader116:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %indvars.iv83.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader.preheader ], [ %117, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader116, %.preheader
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.preheader ], [ %indvars.iv83.ph, %.preheader.preheader116 ]
  %221 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %indvars.iv83
  store double 0.000000e+00, ptr %221, align 8
  %invariant.gep69 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %222 = load double, ptr %invariant.gep64, align 8
  %223 = load double, ptr %invariant.gep69, align 8
  %224 = tail call double @llvm.fmuladd.f64(double %222, double %223, double 0.000000e+00)
  store double %224, ptr %221, align 8
  %225 = load double, ptr %gep65.1, align 8
  %gep70.1 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 240
  %226 = load double, ptr %gep70.1, align 8
  %227 = tail call double @llvm.fmuladd.f64(double %225, double %226, double %224)
  store double %227, ptr %221, align 8
  %228 = load double, ptr %gep65.2, align 8
  %gep70.2 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 480
  %229 = load double, ptr %gep70.2, align 8
  %230 = tail call double @llvm.fmuladd.f64(double %228, double %229, double %227)
  store double %230, ptr %221, align 8
  %231 = load double, ptr %gep65.3, align 8
  %gep70.3 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 720
  %232 = load double, ptr %gep70.3, align 8
  %233 = tail call double @llvm.fmuladd.f64(double %231, double %232, double %230)
  store double %233, ptr %221, align 8
  %234 = load double, ptr %gep65.4, align 8
  %gep70.4 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 960
  %235 = load double, ptr %gep70.4, align 8
  %236 = tail call double @llvm.fmuladd.f64(double %234, double %235, double %233)
  store double %236, ptr %221, align 8
  %237 = load double, ptr %gep65.5, align 8
  %gep70.5 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 1200
  %238 = load double, ptr %gep70.5, align 8
  %239 = tail call double @llvm.fmuladd.f64(double %237, double %238, double %236)
  store double %239, ptr %221, align 8
  %240 = load double, ptr %gep65.6, align 8
  %gep70.6 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 1440
  %241 = load double, ptr %gep70.6, align 8
  %242 = tail call double @llvm.fmuladd.f64(double %240, double %241, double %239)
  store double %242, ptr %221, align 8
  %243 = load double, ptr %gep65.7, align 8
  %gep70.7 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 1680
  %244 = load double, ptr %gep70.7, align 8
  %245 = tail call double @llvm.fmuladd.f64(double %243, double %244, double %242)
  store double %245, ptr %221, align 8
  %246 = load double, ptr %gep65.8, align 8
  %gep70.8 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 1920
  %247 = load double, ptr %gep70.8, align 8
  %248 = tail call double @llvm.fmuladd.f64(double %246, double %247, double %245)
  store double %248, ptr %221, align 8
  %249 = load double, ptr %gep65.9, align 8
  %gep70.9 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 2160
  %250 = load double, ptr %gep70.9, align 8
  %251 = tail call double @llvm.fmuladd.f64(double %249, double %250, double %248)
  store double %251, ptr %221, align 8
  %252 = load double, ptr %gep65.10, align 8
  %gep70.10 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 2400
  %253 = load double, ptr %gep70.10, align 8
  %254 = tail call double @llvm.fmuladd.f64(double %252, double %253, double %251)
  store double %254, ptr %221, align 8
  %255 = load double, ptr %gep65.11, align 8
  %gep70.11 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 2640
  %256 = load double, ptr %gep70.11, align 8
  %257 = tail call double @llvm.fmuladd.f64(double %255, double %256, double %254)
  store double %257, ptr %221, align 8
  %258 = load double, ptr %gep65.12, align 8
  %gep70.12 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 2880
  %259 = load double, ptr %gep70.12, align 8
  %260 = tail call double @llvm.fmuladd.f64(double %258, double %259, double %257)
  store double %260, ptr %221, align 8
  %261 = load double, ptr %gep65.13, align 8
  %gep70.13 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 3120
  %262 = load double, ptr %gep70.13, align 8
  %263 = tail call double @llvm.fmuladd.f64(double %261, double %262, double %260)
  store double %263, ptr %221, align 8
  %264 = load double, ptr %gep65.14, align 8
  %gep70.14 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 3360
  %265 = load double, ptr %gep70.14, align 8
  %266 = tail call double @llvm.fmuladd.f64(double %264, double %265, double %263)
  store double %266, ptr %221, align 8
  %267 = load double, ptr %gep65.15, align 8
  %gep70.15 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 3600
  %268 = load double, ptr %gep70.15, align 8
  %269 = tail call double @llvm.fmuladd.f64(double %267, double %268, double %266)
  store double %269, ptr %221, align 8
  %270 = load double, ptr %gep65.16, align 8
  %gep70.16 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 3840
  %271 = load double, ptr %gep70.16, align 8
  %272 = tail call double @llvm.fmuladd.f64(double %270, double %271, double %269)
  store double %272, ptr %221, align 8
  %273 = load double, ptr %gep65.17, align 8
  %gep70.17 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 4080
  %274 = load double, ptr %gep70.17, align 8
  %275 = tail call double @llvm.fmuladd.f64(double %273, double %274, double %272)
  store double %275, ptr %221, align 8
  %276 = load double, ptr %gep65.18, align 8
  %gep70.18 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 4320
  %277 = load double, ptr %gep70.18, align 8
  %278 = tail call double @llvm.fmuladd.f64(double %276, double %277, double %275)
  store double %278, ptr %221, align 8
  %279 = load double, ptr %gep65.19, align 8
  %gep70.19 = getelementptr inbounds nuw i8, ptr %invariant.gep69, i64 4560
  %280 = load double, ptr %gep70.19, align 8
  %281 = tail call double @llvm.fmuladd.f64(double %279, double %280, double %278)
  store double %281, ptr %221, align 8
  %282 = load double, ptr %invariant.gep69, align 8
  %283 = load double, ptr %invariant.gep64, align 8
  %284 = fneg double %283
  %285 = tail call double @llvm.fmuladd.f64(double %284, double %281, double %282)
  store double %285, ptr %invariant.gep69, align 8
  %286 = load double, ptr %gep70.1, align 8
  %287 = load double, ptr %gep65.1, align 8
  %288 = load double, ptr %221, align 8
  %289 = fneg double %287
  %290 = tail call double @llvm.fmuladd.f64(double %289, double %288, double %286)
  store double %290, ptr %gep70.1, align 8
  %291 = load double, ptr %gep70.2, align 8
  %292 = load double, ptr %gep65.2, align 8
  %293 = load double, ptr %221, align 8
  %294 = fneg double %292
  %295 = tail call double @llvm.fmuladd.f64(double %294, double %293, double %291)
  store double %295, ptr %gep70.2, align 8
  %296 = load double, ptr %gep70.3, align 8
  %297 = load double, ptr %gep65.3, align 8
  %298 = load double, ptr %221, align 8
  %299 = fneg double %297
  %300 = tail call double @llvm.fmuladd.f64(double %299, double %298, double %296)
  store double %300, ptr %gep70.3, align 8
  %301 = load double, ptr %gep70.4, align 8
  %302 = load double, ptr %gep65.4, align 8
  %303 = load double, ptr %221, align 8
  %304 = fneg double %302
  %305 = tail call double @llvm.fmuladd.f64(double %304, double %303, double %301)
  store double %305, ptr %gep70.4, align 8
  %306 = load double, ptr %gep70.5, align 8
  %307 = load double, ptr %gep65.5, align 8
  %308 = load double, ptr %221, align 8
  %309 = fneg double %307
  %310 = tail call double @llvm.fmuladd.f64(double %309, double %308, double %306)
  store double %310, ptr %gep70.5, align 8
  %311 = load double, ptr %gep70.6, align 8
  %312 = load double, ptr %gep65.6, align 8
  %313 = load double, ptr %221, align 8
  %314 = fneg double %312
  %315 = tail call double @llvm.fmuladd.f64(double %314, double %313, double %311)
  store double %315, ptr %gep70.6, align 8
  %316 = load double, ptr %gep70.7, align 8
  %317 = load double, ptr %gep65.7, align 8
  %318 = load double, ptr %221, align 8
  %319 = fneg double %317
  %320 = tail call double @llvm.fmuladd.f64(double %319, double %318, double %316)
  store double %320, ptr %gep70.7, align 8
  %321 = load double, ptr %gep70.8, align 8
  %322 = load double, ptr %gep65.8, align 8
  %323 = load double, ptr %221, align 8
  %324 = fneg double %322
  %325 = tail call double @llvm.fmuladd.f64(double %324, double %323, double %321)
  store double %325, ptr %gep70.8, align 8
  %326 = load double, ptr %gep70.9, align 8
  %327 = load double, ptr %gep65.9, align 8
  %328 = load double, ptr %221, align 8
  %329 = fneg double %327
  %330 = tail call double @llvm.fmuladd.f64(double %329, double %328, double %326)
  store double %330, ptr %gep70.9, align 8
  %331 = load double, ptr %gep70.10, align 8
  %332 = load double, ptr %gep65.10, align 8
  %333 = load double, ptr %221, align 8
  %334 = fneg double %332
  %335 = tail call double @llvm.fmuladd.f64(double %334, double %333, double %331)
  store double %335, ptr %gep70.10, align 8
  %336 = load double, ptr %gep70.11, align 8
  %337 = load double, ptr %gep65.11, align 8
  %338 = load double, ptr %221, align 8
  %339 = fneg double %337
  %340 = tail call double @llvm.fmuladd.f64(double %339, double %338, double %336)
  store double %340, ptr %gep70.11, align 8
  %341 = load double, ptr %gep70.12, align 8
  %342 = load double, ptr %gep65.12, align 8
  %343 = load double, ptr %221, align 8
  %344 = fneg double %342
  %345 = tail call double @llvm.fmuladd.f64(double %344, double %343, double %341)
  store double %345, ptr %gep70.12, align 8
  %346 = load double, ptr %gep70.13, align 8
  %347 = load double, ptr %gep65.13, align 8
  %348 = load double, ptr %221, align 8
  %349 = fneg double %347
  %350 = tail call double @llvm.fmuladd.f64(double %349, double %348, double %346)
  store double %350, ptr %gep70.13, align 8
  %351 = load double, ptr %gep70.14, align 8
  %352 = load double, ptr %gep65.14, align 8
  %353 = load double, ptr %221, align 8
  %354 = fneg double %352
  %355 = tail call double @llvm.fmuladd.f64(double %354, double %353, double %351)
  store double %355, ptr %gep70.14, align 8
  %356 = load double, ptr %gep70.15, align 8
  %357 = load double, ptr %gep65.15, align 8
  %358 = load double, ptr %221, align 8
  %359 = fneg double %357
  %360 = tail call double @llvm.fmuladd.f64(double %359, double %358, double %356)
  store double %360, ptr %gep70.15, align 8
  %361 = load double, ptr %gep70.16, align 8
  %362 = load double, ptr %gep65.16, align 8
  %363 = load double, ptr %221, align 8
  %364 = fneg double %362
  %365 = tail call double @llvm.fmuladd.f64(double %364, double %363, double %361)
  store double %365, ptr %gep70.16, align 8
  %366 = load double, ptr %gep70.17, align 8
  %367 = load double, ptr %gep65.17, align 8
  %368 = load double, ptr %221, align 8
  %369 = fneg double %367
  %370 = tail call double @llvm.fmuladd.f64(double %369, double %368, double %366)
  store double %370, ptr %gep70.17, align 8
  %371 = load double, ptr %gep70.18, align 8
  %372 = load double, ptr %gep65.18, align 8
  %373 = load double, ptr %221, align 8
  %374 = fneg double %372
  %375 = tail call double @llvm.fmuladd.f64(double %374, double %373, double %371)
  store double %375, ptr %gep70.18, align 8
  %376 = load double, ptr %gep70.19, align 8
  %377 = load double, ptr %gep65.19, align 8
  %378 = load double, ptr %221, align 8
  %379 = fneg double %377
  %380 = tail call double @llvm.fmuladd.f64(double %379, double %378, double %376)
  store double %380, ptr %gep70.19, align 8
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next84, 30
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !25

381:                                              ; preds = %.loopexit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %3)
  %4 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01DGKLNCNG@R?$AA@") #11
  br label %.preheader1

.preheader1:                                      ; preds = %2, %20
  %indvars.iv7 = phi i64 [ 0, %2 ], [ %indvars.iv.next8, %20 ]
  %6 = mul nuw nsw i64 %indvars.iv7, 30
  %7 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv7
  br label %8

8:                                                ; preds = %.preheader1, %15
  %indvars.iv = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next, %15 ]
  %9 = add nuw nsw i64 %indvars.iv, %6
  %10 = trunc nuw nsw i64 %9 to i32
  %11 = urem i32 %10, 20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fputc29 = tail call i32 @fputc(i32 10, ptr %14)
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %17 = load double, ptr %16, align 8
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %17) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %20, label %8, !llvm.loop !26

20:                                               ; preds = %15
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond10.not = icmp eq i64 %indvars.iv.next8, 30
  br i1 %exitcond10.not, label %21, label %.preheader1, !llvm.loop !27

21:                                               ; preds = %20
  %22 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01DGKLNCNG@R?$AA@") #11
  %24 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01BNIGIBBF@Q?$AA@") #11
  br label %.preheader

.preheader:                                       ; preds = %21, %40
  %indvars.iv15 = phi i64 [ 0, %21 ], [ %indvars.iv.next16, %40 ]
  %26 = mul nuw nsw i64 %indvars.iv15, 30
  %27 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv15
  br label %28

28:                                               ; preds = %.preheader, %35
  %indvars.iv11 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next12, %35 ]
  %29 = add nuw nsw i64 %indvars.iv11, %26
  %30 = trunc nuw nsw i64 %29 to i32
  %31 = urem i32 %30, 20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fputc = tail call i32 @fputc(i32 10, ptr %34)
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %indvars.iv11
  %37 = load double, ptr %36, align 8
  %38 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %37) #11
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 30
  br i1 %exitcond14.not, label %40, label %28, !llvm.loop !28

40:                                               ; preds = %35
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond18.not = icmp eq i64 %indvars.iv.next16, 20
  br i1 %exitcond18.not, label %41, label %.preheader, !llvm.loop !29

41:                                               ; preds = %40
  %42 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01BNIGIBBF@Q?$AA@") #11
  %44 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fwrite26 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %44)
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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\gramschmidt\\gramschmidt.c", directory: "C:\\work\\llvm-profitability-research")
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
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22, !17}
!22 = distinct !{!22, !18}
!23 = !{!22}
!24 = distinct !{!24, !8, !9, !10, !11}
!25 = distinct !{!25, !8, !9, !13}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
