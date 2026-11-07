; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\trmm\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\trmm\\trmm.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01HMGJMAIH@B?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01HMGJMAIH@B?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"B\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #8
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %6 = load double, ptr %3, align 8
  tail call fastcc void @kernel_trmm(double noundef %6, ptr noundef %4, ptr noundef %5)
  %7 = icmp sgt i32 %0, 42
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %9, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %8
  tail call fastcc void @print_array(ptr noundef %5)
  br label %11

11:                                               ; preds = %10, %8, %2
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 {
  store double 1.500000e+00, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %3, %._crit_edge
  %indvars.iv39 = phi i64 [ 0, %3 ], [ %indvars.iv.next40, %._crit_edge ]
  %.not = icmp eq i64 %indvars.iv39, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %4 = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %indvars.iv39
  %min.iters.check = icmp eq i64 %indvars.iv39, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph1

vector.ph1:                                       ; preds = %.lr.ph
  %n.vec = and i64 %indvars.iv39, 9223372036854775806
  %broadcast.splatinsert2 = insertelement <2 x i64> poison, i64 %indvars.iv39, i64 0
  %broadcast.splat3 = shufflevector <2 x i64> %broadcast.splatinsert2, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body4

vector.body4:                                     ; preds = %vector.body4, %vector.ph1
  %index5 = phi i64 [ 0, %vector.ph1 ], [ %index.next7, %vector.body4 ]
  %vec.ind6 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph1 ], [ %vec.ind.next8, %vector.body4 ]
  %5 = add nuw nsw <2 x i64> %vec.ind6, %broadcast.splat3
  %6 = trunc nuw nsw <2 x i64> %5 to <2 x i32>
  %7 = urem <2 x i32> %6, splat (i32 20)
  %8 = uitofp nneg <2 x i32> %7 to <2 x double>
  %9 = fdiv <2 x double> %8, splat (double 2.000000e+01)
  %10 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index5
  store <2 x double> %9, ptr %10, align 8
  %index.next7 = add nuw i64 %index5, 2
  %vec.ind.next8 = add nuw nsw <2 x i64> %vec.ind6, splat (i64 2)
  %11 = icmp eq i64 %index.next7, %n.vec
  br i1 %11, label %middle.block9, label %vector.body4, !llvm.loop !7

middle.block9:                                    ; preds = %vector.body4
  %cmp.n = icmp eq i64 %indvars.iv39, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block9
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block9 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %12 = add nuw nsw i64 %indvars.iv, %indvars.iv39
  %13 = trunc nuw nsw i64 %12 to i32
  %.urem = urem i32 %13, 20
  %14 = uitofp nneg i32 %.urem to double
  %15 = fdiv double %14, 2.000000e+01
  %16 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double %15, ptr %16, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv39
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %scalar.ph, %middle.block9, %.preheader
  %17 = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %indvars.iv39
  %18 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv39
  store double 1.000000e+00, ptr %18, align 8
  %19 = add nuw nsw i64 %indvars.iv39, 30
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %19, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %20 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv39
  %21 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %22 = add <2 x i32> %21, <i32 0, i32 -1>
  %23 = urem <2 x i32> %22, splat (i32 30)
  %24 = uitofp nneg <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, splat (double 3.000000e+01)
  store <2 x double> %25, ptr %20, align 8
  %26 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %27 = add <2 x i32> %26, <i32 -2, i32 -3>
  %28 = urem <2 x i32> %27, splat (i32 30)
  %29 = uitofp nneg <2 x i32> %28 to <2 x double>
  %30 = fdiv <2 x double> %29, splat (double 3.000000e+01)
  %31 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store <2 x double> %30, ptr %31, align 8
  %32 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %33 = add <2 x i32> %32, <i32 -4, i32 -5>
  %34 = urem <2 x i32> %33, splat (i32 30)
  %35 = uitofp nneg <2 x i32> %34 to <2 x double>
  %36 = fdiv <2 x double> %35, splat (double 3.000000e+01)
  %37 = getelementptr inbounds nuw i8, ptr %20, i64 32
  store <2 x double> %36, ptr %37, align 8
  %38 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %39 = add <2 x i32> %38, <i32 -6, i32 -7>
  %40 = urem <2 x i32> %39, splat (i32 30)
  %41 = uitofp nneg <2 x i32> %40 to <2 x double>
  %42 = fdiv <2 x double> %41, splat (double 3.000000e+01)
  %43 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store <2 x double> %42, ptr %43, align 8
  %44 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %45 = add <2 x i32> %44, <i32 -8, i32 -9>
  %46 = urem <2 x i32> %45, splat (i32 30)
  %47 = uitofp nneg <2 x i32> %46 to <2 x double>
  %48 = fdiv <2 x double> %47, splat (double 3.000000e+01)
  %49 = getelementptr inbounds nuw i8, ptr %20, i64 64
  store <2 x double> %48, ptr %49, align 8
  %50 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %51 = add <2 x i32> %50, <i32 -10, i32 -11>
  %52 = urem <2 x i32> %51, splat (i32 30)
  %53 = uitofp nneg <2 x i32> %52 to <2 x double>
  %54 = fdiv <2 x double> %53, splat (double 3.000000e+01)
  %55 = getelementptr inbounds nuw i8, ptr %20, i64 80
  store <2 x double> %54, ptr %55, align 8
  %56 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %57 = add <2 x i32> %56, <i32 -12, i32 -13>
  %58 = urem <2 x i32> %57, splat (i32 30)
  %59 = uitofp nneg <2 x i32> %58 to <2 x double>
  %60 = fdiv <2 x double> %59, splat (double 3.000000e+01)
  %61 = getelementptr inbounds nuw i8, ptr %20, i64 96
  store <2 x double> %60, ptr %61, align 8
  %62 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %63 = add <2 x i32> %62, <i32 -14, i32 -15>
  %64 = urem <2 x i32> %63, splat (i32 30)
  %65 = uitofp nneg <2 x i32> %64 to <2 x double>
  %66 = fdiv <2 x double> %65, splat (double 3.000000e+01)
  %67 = getelementptr inbounds nuw i8, ptr %20, i64 112
  store <2 x double> %66, ptr %67, align 8
  %68 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %69 = add <2 x i32> %68, <i32 -16, i32 -17>
  %70 = urem <2 x i32> %69, splat (i32 30)
  %71 = uitofp nneg <2 x i32> %70 to <2 x double>
  %72 = fdiv <2 x double> %71, splat (double 3.000000e+01)
  %73 = getelementptr inbounds nuw i8, ptr %20, i64 128
  store <2 x double> %72, ptr %73, align 8
  %74 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %75 = add <2 x i32> %74, <i32 -18, i32 -19>
  %76 = urem <2 x i32> %75, splat (i32 30)
  %77 = uitofp nneg <2 x i32> %76 to <2 x double>
  %78 = fdiv <2 x double> %77, splat (double 3.000000e+01)
  %79 = getelementptr inbounds nuw i8, ptr %20, i64 144
  store <2 x double> %78, ptr %79, align 8
  %80 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %81 = add <2 x i32> %80, <i32 -20, i32 -21>
  %82 = urem <2 x i32> %81, splat (i32 30)
  %83 = uitofp nneg <2 x i32> %82 to <2 x double>
  %84 = fdiv <2 x double> %83, splat (double 3.000000e+01)
  %85 = getelementptr inbounds nuw i8, ptr %20, i64 160
  store <2 x double> %84, ptr %85, align 8
  %86 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %87 = add <2 x i32> %86, <i32 -22, i32 -23>
  %88 = urem <2 x i32> %87, splat (i32 30)
  %89 = uitofp nneg <2 x i32> %88 to <2 x double>
  %90 = fdiv <2 x double> %89, splat (double 3.000000e+01)
  %91 = getelementptr inbounds nuw i8, ptr %20, i64 176
  store <2 x double> %90, ptr %91, align 8
  %92 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %93 = add <2 x i32> %92, <i32 -24, i32 -25>
  %94 = urem <2 x i32> %93, splat (i32 30)
  %95 = uitofp nneg <2 x i32> %94 to <2 x double>
  %96 = fdiv <2 x double> %95, splat (double 3.000000e+01)
  %97 = getelementptr inbounds nuw i8, ptr %20, i64 192
  store <2 x double> %96, ptr %97, align 8
  %98 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %99 = add <2 x i32> %98, <i32 -26, i32 -27>
  %100 = urem <2 x i32> %99, splat (i32 30)
  %101 = uitofp nneg <2 x i32> %100 to <2 x double>
  %102 = fdiv <2 x double> %101, splat (double 3.000000e+01)
  %103 = getelementptr inbounds nuw i8, ptr %20, i64 208
  store <2 x double> %102, ptr %103, align 8
  %104 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %105 = add <2 x i32> %104, <i32 -28, i32 -29>
  %106 = urem <2 x i32> %105, splat (i32 30)
  %107 = uitofp nneg <2 x i32> %106 to <2 x double>
  %108 = fdiv <2 x double> %107, splat (double 3.000000e+01)
  %109 = getelementptr inbounds nuw i8, ptr %20, i64 224
  store <2 x double> %108, ptr %109, align 8
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, 20
  br i1 %exitcond42.not, label %110, label %.preheader, !llvm.loop !14

110:                                              ; preds = %._crit_edge
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_trmm(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #3 {
  %4 = insertelement <2 x double> poison, double %0, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader24

.preheader24:                                     ; preds = %3, %.split.us
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %.split.us ]
  %6 = icmp samesign ult i64 %indvars.iv, 19
  %7 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  br i1 %6, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.us.preheader:                          ; preds = %.preheader24
  %8 = and i64 %indvars.iv, 1
  %lcmp.mod.not.not = icmp eq i64 %8, 0
  %indvars.iv.next33.prol = or disjoint i64 %indvars.iv, 1
  %gep.us.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %indvars.iv.next33.prol
  %9 = icmp eq i64 %indvars.iv, 18
  br label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader24
  %10 = load <2 x double>, ptr %7, align 8
  %11 = fmul <2 x double> %5, %10
  store <2 x double> %11, ptr %7, align 8
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %13 = load <2 x double>, ptr %12, align 8
  %14 = fmul <2 x double> %5, %13
  store <2 x double> %14, ptr %12, align 8
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %16 = load <2 x double>, ptr %15, align 8
  %17 = fmul <2 x double> %5, %16
  store <2 x double> %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %19 = load <2 x double>, ptr %18, align 8
  %20 = fmul <2 x double> %5, %19
  store <2 x double> %20, ptr %18, align 8
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %22 = load <2 x double>, ptr %21, align 8
  %23 = fmul <2 x double> %5, %22
  store <2 x double> %23, ptr %21, align 8
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %25 = load <2 x double>, ptr %24, align 8
  %26 = fmul <2 x double> %5, %25
  store <2 x double> %26, ptr %24, align 8
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %28 = load <2 x double>, ptr %27, align 8
  %29 = fmul <2 x double> %5, %28
  store <2 x double> %29, ptr %27, align 8
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 112
  %31 = load <2 x double>, ptr %30, align 8
  %32 = fmul <2 x double> %5, %31
  store <2 x double> %32, ptr %30, align 8
  %33 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %34 = load <2 x double>, ptr %33, align 8
  %35 = fmul <2 x double> %5, %34
  store <2 x double> %35, ptr %33, align 8
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 144
  %37 = load <2 x double>, ptr %36, align 8
  %38 = fmul <2 x double> %5, %37
  store <2 x double> %38, ptr %36, align 8
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 160
  %40 = load <2 x double>, ptr %39, align 8
  %41 = fmul <2 x double> %5, %40
  store <2 x double> %41, ptr %39, align 8
  %42 = getelementptr inbounds nuw i8, ptr %7, i64 176
  %43 = load <2 x double>, ptr %42, align 8
  %44 = fmul <2 x double> %5, %43
  store <2 x double> %44, ptr %42, align 8
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 192
  %46 = load <2 x double>, ptr %45, align 8
  %47 = fmul <2 x double> %5, %46
  store <2 x double> %47, ptr %45, align 8
  %48 = getelementptr inbounds nuw i8, ptr %7, i64 208
  %49 = load <2 x double>, ptr %48, align 8
  %50 = fmul <2 x double> %5, %49
  store <2 x double> %50, ptr %48, align 8
  %51 = getelementptr inbounds nuw i8, ptr %7, i64 224
  %52 = load <2 x double>, ptr %51, align 8
  %53 = fmul <2 x double> %5, %52
  store <2 x double> %53, ptr %51, align 8
  br label %.split.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %invariant.gep26.us = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv35
  %54 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv35
  %.promoted.us = load double, ptr %54, align 8
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.us
  %55 = load double, ptr %gep.us.prol, align 8
  %gep27.us.prol = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep26.us, i64 %indvars.iv.next33.prol
  %56 = load double, ptr %gep27.us.prol, align 8
  %57 = tail call double @llvm.fmuladd.f64(double %55, double %56, double %.promoted.us)
  store double %57, ptr %54, align 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us
  %.lcssa.unr = phi double [ poison, %.preheader.us ], [ %57, %.prol.loopexit.unr-lcssa ]
  %indvars.iv32.unr = phi i64 [ %indvars.iv, %.preheader.us ], [ %indvars.iv.next33.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted.us, %.preheader.us ], [ %57, %.prol.loopexit.unr-lcssa ]
  br i1 %9, label %._crit_edge.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit, %.preheader.us.new
  %indvars.iv32 = phi i64 [ %indvars.iv.next33.1, %.preheader.us.new ], [ %indvars.iv32.unr, %.prol.loopexit ]
  %58 = phi double [ %64, %.preheader.us.new ], [ %.unr, %.prol.loopexit ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %gep.us = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %indvars.iv.next33
  %59 = load double, ptr %gep.us, align 8
  %gep27.us = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep26.us, i64 %indvars.iv.next33
  %60 = load double, ptr %gep27.us, align 8
  %61 = tail call double @llvm.fmuladd.f64(double %59, double %60, double %58)
  store double %61, ptr %54, align 8
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2
  %gep.us.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %indvars.iv.next33.1
  %62 = load double, ptr %gep.us.1, align 8
  %gep27.us.1 = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep26.us, i64 %indvars.iv.next33.1
  %63 = load double, ptr %gep27.us.1, align 8
  %64 = tail call double @llvm.fmuladd.f64(double %62, double %63, double %61)
  store double %64, ptr %54, align 8
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next33.1, 19
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.preheader.us.new, !llvm.loop !15

._crit_edge.us:                                   ; preds = %.preheader.us.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %64, %.preheader.us.new ]
  %65 = fmul double %0, %.lcssa
  store double %65, ptr %54, align 8
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 30
  br i1 %exitcond38.not, label %.split.us, label %.preheader.us, !llvm.loop !16

.split.us:                                        ; preds = %._crit_edge.us, %.preheader.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond40.not, label %66, label %.preheader24, !llvm.loop !17

66:                                               ; preds = %.split.us
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01HMGJMAIH@B?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 20
  %6 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv18
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !18

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 20
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !19

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01HMGJMAIH@B?$AA@") #8
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\trmm\\trmm.c", directory: "C:\\work\\llvm-profitability-research")
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
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
