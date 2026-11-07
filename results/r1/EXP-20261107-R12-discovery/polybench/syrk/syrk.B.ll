; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\syrk\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syrk\\syrk.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01GFHCPBMG@C?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01GFHCPBMG@C?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"C\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #9
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load double, ptr %4, align 8
  %8 = load double, ptr %3, align 8
  tail call fastcc void @kernel_syrk(double noundef %8, double noundef %7, ptr noundef %5, ptr noundef %6)
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
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #2 {
  store double 1.500000e+00, ptr %0, align 8
  store double 1.200000e+00, ptr %1, align 8
  br label %.preheader32

.preheader32:                                     ; preds = %4, %.preheader32
  %indvars.iv38 = phi i64 [ 0, %4 ], [ %indvars.iv.next39, %.preheader32 ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv38, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %5 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv38
  %6 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %7 = mul nuw <2 x i32> %6, <i32 0, i32 1>
  %8 = add <2 x i32> %7, splat (i32 1)
  %9 = urem <2 x i32> %8, splat (i32 30)
  %10 = uitofp nneg <2 x i32> %9 to <2 x double>
  %11 = fdiv <2 x double> %10, splat (double 3.000000e+01)
  store <2 x double> %11, ptr %5, align 8
  %12 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %13 = mul <2 x i32> %12, <i32 2, i32 3>
  %14 = add <2 x i32> %13, splat (i32 1)
  %15 = urem <2 x i32> %14, splat (i32 30)
  %16 = uitofp nneg <2 x i32> %15 to <2 x double>
  %17 = fdiv <2 x double> %16, splat (double 3.000000e+01)
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x double> %17, ptr %18, align 8
  %19 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %20 = mul <2 x i32> %19, <i32 4, i32 5>
  %21 = add <2 x i32> %20, splat (i32 1)
  %22 = urem <2 x i32> %21, splat (i32 30)
  %23 = uitofp nneg <2 x i32> %22 to <2 x double>
  %24 = fdiv <2 x double> %23, splat (double 3.000000e+01)
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <2 x double> %24, ptr %25, align 8
  %26 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %27 = mul <2 x i32> %26, <i32 6, i32 7>
  %28 = add <2 x i32> %27, splat (i32 1)
  %29 = urem <2 x i32> %28, splat (i32 30)
  %30 = uitofp nneg <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, splat (double 3.000000e+01)
  %32 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x double> %31, ptr %32, align 8
  %33 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %34 = mul <2 x i32> %33, <i32 8, i32 9>
  %35 = add <2 x i32> %34, splat (i32 1)
  %36 = urem <2 x i32> %35, splat (i32 30)
  %37 = uitofp nneg <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, splat (double 3.000000e+01)
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store <2 x double> %38, ptr %39, align 8
  %40 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %41 = mul <2 x i32> %40, <i32 10, i32 11>
  %42 = add <2 x i32> %41, splat (i32 1)
  %43 = urem <2 x i32> %42, splat (i32 30)
  %44 = uitofp nneg <2 x i32> %43 to <2 x double>
  %45 = fdiv <2 x double> %44, splat (double 3.000000e+01)
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store <2 x double> %45, ptr %46, align 8
  %47 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %48 = mul <2 x i32> %47, <i32 12, i32 13>
  %49 = add <2 x i32> %48, splat (i32 1)
  %50 = urem <2 x i32> %49, splat (i32 30)
  %51 = uitofp nneg <2 x i32> %50 to <2 x double>
  %52 = fdiv <2 x double> %51, splat (double 3.000000e+01)
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store <2 x double> %52, ptr %53, align 8
  %54 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %55 = mul <2 x i32> %54, <i32 14, i32 15>
  %56 = add <2 x i32> %55, splat (i32 1)
  %57 = urem <2 x i32> %56, splat (i32 30)
  %58 = uitofp nneg <2 x i32> %57 to <2 x double>
  %59 = fdiv <2 x double> %58, splat (double 3.000000e+01)
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store <2 x double> %59, ptr %60, align 8
  %61 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %62 = mul <2 x i32> %61, <i32 16, i32 17>
  %63 = add <2 x i32> %62, splat (i32 1)
  %64 = urem <2 x i32> %63, splat (i32 30)
  %65 = uitofp nneg <2 x i32> %64 to <2 x double>
  %66 = fdiv <2 x double> %65, splat (double 3.000000e+01)
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store <2 x double> %66, ptr %67, align 8
  %68 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %69 = mul <2 x i32> %68, <i32 18, i32 19>
  %70 = add <2 x i32> %69, splat (i32 1)
  %71 = urem <2 x i32> %70, splat (i32 30)
  %72 = uitofp nneg <2 x i32> %71 to <2 x double>
  %73 = fdiv <2 x double> %72, splat (double 3.000000e+01)
  %74 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x double> %73, ptr %74, align 8
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 30
  br i1 %exitcond41.not, label %.preheader, label %.preheader32, !llvm.loop !7

.preheader:                                       ; preds = %.preheader32, %middle.block9
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %middle.block9 ], [ 0, %.preheader32 ]
  %75 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv46
  %broadcast.splatinsert2 = insertelement <2 x i64> poison, i64 %indvars.iv46, i64 0
  %broadcast.splat3 = shufflevector <2 x i64> %broadcast.splatinsert2, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body4

vector.body4:                                     ; preds = %vector.body4, %.preheader
  %index5 = phi i64 [ 0, %.preheader ], [ %index.next7, %vector.body4 ]
  %vec.ind6 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader ], [ %vec.ind.next8, %vector.body4 ]
  %76 = mul nuw nsw <2 x i64> %vec.ind6, %broadcast.splat3
  %77 = trunc <2 x i64> %76 to <2 x i32>
  %78 = add <2 x i32> %77, splat (i32 2)
  %79 = urem <2 x i32> %78, splat (i32 20)
  %80 = uitofp nneg <2 x i32> %79 to <2 x double>
  %81 = fdiv <2 x double> %80, splat (double 2.000000e+01)
  %82 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 %index5
  store <2 x double> %81, ptr %82, align 8
  %index.next7 = add nuw i64 %index5, 2
  %vec.ind.next8 = add nuw nsw <2 x i64> %vec.ind6, splat (i64 2)
  %83 = icmp eq i64 %index.next7, 30
  br i1 %83, label %middle.block9, label %vector.body4, !llvm.loop !9

middle.block9:                                    ; preds = %vector.body4
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 30
  br i1 %exitcond49.not, label %84, label %.preheader, !llvm.loop !13

84:                                               ; preds = %middle.block9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_syrk(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #3 {
  %invariant.gep.1 = getelementptr i8, ptr %3, i64 8
  %invariant.gep.2 = getelementptr i8, ptr %3, i64 16
  %invariant.gep.3 = getelementptr i8, ptr %3, i64 24
  %invariant.gep.4 = getelementptr i8, ptr %3, i64 32
  %invariant.gep.5 = getelementptr i8, ptr %3, i64 40
  %invariant.gep.6 = getelementptr i8, ptr %3, i64 48
  %invariant.gep.7 = getelementptr i8, ptr %3, i64 56
  %invariant.gep.8 = getelementptr i8, ptr %3, i64 64
  %invariant.gep.9 = getelementptr i8, ptr %3, i64 72
  %invariant.gep.10 = getelementptr i8, ptr %3, i64 80
  %invariant.gep.11 = getelementptr i8, ptr %3, i64 88
  %invariant.gep.12 = getelementptr i8, ptr %3, i64 96
  %invariant.gep.13 = getelementptr i8, ptr %3, i64 104
  %invariant.gep.14 = getelementptr i8, ptr %3, i64 112
  %invariant.gep.15 = getelementptr i8, ptr %3, i64 120
  %invariant.gep.16 = getelementptr i8, ptr %3, i64 128
  %invariant.gep.17 = getelementptr i8, ptr %3, i64 136
  %invariant.gep.18 = getelementptr i8, ptr %3, i64 144
  %invariant.gep.19 = getelementptr i8, ptr %3, i64 152
  %scevgep = getelementptr i8, ptr %3, i64 4800
  %scevgep20 = getelementptr i8, ptr %3, i64 4792
  %scevgep53 = getelementptr i8, ptr %3, i64 4784
  %scevgep86 = getelementptr i8, ptr %3, i64 4776
  %scevgep119 = getelementptr i8, ptr %3, i64 4768
  %scevgep152 = getelementptr i8, ptr %3, i64 4760
  %scevgep185 = getelementptr i8, ptr %3, i64 4752
  %scevgep218 = getelementptr i8, ptr %3, i64 4744
  %scevgep251 = getelementptr i8, ptr %3, i64 4736
  %scevgep284 = getelementptr i8, ptr %3, i64 4728
  %scevgep317 = getelementptr i8, ptr %3, i64 4720
  %scevgep350 = getelementptr i8, ptr %3, i64 4712
  %scevgep383 = getelementptr i8, ptr %3, i64 4704
  %scevgep416 = getelementptr i8, ptr %3, i64 4696
  %scevgep449 = getelementptr i8, ptr %3, i64 4688
  %scevgep482 = getelementptr i8, ptr %3, i64 4680
  %scevgep515 = getelementptr i8, ptr %3, i64 4672
  %scevgep548 = getelementptr i8, ptr %3, i64 4664
  %scevgep581 = getelementptr i8, ptr %3, i64 4656
  %scevgep614 = getelementptr i8, ptr %3, i64 4648
  %broadcast.splatinsert640 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat641 = shufflevector <2 x double> %broadcast.splatinsert640, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader27

.preheader27:                                     ; preds = %4, %.loopexit
  %indvars.iv46 = phi i64 [ 0, %4 ], [ %indvars.iv.next47, %.loopexit ]
  %indvars.iv44 = phi i64 [ 1, %4 ], [ %indvars.iv.next45, %.loopexit ]
  %5 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv46
  %min.iters.check637 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check637, label %scalar.ph636.preheader, label %vector.ph638

vector.ph638:                                     ; preds = %.preheader27
  %n.vec639 = and i64 %indvars.iv44, 9223372036854775804
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph638
  %index643 = phi i64 [ 0, %vector.ph638 ], [ %index.next646, %vector.body642 ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index643
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load644 = load <2 x double>, ptr %6, align 8
  %wide.load645 = load <2 x double>, ptr %7, align 8
  %8 = fmul <2 x double> %broadcast.splat641, %wide.load644
  %9 = fmul <2 x double> %broadcast.splat641, %wide.load645
  store <2 x double> %8, ptr %6, align 8
  store <2 x double> %9, ptr %7, align 8
  %index.next646 = add nuw i64 %index643, 4
  %10 = icmp eq i64 %index.next646, %n.vec639
  br i1 %10, label %middle.block647, label %vector.body642, !llvm.loop !14

middle.block647:                                  ; preds = %vector.body642
  %cmp.n648 = icmp eq i64 %indvars.iv44, %n.vec639
  br i1 %cmp.n648, label %.preheader26, label %scalar.ph636.preheader

scalar.ph636.preheader:                           ; preds = %.preheader27, %middle.block647
  %indvars.iv.ph = phi i64 [ 0, %.preheader27 ], [ %n.vec639, %middle.block647 ]
  br label %scalar.ph636

.preheader26:                                     ; preds = %scalar.ph636, %middle.block647
  %11 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv46
  %min.iters.check616 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check616, label %scalar.ph615.preheader, label %vector.memcheck617

vector.memcheck617:                               ; preds = %.preheader26
  %12 = mul nuw nsw i64 %indvars.iv46, 248
  %13 = getelementptr i8, ptr %2, i64 %12
  %14 = getelementptr i8, ptr %13, i64 8
  %15 = mul nuw nsw i64 %indvars.iv46, 160
  %16 = getelementptr i8, ptr %3, i64 %15
  %17 = getelementptr i8, ptr %16, i64 8
  %bound0618 = icmp ult ptr %5, %17
  %bound1619 = icmp ult ptr %3, %14
  %bound0621 = icmp ult ptr %5, %scevgep614
  %found.conflict620650 = or i1 %bound0618, %bound0621
  %conflict.rdx623 = and i1 %found.conflict620650, %bound1619
  br i1 %conflict.rdx623, label %scalar.ph615.preheader, label %vector.ph624

vector.ph624:                                     ; preds = %vector.memcheck617
  %n.vec625 = and i64 %indvars.iv44, 9223372036854775804
  %18 = load double, ptr %11, align 8, !alias.scope !15
  %19 = fmul double %0, %18
  %broadcast.splatinsert630 = insertelement <2 x double> poison, double %19, i64 0
  %broadcast.splat631 = shufflevector <2 x double> %broadcast.splatinsert630, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next632, %vector.body626 ]
  %20 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %index627
  %21 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %index627
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 160
  %23 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %index627
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 320
  %25 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %index627
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 480
  %27 = load double, ptr %20, align 8, !alias.scope !18
  %28 = load double, ptr %22, align 8, !alias.scope !18
  %29 = insertelement <2 x double> poison, double %27, i64 0
  %30 = insertelement <2 x double> %29, double %28, i64 1
  %31 = load double, ptr %24, align 8, !alias.scope !18
  %32 = load double, ptr %26, align 8, !alias.scope !18
  %33 = insertelement <2 x double> poison, double %31, i64 0
  %34 = insertelement <2 x double> %33, double %32, i64 1
  %35 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index627
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %wide.load628 = load <2 x double>, ptr %35, align 8, !alias.scope !20, !noalias !22
  %wide.load629 = load <2 x double>, ptr %36, align 8, !alias.scope !20, !noalias !22
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat631, <2 x double> %30, <2 x double> %wide.load628)
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat631, <2 x double> %34, <2 x double> %wide.load629)
  store <2 x double> %37, ptr %35, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %38, ptr %36, align 8, !alias.scope !20, !noalias !22
  %index.next632 = add nuw i64 %index627, 4
  %39 = icmp eq i64 %index.next632, %n.vec625
  br i1 %39, label %middle.block633, label %vector.body626, !llvm.loop !23

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %indvars.iv44, %n.vec625
  br i1 %cmp.n634, label %.preheader.1, label %scalar.ph615.preheader

scalar.ph615.preheader:                           ; preds = %vector.memcheck617, %.preheader26, %middle.block633
  %indvars.iv35.ph = phi i64 [ 0, %vector.memcheck617 ], [ 0, %.preheader26 ], [ %n.vec625, %middle.block633 ]
  %xtraiter = and i64 %indvars.iv44, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph615.prol.loopexit, label %scalar.ph615.prol

scalar.ph615.prol:                                ; preds = %scalar.ph615.preheader
  %40 = load double, ptr %11, align 8
  %41 = fmul double %0, %40
  %gep.prol = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv35.ph
  %42 = load double, ptr %gep.prol, align 8
  %43 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.ph
  %44 = load double, ptr %43, align 8
  %45 = tail call double @llvm.fmuladd.f64(double %41, double %42, double %44)
  store double %45, ptr %43, align 8
  %indvars.iv.next36.prol = or disjoint i64 %indvars.iv35.ph, 1
  br label %scalar.ph615.prol.loopexit

scalar.ph615.prol.loopexit:                       ; preds = %scalar.ph615.prol, %scalar.ph615.preheader
  %indvars.iv35.unr = phi i64 [ %indvars.iv35.ph, %scalar.ph615.preheader ], [ %indvars.iv.next36.prol, %scalar.ph615.prol ]
  %46 = icmp eq i64 %indvars.iv46, %indvars.iv35.ph
  br i1 %46, label %.preheader.1, label %scalar.ph615

scalar.ph636:                                     ; preds = %scalar.ph636.preheader, %scalar.ph636
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph636 ], [ %indvars.iv.ph, %scalar.ph636.preheader ]
  %47 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %48 = load double, ptr %47, align 8
  %49 = fmul double %1, %48
  store double %49, ptr %47, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv44
  br i1 %exitcond.not, label %.preheader26, label %scalar.ph636, !llvm.loop !24

scalar.ph615:                                     ; preds = %scalar.ph615.prol.loopexit, %scalar.ph615
  %indvars.iv35 = phi i64 [ %indvars.iv.next36.1672, %scalar.ph615 ], [ %indvars.iv35.unr, %scalar.ph615.prol.loopexit ]
  %50 = load double, ptr %11, align 8
  %51 = fmul double %0, %50
  %gep = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv35
  %52 = load double, ptr %gep, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35
  %54 = load double, ptr %53, align 8
  %55 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %54)
  store double %55, ptr %53, align 8
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %56 = load double, ptr %11, align 8
  %57 = fmul double %0, %56
  %gep.1671 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv.next36
  %58 = load double, ptr %gep.1671, align 8
  %59 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36
  %60 = load double, ptr %59, align 8
  %61 = tail call double @llvm.fmuladd.f64(double %57, double %58, double %60)
  store double %61, ptr %59, align 8
  %indvars.iv.next36.1672 = add nuw nsw i64 %indvars.iv35, 2
  %exitcond39.not.1 = icmp eq i64 %indvars.iv.next36.1672, %indvars.iv44
  br i1 %exitcond39.not.1, label %.preheader.1, label %scalar.ph615, !llvm.loop !26

.preheader.1:                                     ; preds = %scalar.ph615.prol.loopexit, %scalar.ph615, %middle.block633
  %62 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %min.iters.check583 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check583, label %scalar.ph582.preheader, label %vector.memcheck584

vector.memcheck584:                               ; preds = %.preheader.1
  %63 = mul nuw nsw i64 %indvars.iv46, 248
  %64 = getelementptr i8, ptr %2, i64 %63
  %65 = getelementptr i8, ptr %64, i64 8
  %66 = mul nuw nsw i64 %indvars.iv46, 160
  %67 = getelementptr i8, ptr %3, i64 %66
  %68 = getelementptr i8, ptr %67, i64 16
  %bound0585 = icmp ult ptr %5, %68
  %bound1586 = icmp ult ptr %invariant.gep.1, %65
  %bound0588 = icmp ult ptr %5, %scevgep581
  %found.conflict587651 = or i1 %bound0585, %bound0588
  %conflict.rdx590 = and i1 %found.conflict587651, %bound1586
  br i1 %conflict.rdx590, label %scalar.ph582.preheader, label %vector.ph591

vector.ph591:                                     ; preds = %vector.memcheck584
  %n.vec592 = and i64 %indvars.iv44, 9223372036854775804
  %69 = load double, ptr %62, align 8, !alias.scope !27
  %70 = fmul double %0, %69
  %broadcast.splatinsert597 = insertelement <2 x double> poison, double %70, i64 0
  %broadcast.splat598 = shufflevector <2 x double> %broadcast.splatinsert597, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body593

vector.body593:                                   ; preds = %vector.body593, %vector.ph591
  %index594 = phi i64 [ 0, %vector.ph591 ], [ %index.next599, %vector.body593 ]
  %71 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.1, i64 %index594
  %72 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.1, i64 %index594
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 160
  %74 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.1, i64 %index594
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 320
  %76 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.1, i64 %index594
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 480
  %78 = load double, ptr %71, align 8, !alias.scope !30
  %79 = load double, ptr %73, align 8, !alias.scope !30
  %80 = insertelement <2 x double> poison, double %78, i64 0
  %81 = insertelement <2 x double> %80, double %79, i64 1
  %82 = load double, ptr %75, align 8, !alias.scope !30
  %83 = load double, ptr %77, align 8, !alias.scope !30
  %84 = insertelement <2 x double> poison, double %82, i64 0
  %85 = insertelement <2 x double> %84, double %83, i64 1
  %86 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index594
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %wide.load595 = load <2 x double>, ptr %86, align 8, !alias.scope !32, !noalias !34
  %wide.load596 = load <2 x double>, ptr %87, align 8, !alias.scope !32, !noalias !34
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat598, <2 x double> %81, <2 x double> %wide.load595)
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat598, <2 x double> %85, <2 x double> %wide.load596)
  store <2 x double> %88, ptr %86, align 8, !alias.scope !32, !noalias !34
  store <2 x double> %89, ptr %87, align 8, !alias.scope !32, !noalias !34
  %index.next599 = add nuw i64 %index594, 4
  %90 = icmp eq i64 %index.next599, %n.vec592
  br i1 %90, label %middle.block600, label %vector.body593, !llvm.loop !35

middle.block600:                                  ; preds = %vector.body593
  %cmp.n601 = icmp eq i64 %indvars.iv44, %n.vec592
  br i1 %cmp.n601, label %.preheader.2, label %scalar.ph582.preheader

scalar.ph582.preheader:                           ; preds = %vector.memcheck584, %.preheader.1, %middle.block600
  %indvars.iv35.1.ph = phi i64 [ 0, %vector.memcheck584 ], [ 0, %.preheader.1 ], [ %n.vec592, %middle.block600 ]
  %xtraiter673 = and i64 %indvars.iv44, 1
  %lcmp.mod674.not = icmp eq i64 %xtraiter673, 0
  br i1 %lcmp.mod674.not, label %scalar.ph582.prol.loopexit, label %scalar.ph582.prol

scalar.ph582.prol:                                ; preds = %scalar.ph582.preheader
  %91 = load double, ptr %62, align 8
  %92 = fmul double %0, %91
  %gep.1.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.1, i64 %indvars.iv35.1.ph
  %93 = load double, ptr %gep.1.prol, align 8
  %94 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.1.ph
  %95 = load double, ptr %94, align 8
  %96 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %95)
  store double %96, ptr %94, align 8
  %indvars.iv.next36.1.prol = or disjoint i64 %indvars.iv35.1.ph, 1
  br label %scalar.ph582.prol.loopexit

scalar.ph582.prol.loopexit:                       ; preds = %scalar.ph582.prol, %scalar.ph582.preheader
  %indvars.iv35.1.unr = phi i64 [ %indvars.iv35.1.ph, %scalar.ph582.preheader ], [ %indvars.iv.next36.1.prol, %scalar.ph582.prol ]
  %97 = icmp eq i64 %indvars.iv46, %indvars.iv35.1.ph
  br i1 %97, label %.preheader.2, label %scalar.ph582

scalar.ph582:                                     ; preds = %scalar.ph582.prol.loopexit, %scalar.ph582
  %indvars.iv35.1 = phi i64 [ %indvars.iv.next36.1.1, %scalar.ph582 ], [ %indvars.iv35.1.unr, %scalar.ph582.prol.loopexit ]
  %98 = load double, ptr %62, align 8
  %99 = fmul double %0, %98
  %gep.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.1, i64 %indvars.iv35.1
  %100 = load double, ptr %gep.1, align 8
  %101 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.1
  %102 = load double, ptr %101, align 8
  %103 = tail call double @llvm.fmuladd.f64(double %99, double %100, double %102)
  store double %103, ptr %101, align 8
  %indvars.iv.next36.1 = add nuw nsw i64 %indvars.iv35.1, 1
  %104 = load double, ptr %62, align 8
  %105 = fmul double %0, %104
  %gep.1.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next36.1
  %106 = load double, ptr %gep.1.1, align 8
  %107 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.1
  %108 = load double, ptr %107, align 8
  %109 = tail call double @llvm.fmuladd.f64(double %105, double %106, double %108)
  store double %109, ptr %107, align 8
  %indvars.iv.next36.1.1 = add nuw nsw i64 %indvars.iv35.1, 2
  %exitcond39.1.not.1 = icmp eq i64 %indvars.iv.next36.1.1, %indvars.iv44
  br i1 %exitcond39.1.not.1, label %.preheader.2, label %scalar.ph582, !llvm.loop !36

.preheader.2:                                     ; preds = %scalar.ph582.prol.loopexit, %scalar.ph582, %middle.block600
  %110 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %min.iters.check550 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check550, label %scalar.ph549.preheader, label %vector.memcheck551

vector.memcheck551:                               ; preds = %.preheader.2
  %111 = mul nuw nsw i64 %indvars.iv46, 248
  %112 = getelementptr i8, ptr %2, i64 %111
  %113 = getelementptr i8, ptr %112, i64 8
  %114 = mul nuw nsw i64 %indvars.iv46, 160
  %115 = getelementptr i8, ptr %3, i64 %114
  %116 = getelementptr i8, ptr %115, i64 24
  %bound0552 = icmp ult ptr %5, %116
  %bound1553 = icmp ult ptr %invariant.gep.2, %113
  %bound0555 = icmp ult ptr %5, %scevgep548
  %found.conflict554652 = or i1 %bound0552, %bound0555
  %conflict.rdx557 = and i1 %found.conflict554652, %bound1553
  br i1 %conflict.rdx557, label %scalar.ph549.preheader, label %vector.ph558

vector.ph558:                                     ; preds = %vector.memcheck551
  %n.vec559 = and i64 %indvars.iv44, 9223372036854775804
  %117 = load double, ptr %110, align 8, !alias.scope !37
  %118 = fmul double %0, %117
  %broadcast.splatinsert564 = insertelement <2 x double> poison, double %118, i64 0
  %broadcast.splat565 = shufflevector <2 x double> %broadcast.splatinsert564, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next566, %vector.body560 ]
  %119 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.2, i64 %index561
  %120 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.2, i64 %index561
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 160
  %122 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.2, i64 %index561
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 320
  %124 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.2, i64 %index561
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 480
  %126 = load double, ptr %119, align 8, !alias.scope !40
  %127 = load double, ptr %121, align 8, !alias.scope !40
  %128 = insertelement <2 x double> poison, double %126, i64 0
  %129 = insertelement <2 x double> %128, double %127, i64 1
  %130 = load double, ptr %123, align 8, !alias.scope !40
  %131 = load double, ptr %125, align 8, !alias.scope !40
  %132 = insertelement <2 x double> poison, double %130, i64 0
  %133 = insertelement <2 x double> %132, double %131, i64 1
  %134 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index561
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 16
  %wide.load562 = load <2 x double>, ptr %134, align 8, !alias.scope !42, !noalias !44
  %wide.load563 = load <2 x double>, ptr %135, align 8, !alias.scope !42, !noalias !44
  %136 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat565, <2 x double> %129, <2 x double> %wide.load562)
  %137 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat565, <2 x double> %133, <2 x double> %wide.load563)
  store <2 x double> %136, ptr %134, align 8, !alias.scope !42, !noalias !44
  store <2 x double> %137, ptr %135, align 8, !alias.scope !42, !noalias !44
  %index.next566 = add nuw i64 %index561, 4
  %138 = icmp eq i64 %index.next566, %n.vec559
  br i1 %138, label %middle.block567, label %vector.body560, !llvm.loop !45

middle.block567:                                  ; preds = %vector.body560
  %cmp.n568 = icmp eq i64 %indvars.iv44, %n.vec559
  br i1 %cmp.n568, label %.preheader.3, label %scalar.ph549.preheader

scalar.ph549.preheader:                           ; preds = %vector.memcheck551, %.preheader.2, %middle.block567
  %indvars.iv35.2.ph = phi i64 [ 0, %vector.memcheck551 ], [ 0, %.preheader.2 ], [ %n.vec559, %middle.block567 ]
  %xtraiter675 = and i64 %indvars.iv44, 1
  %lcmp.mod676.not = icmp eq i64 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %scalar.ph549.prol.loopexit, label %scalar.ph549.prol

scalar.ph549.prol:                                ; preds = %scalar.ph549.preheader
  %139 = load double, ptr %110, align 8
  %140 = fmul double %0, %139
  %gep.2.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.2, i64 %indvars.iv35.2.ph
  %141 = load double, ptr %gep.2.prol, align 8
  %142 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.2.ph
  %143 = load double, ptr %142, align 8
  %144 = tail call double @llvm.fmuladd.f64(double %140, double %141, double %143)
  store double %144, ptr %142, align 8
  %indvars.iv.next36.2.prol = or disjoint i64 %indvars.iv35.2.ph, 1
  br label %scalar.ph549.prol.loopexit

scalar.ph549.prol.loopexit:                       ; preds = %scalar.ph549.prol, %scalar.ph549.preheader
  %indvars.iv35.2.unr = phi i64 [ %indvars.iv35.2.ph, %scalar.ph549.preheader ], [ %indvars.iv.next36.2.prol, %scalar.ph549.prol ]
  %145 = icmp eq i64 %indvars.iv46, %indvars.iv35.2.ph
  br i1 %145, label %.preheader.3, label %scalar.ph549

scalar.ph549:                                     ; preds = %scalar.ph549.prol.loopexit, %scalar.ph549
  %indvars.iv35.2 = phi i64 [ %indvars.iv.next36.2.1, %scalar.ph549 ], [ %indvars.iv35.2.unr, %scalar.ph549.prol.loopexit ]
  %146 = load double, ptr %110, align 8
  %147 = fmul double %0, %146
  %gep.2 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.2, i64 %indvars.iv35.2
  %148 = load double, ptr %gep.2, align 8
  %149 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.2
  %150 = load double, ptr %149, align 8
  %151 = tail call double @llvm.fmuladd.f64(double %147, double %148, double %150)
  store double %151, ptr %149, align 8
  %indvars.iv.next36.2 = add nuw nsw i64 %indvars.iv35.2, 1
  %152 = load double, ptr %110, align 8
  %153 = fmul double %0, %152
  %gep.2.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.2, i64 %indvars.iv.next36.2
  %154 = load double, ptr %gep.2.1, align 8
  %155 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.2
  %156 = load double, ptr %155, align 8
  %157 = tail call double @llvm.fmuladd.f64(double %153, double %154, double %156)
  store double %157, ptr %155, align 8
  %indvars.iv.next36.2.1 = add nuw nsw i64 %indvars.iv35.2, 2
  %exitcond39.2.not.1 = icmp eq i64 %indvars.iv.next36.2.1, %indvars.iv44
  br i1 %exitcond39.2.not.1, label %.preheader.3, label %scalar.ph549, !llvm.loop !46

.preheader.3:                                     ; preds = %scalar.ph549.prol.loopexit, %scalar.ph549, %middle.block567
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %min.iters.check517 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check517, label %scalar.ph516.preheader, label %vector.memcheck518

vector.memcheck518:                               ; preds = %.preheader.3
  %159 = mul nuw nsw i64 %indvars.iv46, 248
  %160 = getelementptr i8, ptr %2, i64 %159
  %161 = getelementptr i8, ptr %160, i64 8
  %162 = mul nuw nsw i64 %indvars.iv46, 160
  %163 = getelementptr i8, ptr %3, i64 %162
  %164 = getelementptr i8, ptr %163, i64 32
  %bound0519 = icmp ult ptr %5, %164
  %bound1520 = icmp ult ptr %invariant.gep.3, %161
  %bound0522 = icmp ult ptr %5, %scevgep515
  %found.conflict521653 = or i1 %bound0519, %bound0522
  %conflict.rdx524 = and i1 %found.conflict521653, %bound1520
  br i1 %conflict.rdx524, label %scalar.ph516.preheader, label %vector.ph525

vector.ph525:                                     ; preds = %vector.memcheck518
  %n.vec526 = and i64 %indvars.iv44, 9223372036854775804
  %165 = load double, ptr %158, align 8, !alias.scope !47
  %166 = fmul double %0, %165
  %broadcast.splatinsert531 = insertelement <2 x double> poison, double %166, i64 0
  %broadcast.splat532 = shufflevector <2 x double> %broadcast.splatinsert531, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph525
  %index528 = phi i64 [ 0, %vector.ph525 ], [ %index.next533, %vector.body527 ]
  %167 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.3, i64 %index528
  %168 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.3, i64 %index528
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 160
  %170 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.3, i64 %index528
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 320
  %172 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.3, i64 %index528
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 480
  %174 = load double, ptr %167, align 8, !alias.scope !50
  %175 = load double, ptr %169, align 8, !alias.scope !50
  %176 = insertelement <2 x double> poison, double %174, i64 0
  %177 = insertelement <2 x double> %176, double %175, i64 1
  %178 = load double, ptr %171, align 8, !alias.scope !50
  %179 = load double, ptr %173, align 8, !alias.scope !50
  %180 = insertelement <2 x double> poison, double %178, i64 0
  %181 = insertelement <2 x double> %180, double %179, i64 1
  %182 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index528
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 16
  %wide.load529 = load <2 x double>, ptr %182, align 8, !alias.scope !52, !noalias !54
  %wide.load530 = load <2 x double>, ptr %183, align 8, !alias.scope !52, !noalias !54
  %184 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat532, <2 x double> %177, <2 x double> %wide.load529)
  %185 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat532, <2 x double> %181, <2 x double> %wide.load530)
  store <2 x double> %184, ptr %182, align 8, !alias.scope !52, !noalias !54
  store <2 x double> %185, ptr %183, align 8, !alias.scope !52, !noalias !54
  %index.next533 = add nuw i64 %index528, 4
  %186 = icmp eq i64 %index.next533, %n.vec526
  br i1 %186, label %middle.block534, label %vector.body527, !llvm.loop !55

middle.block534:                                  ; preds = %vector.body527
  %cmp.n535 = icmp eq i64 %indvars.iv44, %n.vec526
  br i1 %cmp.n535, label %.preheader.4, label %scalar.ph516.preheader

scalar.ph516.preheader:                           ; preds = %vector.memcheck518, %.preheader.3, %middle.block534
  %indvars.iv35.3.ph = phi i64 [ 0, %vector.memcheck518 ], [ 0, %.preheader.3 ], [ %n.vec526, %middle.block534 ]
  %xtraiter677 = and i64 %indvars.iv44, 1
  %lcmp.mod678.not = icmp eq i64 %xtraiter677, 0
  br i1 %lcmp.mod678.not, label %scalar.ph516.prol.loopexit, label %scalar.ph516.prol

scalar.ph516.prol:                                ; preds = %scalar.ph516.preheader
  %187 = load double, ptr %158, align 8
  %188 = fmul double %0, %187
  %gep.3.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.3, i64 %indvars.iv35.3.ph
  %189 = load double, ptr %gep.3.prol, align 8
  %190 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.3.ph
  %191 = load double, ptr %190, align 8
  %192 = tail call double @llvm.fmuladd.f64(double %188, double %189, double %191)
  store double %192, ptr %190, align 8
  %indvars.iv.next36.3.prol = or disjoint i64 %indvars.iv35.3.ph, 1
  br label %scalar.ph516.prol.loopexit

scalar.ph516.prol.loopexit:                       ; preds = %scalar.ph516.prol, %scalar.ph516.preheader
  %indvars.iv35.3.unr = phi i64 [ %indvars.iv35.3.ph, %scalar.ph516.preheader ], [ %indvars.iv.next36.3.prol, %scalar.ph516.prol ]
  %193 = icmp eq i64 %indvars.iv46, %indvars.iv35.3.ph
  br i1 %193, label %.preheader.4, label %scalar.ph516

scalar.ph516:                                     ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516
  %indvars.iv35.3 = phi i64 [ %indvars.iv.next36.3.1, %scalar.ph516 ], [ %indvars.iv35.3.unr, %scalar.ph516.prol.loopexit ]
  %194 = load double, ptr %158, align 8
  %195 = fmul double %0, %194
  %gep.3 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.3, i64 %indvars.iv35.3
  %196 = load double, ptr %gep.3, align 8
  %197 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.3
  %198 = load double, ptr %197, align 8
  %199 = tail call double @llvm.fmuladd.f64(double %195, double %196, double %198)
  store double %199, ptr %197, align 8
  %indvars.iv.next36.3 = add nuw nsw i64 %indvars.iv35.3, 1
  %200 = load double, ptr %158, align 8
  %201 = fmul double %0, %200
  %gep.3.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.3, i64 %indvars.iv.next36.3
  %202 = load double, ptr %gep.3.1, align 8
  %203 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.3
  %204 = load double, ptr %203, align 8
  %205 = tail call double @llvm.fmuladd.f64(double %201, double %202, double %204)
  store double %205, ptr %203, align 8
  %indvars.iv.next36.3.1 = add nuw nsw i64 %indvars.iv35.3, 2
  %exitcond39.3.not.1 = icmp eq i64 %indvars.iv.next36.3.1, %indvars.iv44
  br i1 %exitcond39.3.not.1, label %.preheader.4, label %scalar.ph516, !llvm.loop !56

.preheader.4:                                     ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516, %middle.block534
  %206 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %min.iters.check484 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check484, label %scalar.ph483.preheader, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.preheader.4
  %207 = mul nuw nsw i64 %indvars.iv46, 248
  %208 = getelementptr i8, ptr %2, i64 %207
  %209 = getelementptr i8, ptr %208, i64 8
  %210 = mul nuw nsw i64 %indvars.iv46, 160
  %211 = getelementptr i8, ptr %3, i64 %210
  %212 = getelementptr i8, ptr %211, i64 40
  %bound0486 = icmp ult ptr %5, %212
  %bound1487 = icmp ult ptr %invariant.gep.4, %209
  %bound0489 = icmp ult ptr %5, %scevgep482
  %found.conflict488654 = or i1 %bound0486, %bound0489
  %conflict.rdx491 = and i1 %found.conflict488654, %bound1487
  br i1 %conflict.rdx491, label %scalar.ph483.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck485
  %n.vec493 = and i64 %indvars.iv44, 9223372036854775804
  %213 = load double, ptr %206, align 8, !alias.scope !57
  %214 = fmul double %0, %213
  %broadcast.splatinsert498 = insertelement <2 x double> poison, double %214, i64 0
  %broadcast.splat499 = shufflevector <2 x double> %broadcast.splatinsert498, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next500, %vector.body494 ]
  %215 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.4, i64 %index495
  %216 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.4, i64 %index495
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 160
  %218 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.4, i64 %index495
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 320
  %220 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.4, i64 %index495
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 480
  %222 = load double, ptr %215, align 8, !alias.scope !60
  %223 = load double, ptr %217, align 8, !alias.scope !60
  %224 = insertelement <2 x double> poison, double %222, i64 0
  %225 = insertelement <2 x double> %224, double %223, i64 1
  %226 = load double, ptr %219, align 8, !alias.scope !60
  %227 = load double, ptr %221, align 8, !alias.scope !60
  %228 = insertelement <2 x double> poison, double %226, i64 0
  %229 = insertelement <2 x double> %228, double %227, i64 1
  %230 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index495
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 16
  %wide.load496 = load <2 x double>, ptr %230, align 8, !alias.scope !62, !noalias !64
  %wide.load497 = load <2 x double>, ptr %231, align 8, !alias.scope !62, !noalias !64
  %232 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat499, <2 x double> %225, <2 x double> %wide.load496)
  %233 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat499, <2 x double> %229, <2 x double> %wide.load497)
  store <2 x double> %232, ptr %230, align 8, !alias.scope !62, !noalias !64
  store <2 x double> %233, ptr %231, align 8, !alias.scope !62, !noalias !64
  %index.next500 = add nuw i64 %index495, 4
  %234 = icmp eq i64 %index.next500, %n.vec493
  br i1 %234, label %middle.block501, label %vector.body494, !llvm.loop !65

middle.block501:                                  ; preds = %vector.body494
  %cmp.n502 = icmp eq i64 %indvars.iv44, %n.vec493
  br i1 %cmp.n502, label %.preheader.5, label %scalar.ph483.preheader

scalar.ph483.preheader:                           ; preds = %vector.memcheck485, %.preheader.4, %middle.block501
  %indvars.iv35.4.ph = phi i64 [ 0, %vector.memcheck485 ], [ 0, %.preheader.4 ], [ %n.vec493, %middle.block501 ]
  %xtraiter679 = and i64 %indvars.iv44, 1
  %lcmp.mod680.not = icmp eq i64 %xtraiter679, 0
  br i1 %lcmp.mod680.not, label %scalar.ph483.prol.loopexit, label %scalar.ph483.prol

scalar.ph483.prol:                                ; preds = %scalar.ph483.preheader
  %235 = load double, ptr %206, align 8
  %236 = fmul double %0, %235
  %gep.4.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.4, i64 %indvars.iv35.4.ph
  %237 = load double, ptr %gep.4.prol, align 8
  %238 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.4.ph
  %239 = load double, ptr %238, align 8
  %240 = tail call double @llvm.fmuladd.f64(double %236, double %237, double %239)
  store double %240, ptr %238, align 8
  %indvars.iv.next36.4.prol = or disjoint i64 %indvars.iv35.4.ph, 1
  br label %scalar.ph483.prol.loopexit

scalar.ph483.prol.loopexit:                       ; preds = %scalar.ph483.prol, %scalar.ph483.preheader
  %indvars.iv35.4.unr = phi i64 [ %indvars.iv35.4.ph, %scalar.ph483.preheader ], [ %indvars.iv.next36.4.prol, %scalar.ph483.prol ]
  %241 = icmp eq i64 %indvars.iv46, %indvars.iv35.4.ph
  br i1 %241, label %.preheader.5, label %scalar.ph483

scalar.ph483:                                     ; preds = %scalar.ph483.prol.loopexit, %scalar.ph483
  %indvars.iv35.4 = phi i64 [ %indvars.iv.next36.4.1, %scalar.ph483 ], [ %indvars.iv35.4.unr, %scalar.ph483.prol.loopexit ]
  %242 = load double, ptr %206, align 8
  %243 = fmul double %0, %242
  %gep.4 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.4, i64 %indvars.iv35.4
  %244 = load double, ptr %gep.4, align 8
  %245 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.4
  %246 = load double, ptr %245, align 8
  %247 = tail call double @llvm.fmuladd.f64(double %243, double %244, double %246)
  store double %247, ptr %245, align 8
  %indvars.iv.next36.4 = add nuw nsw i64 %indvars.iv35.4, 1
  %248 = load double, ptr %206, align 8
  %249 = fmul double %0, %248
  %gep.4.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.4, i64 %indvars.iv.next36.4
  %250 = load double, ptr %gep.4.1, align 8
  %251 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.4
  %252 = load double, ptr %251, align 8
  %253 = tail call double @llvm.fmuladd.f64(double %249, double %250, double %252)
  store double %253, ptr %251, align 8
  %indvars.iv.next36.4.1 = add nuw nsw i64 %indvars.iv35.4, 2
  %exitcond39.4.not.1 = icmp eq i64 %indvars.iv.next36.4.1, %indvars.iv44
  br i1 %exitcond39.4.not.1, label %.preheader.5, label %scalar.ph483, !llvm.loop !66

.preheader.5:                                     ; preds = %scalar.ph483.prol.loopexit, %scalar.ph483, %middle.block501
  %254 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %min.iters.check451 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check451, label %scalar.ph450.preheader, label %vector.memcheck452

vector.memcheck452:                               ; preds = %.preheader.5
  %255 = mul nuw nsw i64 %indvars.iv46, 248
  %256 = getelementptr i8, ptr %2, i64 %255
  %257 = getelementptr i8, ptr %256, i64 8
  %258 = mul nuw nsw i64 %indvars.iv46, 160
  %259 = getelementptr i8, ptr %3, i64 %258
  %260 = getelementptr i8, ptr %259, i64 48
  %bound0453 = icmp ult ptr %5, %260
  %bound1454 = icmp ult ptr %invariant.gep.5, %257
  %bound0456 = icmp ult ptr %5, %scevgep449
  %found.conflict455655 = or i1 %bound0453, %bound0456
  %conflict.rdx458 = and i1 %found.conflict455655, %bound1454
  br i1 %conflict.rdx458, label %scalar.ph450.preheader, label %vector.ph459

vector.ph459:                                     ; preds = %vector.memcheck452
  %n.vec460 = and i64 %indvars.iv44, 9223372036854775804
  %261 = load double, ptr %254, align 8, !alias.scope !67
  %262 = fmul double %0, %261
  %broadcast.splatinsert465 = insertelement <2 x double> poison, double %262, i64 0
  %broadcast.splat466 = shufflevector <2 x double> %broadcast.splatinsert465, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ]
  %263 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.5, i64 %index462
  %264 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.5, i64 %index462
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 160
  %266 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.5, i64 %index462
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 320
  %268 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.5, i64 %index462
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 480
  %270 = load double, ptr %263, align 8, !alias.scope !70
  %271 = load double, ptr %265, align 8, !alias.scope !70
  %272 = insertelement <2 x double> poison, double %270, i64 0
  %273 = insertelement <2 x double> %272, double %271, i64 1
  %274 = load double, ptr %267, align 8, !alias.scope !70
  %275 = load double, ptr %269, align 8, !alias.scope !70
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = insertelement <2 x double> %276, double %275, i64 1
  %278 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index462
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 16
  %wide.load463 = load <2 x double>, ptr %278, align 8, !alias.scope !72, !noalias !74
  %wide.load464 = load <2 x double>, ptr %279, align 8, !alias.scope !72, !noalias !74
  %280 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat466, <2 x double> %273, <2 x double> %wide.load463)
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat466, <2 x double> %277, <2 x double> %wide.load464)
  store <2 x double> %280, ptr %278, align 8, !alias.scope !72, !noalias !74
  store <2 x double> %281, ptr %279, align 8, !alias.scope !72, !noalias !74
  %index.next467 = add nuw i64 %index462, 4
  %282 = icmp eq i64 %index.next467, %n.vec460
  br i1 %282, label %middle.block468, label %vector.body461, !llvm.loop !75

middle.block468:                                  ; preds = %vector.body461
  %cmp.n469 = icmp eq i64 %indvars.iv44, %n.vec460
  br i1 %cmp.n469, label %.preheader.6, label %scalar.ph450.preheader

scalar.ph450.preheader:                           ; preds = %vector.memcheck452, %.preheader.5, %middle.block468
  %indvars.iv35.5.ph = phi i64 [ 0, %vector.memcheck452 ], [ 0, %.preheader.5 ], [ %n.vec460, %middle.block468 ]
  %xtraiter681 = and i64 %indvars.iv44, 1
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %scalar.ph450.prol.loopexit, label %scalar.ph450.prol

scalar.ph450.prol:                                ; preds = %scalar.ph450.preheader
  %283 = load double, ptr %254, align 8
  %284 = fmul double %0, %283
  %gep.5.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.5, i64 %indvars.iv35.5.ph
  %285 = load double, ptr %gep.5.prol, align 8
  %286 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.5.ph
  %287 = load double, ptr %286, align 8
  %288 = tail call double @llvm.fmuladd.f64(double %284, double %285, double %287)
  store double %288, ptr %286, align 8
  %indvars.iv.next36.5.prol = or disjoint i64 %indvars.iv35.5.ph, 1
  br label %scalar.ph450.prol.loopexit

scalar.ph450.prol.loopexit:                       ; preds = %scalar.ph450.prol, %scalar.ph450.preheader
  %indvars.iv35.5.unr = phi i64 [ %indvars.iv35.5.ph, %scalar.ph450.preheader ], [ %indvars.iv.next36.5.prol, %scalar.ph450.prol ]
  %289 = icmp eq i64 %indvars.iv46, %indvars.iv35.5.ph
  br i1 %289, label %.preheader.6, label %scalar.ph450

scalar.ph450:                                     ; preds = %scalar.ph450.prol.loopexit, %scalar.ph450
  %indvars.iv35.5 = phi i64 [ %indvars.iv.next36.5.1, %scalar.ph450 ], [ %indvars.iv35.5.unr, %scalar.ph450.prol.loopexit ]
  %290 = load double, ptr %254, align 8
  %291 = fmul double %0, %290
  %gep.5 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.5, i64 %indvars.iv35.5
  %292 = load double, ptr %gep.5, align 8
  %293 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.5
  %294 = load double, ptr %293, align 8
  %295 = tail call double @llvm.fmuladd.f64(double %291, double %292, double %294)
  store double %295, ptr %293, align 8
  %indvars.iv.next36.5 = add nuw nsw i64 %indvars.iv35.5, 1
  %296 = load double, ptr %254, align 8
  %297 = fmul double %0, %296
  %gep.5.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.5, i64 %indvars.iv.next36.5
  %298 = load double, ptr %gep.5.1, align 8
  %299 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.5
  %300 = load double, ptr %299, align 8
  %301 = tail call double @llvm.fmuladd.f64(double %297, double %298, double %300)
  store double %301, ptr %299, align 8
  %indvars.iv.next36.5.1 = add nuw nsw i64 %indvars.iv35.5, 2
  %exitcond39.5.not.1 = icmp eq i64 %indvars.iv.next36.5.1, %indvars.iv44
  br i1 %exitcond39.5.not.1, label %.preheader.6, label %scalar.ph450, !llvm.loop !76

.preheader.6:                                     ; preds = %scalar.ph450.prol.loopexit, %scalar.ph450, %middle.block468
  %302 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %min.iters.check418 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check418, label %scalar.ph417.preheader, label %vector.memcheck419

vector.memcheck419:                               ; preds = %.preheader.6
  %303 = mul nuw nsw i64 %indvars.iv46, 248
  %304 = getelementptr i8, ptr %2, i64 %303
  %305 = getelementptr i8, ptr %304, i64 8
  %306 = mul nuw nsw i64 %indvars.iv46, 160
  %307 = getelementptr i8, ptr %3, i64 %306
  %308 = getelementptr i8, ptr %307, i64 56
  %bound0420 = icmp ult ptr %5, %308
  %bound1421 = icmp ult ptr %invariant.gep.6, %305
  %bound0423 = icmp ult ptr %5, %scevgep416
  %found.conflict422656 = or i1 %bound0420, %bound0423
  %conflict.rdx425 = and i1 %found.conflict422656, %bound1421
  br i1 %conflict.rdx425, label %scalar.ph417.preheader, label %vector.ph426

vector.ph426:                                     ; preds = %vector.memcheck419
  %n.vec427 = and i64 %indvars.iv44, 9223372036854775804
  %309 = load double, ptr %302, align 8, !alias.scope !77
  %310 = fmul double %0, %309
  %broadcast.splatinsert432 = insertelement <2 x double> poison, double %310, i64 0
  %broadcast.splat433 = shufflevector <2 x double> %broadcast.splatinsert432, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph426
  %index429 = phi i64 [ 0, %vector.ph426 ], [ %index.next434, %vector.body428 ]
  %311 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.6, i64 %index429
  %312 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.6, i64 %index429
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 160
  %314 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.6, i64 %index429
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 320
  %316 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.6, i64 %index429
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 480
  %318 = load double, ptr %311, align 8, !alias.scope !80
  %319 = load double, ptr %313, align 8, !alias.scope !80
  %320 = insertelement <2 x double> poison, double %318, i64 0
  %321 = insertelement <2 x double> %320, double %319, i64 1
  %322 = load double, ptr %315, align 8, !alias.scope !80
  %323 = load double, ptr %317, align 8, !alias.scope !80
  %324 = insertelement <2 x double> poison, double %322, i64 0
  %325 = insertelement <2 x double> %324, double %323, i64 1
  %326 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index429
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 16
  %wide.load430 = load <2 x double>, ptr %326, align 8, !alias.scope !82, !noalias !84
  %wide.load431 = load <2 x double>, ptr %327, align 8, !alias.scope !82, !noalias !84
  %328 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat433, <2 x double> %321, <2 x double> %wide.load430)
  %329 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat433, <2 x double> %325, <2 x double> %wide.load431)
  store <2 x double> %328, ptr %326, align 8, !alias.scope !82, !noalias !84
  store <2 x double> %329, ptr %327, align 8, !alias.scope !82, !noalias !84
  %index.next434 = add nuw i64 %index429, 4
  %330 = icmp eq i64 %index.next434, %n.vec427
  br i1 %330, label %middle.block435, label %vector.body428, !llvm.loop !85

middle.block435:                                  ; preds = %vector.body428
  %cmp.n436 = icmp eq i64 %indvars.iv44, %n.vec427
  br i1 %cmp.n436, label %.preheader.7, label %scalar.ph417.preheader

scalar.ph417.preheader:                           ; preds = %vector.memcheck419, %.preheader.6, %middle.block435
  %indvars.iv35.6.ph = phi i64 [ 0, %vector.memcheck419 ], [ 0, %.preheader.6 ], [ %n.vec427, %middle.block435 ]
  %xtraiter683 = and i64 %indvars.iv44, 1
  %lcmp.mod684.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod684.not, label %scalar.ph417.prol.loopexit, label %scalar.ph417.prol

scalar.ph417.prol:                                ; preds = %scalar.ph417.preheader
  %331 = load double, ptr %302, align 8
  %332 = fmul double %0, %331
  %gep.6.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.6, i64 %indvars.iv35.6.ph
  %333 = load double, ptr %gep.6.prol, align 8
  %334 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.6.ph
  %335 = load double, ptr %334, align 8
  %336 = tail call double @llvm.fmuladd.f64(double %332, double %333, double %335)
  store double %336, ptr %334, align 8
  %indvars.iv.next36.6.prol = or disjoint i64 %indvars.iv35.6.ph, 1
  br label %scalar.ph417.prol.loopexit

scalar.ph417.prol.loopexit:                       ; preds = %scalar.ph417.prol, %scalar.ph417.preheader
  %indvars.iv35.6.unr = phi i64 [ %indvars.iv35.6.ph, %scalar.ph417.preheader ], [ %indvars.iv.next36.6.prol, %scalar.ph417.prol ]
  %337 = icmp eq i64 %indvars.iv46, %indvars.iv35.6.ph
  br i1 %337, label %.preheader.7, label %scalar.ph417

scalar.ph417:                                     ; preds = %scalar.ph417.prol.loopexit, %scalar.ph417
  %indvars.iv35.6 = phi i64 [ %indvars.iv.next36.6.1, %scalar.ph417 ], [ %indvars.iv35.6.unr, %scalar.ph417.prol.loopexit ]
  %338 = load double, ptr %302, align 8
  %339 = fmul double %0, %338
  %gep.6 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.6, i64 %indvars.iv35.6
  %340 = load double, ptr %gep.6, align 8
  %341 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.6
  %342 = load double, ptr %341, align 8
  %343 = tail call double @llvm.fmuladd.f64(double %339, double %340, double %342)
  store double %343, ptr %341, align 8
  %indvars.iv.next36.6 = add nuw nsw i64 %indvars.iv35.6, 1
  %344 = load double, ptr %302, align 8
  %345 = fmul double %0, %344
  %gep.6.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.6, i64 %indvars.iv.next36.6
  %346 = load double, ptr %gep.6.1, align 8
  %347 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.6
  %348 = load double, ptr %347, align 8
  %349 = tail call double @llvm.fmuladd.f64(double %345, double %346, double %348)
  store double %349, ptr %347, align 8
  %indvars.iv.next36.6.1 = add nuw nsw i64 %indvars.iv35.6, 2
  %exitcond39.6.not.1 = icmp eq i64 %indvars.iv.next36.6.1, %indvars.iv44
  br i1 %exitcond39.6.not.1, label %.preheader.7, label %scalar.ph417, !llvm.loop !86

.preheader.7:                                     ; preds = %scalar.ph417.prol.loopexit, %scalar.ph417, %middle.block435
  %350 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %min.iters.check385 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check385, label %scalar.ph384.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %.preheader.7
  %351 = mul nuw nsw i64 %indvars.iv46, 248
  %352 = getelementptr i8, ptr %2, i64 %351
  %353 = getelementptr i8, ptr %352, i64 8
  %354 = mul nuw nsw i64 %indvars.iv46, 160
  %355 = getelementptr i8, ptr %3, i64 %354
  %356 = getelementptr i8, ptr %355, i64 64
  %bound0387 = icmp ult ptr %5, %356
  %bound1388 = icmp ult ptr %invariant.gep.7, %353
  %bound0390 = icmp ult ptr %5, %scevgep383
  %found.conflict389657 = or i1 %bound0387, %bound0390
  %conflict.rdx392 = and i1 %found.conflict389657, %bound1388
  br i1 %conflict.rdx392, label %scalar.ph384.preheader, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck386
  %n.vec394 = and i64 %indvars.iv44, 9223372036854775804
  %357 = load double, ptr %350, align 8, !alias.scope !87
  %358 = fmul double %0, %357
  %broadcast.splatinsert399 = insertelement <2 x double> poison, double %358, i64 0
  %broadcast.splat400 = shufflevector <2 x double> %broadcast.splatinsert399, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph393
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next401, %vector.body395 ]
  %359 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.7, i64 %index396
  %360 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.7, i64 %index396
  %361 = getelementptr inbounds nuw i8, ptr %360, i64 160
  %362 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.7, i64 %index396
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 320
  %364 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.7, i64 %index396
  %365 = getelementptr inbounds nuw i8, ptr %364, i64 480
  %366 = load double, ptr %359, align 8, !alias.scope !90
  %367 = load double, ptr %361, align 8, !alias.scope !90
  %368 = insertelement <2 x double> poison, double %366, i64 0
  %369 = insertelement <2 x double> %368, double %367, i64 1
  %370 = load double, ptr %363, align 8, !alias.scope !90
  %371 = load double, ptr %365, align 8, !alias.scope !90
  %372 = insertelement <2 x double> poison, double %370, i64 0
  %373 = insertelement <2 x double> %372, double %371, i64 1
  %374 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index396
  %375 = getelementptr inbounds nuw i8, ptr %374, i64 16
  %wide.load397 = load <2 x double>, ptr %374, align 8, !alias.scope !92, !noalias !94
  %wide.load398 = load <2 x double>, ptr %375, align 8, !alias.scope !92, !noalias !94
  %376 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat400, <2 x double> %369, <2 x double> %wide.load397)
  %377 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat400, <2 x double> %373, <2 x double> %wide.load398)
  store <2 x double> %376, ptr %374, align 8, !alias.scope !92, !noalias !94
  store <2 x double> %377, ptr %375, align 8, !alias.scope !92, !noalias !94
  %index.next401 = add nuw i64 %index396, 4
  %378 = icmp eq i64 %index.next401, %n.vec394
  br i1 %378, label %middle.block402, label %vector.body395, !llvm.loop !95

middle.block402:                                  ; preds = %vector.body395
  %cmp.n403 = icmp eq i64 %indvars.iv44, %n.vec394
  br i1 %cmp.n403, label %.preheader.8, label %scalar.ph384.preheader

scalar.ph384.preheader:                           ; preds = %vector.memcheck386, %.preheader.7, %middle.block402
  %indvars.iv35.7.ph = phi i64 [ 0, %vector.memcheck386 ], [ 0, %.preheader.7 ], [ %n.vec394, %middle.block402 ]
  %xtraiter685 = and i64 %indvars.iv44, 1
  %lcmp.mod686.not = icmp eq i64 %xtraiter685, 0
  br i1 %lcmp.mod686.not, label %scalar.ph384.prol.loopexit, label %scalar.ph384.prol

scalar.ph384.prol:                                ; preds = %scalar.ph384.preheader
  %379 = load double, ptr %350, align 8
  %380 = fmul double %0, %379
  %gep.7.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.7, i64 %indvars.iv35.7.ph
  %381 = load double, ptr %gep.7.prol, align 8
  %382 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.7.ph
  %383 = load double, ptr %382, align 8
  %384 = tail call double @llvm.fmuladd.f64(double %380, double %381, double %383)
  store double %384, ptr %382, align 8
  %indvars.iv.next36.7.prol = or disjoint i64 %indvars.iv35.7.ph, 1
  br label %scalar.ph384.prol.loopexit

scalar.ph384.prol.loopexit:                       ; preds = %scalar.ph384.prol, %scalar.ph384.preheader
  %indvars.iv35.7.unr = phi i64 [ %indvars.iv35.7.ph, %scalar.ph384.preheader ], [ %indvars.iv.next36.7.prol, %scalar.ph384.prol ]
  %385 = icmp eq i64 %indvars.iv46, %indvars.iv35.7.ph
  br i1 %385, label %.preheader.8, label %scalar.ph384

scalar.ph384:                                     ; preds = %scalar.ph384.prol.loopexit, %scalar.ph384
  %indvars.iv35.7 = phi i64 [ %indvars.iv.next36.7.1, %scalar.ph384 ], [ %indvars.iv35.7.unr, %scalar.ph384.prol.loopexit ]
  %386 = load double, ptr %350, align 8
  %387 = fmul double %0, %386
  %gep.7 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.7, i64 %indvars.iv35.7
  %388 = load double, ptr %gep.7, align 8
  %389 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.7
  %390 = load double, ptr %389, align 8
  %391 = tail call double @llvm.fmuladd.f64(double %387, double %388, double %390)
  store double %391, ptr %389, align 8
  %indvars.iv.next36.7 = add nuw nsw i64 %indvars.iv35.7, 1
  %392 = load double, ptr %350, align 8
  %393 = fmul double %0, %392
  %gep.7.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.7, i64 %indvars.iv.next36.7
  %394 = load double, ptr %gep.7.1, align 8
  %395 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.7
  %396 = load double, ptr %395, align 8
  %397 = tail call double @llvm.fmuladd.f64(double %393, double %394, double %396)
  store double %397, ptr %395, align 8
  %indvars.iv.next36.7.1 = add nuw nsw i64 %indvars.iv35.7, 2
  %exitcond39.7.not.1 = icmp eq i64 %indvars.iv.next36.7.1, %indvars.iv44
  br i1 %exitcond39.7.not.1, label %.preheader.8, label %scalar.ph384, !llvm.loop !96

.preheader.8:                                     ; preds = %scalar.ph384.prol.loopexit, %scalar.ph384, %middle.block402
  %398 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %min.iters.check352 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check352, label %scalar.ph351.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %.preheader.8
  %399 = mul nuw nsw i64 %indvars.iv46, 248
  %400 = getelementptr i8, ptr %2, i64 %399
  %401 = getelementptr i8, ptr %400, i64 8
  %402 = mul nuw nsw i64 %indvars.iv46, 160
  %403 = getelementptr i8, ptr %3, i64 %402
  %404 = getelementptr i8, ptr %403, i64 72
  %bound0354 = icmp ult ptr %5, %404
  %bound1355 = icmp ult ptr %invariant.gep.8, %401
  %bound0357 = icmp ult ptr %5, %scevgep350
  %found.conflict356658 = or i1 %bound0354, %bound0357
  %conflict.rdx359 = and i1 %found.conflict356658, %bound1355
  br i1 %conflict.rdx359, label %scalar.ph351.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck353
  %n.vec361 = and i64 %indvars.iv44, 9223372036854775804
  %405 = load double, ptr %398, align 8, !alias.scope !97
  %406 = fmul double %0, %405
  %broadcast.splatinsert366 = insertelement <2 x double> poison, double %406, i64 0
  %broadcast.splat367 = shufflevector <2 x double> %broadcast.splatinsert366, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ]
  %407 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.8, i64 %index363
  %408 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.8, i64 %index363
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 160
  %410 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.8, i64 %index363
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 320
  %412 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.8, i64 %index363
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 480
  %414 = load double, ptr %407, align 8, !alias.scope !100
  %415 = load double, ptr %409, align 8, !alias.scope !100
  %416 = insertelement <2 x double> poison, double %414, i64 0
  %417 = insertelement <2 x double> %416, double %415, i64 1
  %418 = load double, ptr %411, align 8, !alias.scope !100
  %419 = load double, ptr %413, align 8, !alias.scope !100
  %420 = insertelement <2 x double> poison, double %418, i64 0
  %421 = insertelement <2 x double> %420, double %419, i64 1
  %422 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index363
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 16
  %wide.load364 = load <2 x double>, ptr %422, align 8, !alias.scope !102, !noalias !104
  %wide.load365 = load <2 x double>, ptr %423, align 8, !alias.scope !102, !noalias !104
  %424 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat367, <2 x double> %417, <2 x double> %wide.load364)
  %425 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat367, <2 x double> %421, <2 x double> %wide.load365)
  store <2 x double> %424, ptr %422, align 8, !alias.scope !102, !noalias !104
  store <2 x double> %425, ptr %423, align 8, !alias.scope !102, !noalias !104
  %index.next368 = add nuw i64 %index363, 4
  %426 = icmp eq i64 %index.next368, %n.vec361
  br i1 %426, label %middle.block369, label %vector.body362, !llvm.loop !105

middle.block369:                                  ; preds = %vector.body362
  %cmp.n370 = icmp eq i64 %indvars.iv44, %n.vec361
  br i1 %cmp.n370, label %.preheader.9, label %scalar.ph351.preheader

scalar.ph351.preheader:                           ; preds = %vector.memcheck353, %.preheader.8, %middle.block369
  %indvars.iv35.8.ph = phi i64 [ 0, %vector.memcheck353 ], [ 0, %.preheader.8 ], [ %n.vec361, %middle.block369 ]
  %xtraiter687 = and i64 %indvars.iv44, 1
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %scalar.ph351.prol.loopexit, label %scalar.ph351.prol

scalar.ph351.prol:                                ; preds = %scalar.ph351.preheader
  %427 = load double, ptr %398, align 8
  %428 = fmul double %0, %427
  %gep.8.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.8, i64 %indvars.iv35.8.ph
  %429 = load double, ptr %gep.8.prol, align 8
  %430 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.8.ph
  %431 = load double, ptr %430, align 8
  %432 = tail call double @llvm.fmuladd.f64(double %428, double %429, double %431)
  store double %432, ptr %430, align 8
  %indvars.iv.next36.8.prol = or disjoint i64 %indvars.iv35.8.ph, 1
  br label %scalar.ph351.prol.loopexit

scalar.ph351.prol.loopexit:                       ; preds = %scalar.ph351.prol, %scalar.ph351.preheader
  %indvars.iv35.8.unr = phi i64 [ %indvars.iv35.8.ph, %scalar.ph351.preheader ], [ %indvars.iv.next36.8.prol, %scalar.ph351.prol ]
  %433 = icmp eq i64 %indvars.iv46, %indvars.iv35.8.ph
  br i1 %433, label %.preheader.9, label %scalar.ph351

scalar.ph351:                                     ; preds = %scalar.ph351.prol.loopexit, %scalar.ph351
  %indvars.iv35.8 = phi i64 [ %indvars.iv.next36.8.1, %scalar.ph351 ], [ %indvars.iv35.8.unr, %scalar.ph351.prol.loopexit ]
  %434 = load double, ptr %398, align 8
  %435 = fmul double %0, %434
  %gep.8 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.8, i64 %indvars.iv35.8
  %436 = load double, ptr %gep.8, align 8
  %437 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.8
  %438 = load double, ptr %437, align 8
  %439 = tail call double @llvm.fmuladd.f64(double %435, double %436, double %438)
  store double %439, ptr %437, align 8
  %indvars.iv.next36.8 = add nuw nsw i64 %indvars.iv35.8, 1
  %440 = load double, ptr %398, align 8
  %441 = fmul double %0, %440
  %gep.8.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.8, i64 %indvars.iv.next36.8
  %442 = load double, ptr %gep.8.1, align 8
  %443 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.8
  %444 = load double, ptr %443, align 8
  %445 = tail call double @llvm.fmuladd.f64(double %441, double %442, double %444)
  store double %445, ptr %443, align 8
  %indvars.iv.next36.8.1 = add nuw nsw i64 %indvars.iv35.8, 2
  %exitcond39.8.not.1 = icmp eq i64 %indvars.iv.next36.8.1, %indvars.iv44
  br i1 %exitcond39.8.not.1, label %.preheader.9, label %scalar.ph351, !llvm.loop !106

.preheader.9:                                     ; preds = %scalar.ph351.prol.loopexit, %scalar.ph351, %middle.block369
  %446 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %min.iters.check319 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check319, label %scalar.ph318.preheader, label %vector.memcheck320

vector.memcheck320:                               ; preds = %.preheader.9
  %447 = mul nuw nsw i64 %indvars.iv46, 248
  %448 = getelementptr i8, ptr %2, i64 %447
  %449 = getelementptr i8, ptr %448, i64 8
  %450 = mul nuw nsw i64 %indvars.iv46, 160
  %451 = getelementptr i8, ptr %3, i64 %450
  %452 = getelementptr i8, ptr %451, i64 80
  %bound0321 = icmp ult ptr %5, %452
  %bound1322 = icmp ult ptr %invariant.gep.9, %449
  %bound0324 = icmp ult ptr %5, %scevgep317
  %found.conflict323659 = or i1 %bound0321, %bound0324
  %conflict.rdx326 = and i1 %found.conflict323659, %bound1322
  br i1 %conflict.rdx326, label %scalar.ph318.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck320
  %n.vec328 = and i64 %indvars.iv44, 9223372036854775804
  %453 = load double, ptr %446, align 8, !alias.scope !107
  %454 = fmul double %0, %453
  %broadcast.splatinsert333 = insertelement <2 x double> poison, double %454, i64 0
  %broadcast.splat334 = shufflevector <2 x double> %broadcast.splatinsert333, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ]
  %455 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.9, i64 %index330
  %456 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.9, i64 %index330
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 160
  %458 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.9, i64 %index330
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 320
  %460 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.9, i64 %index330
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 480
  %462 = load double, ptr %455, align 8, !alias.scope !110
  %463 = load double, ptr %457, align 8, !alias.scope !110
  %464 = insertelement <2 x double> poison, double %462, i64 0
  %465 = insertelement <2 x double> %464, double %463, i64 1
  %466 = load double, ptr %459, align 8, !alias.scope !110
  %467 = load double, ptr %461, align 8, !alias.scope !110
  %468 = insertelement <2 x double> poison, double %466, i64 0
  %469 = insertelement <2 x double> %468, double %467, i64 1
  %470 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index330
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 16
  %wide.load331 = load <2 x double>, ptr %470, align 8, !alias.scope !112, !noalias !114
  %wide.load332 = load <2 x double>, ptr %471, align 8, !alias.scope !112, !noalias !114
  %472 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat334, <2 x double> %465, <2 x double> %wide.load331)
  %473 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat334, <2 x double> %469, <2 x double> %wide.load332)
  store <2 x double> %472, ptr %470, align 8, !alias.scope !112, !noalias !114
  store <2 x double> %473, ptr %471, align 8, !alias.scope !112, !noalias !114
  %index.next335 = add nuw i64 %index330, 4
  %474 = icmp eq i64 %index.next335, %n.vec328
  br i1 %474, label %middle.block336, label %vector.body329, !llvm.loop !115

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %indvars.iv44, %n.vec328
  br i1 %cmp.n337, label %.preheader.10, label %scalar.ph318.preheader

scalar.ph318.preheader:                           ; preds = %vector.memcheck320, %.preheader.9, %middle.block336
  %indvars.iv35.9.ph = phi i64 [ 0, %vector.memcheck320 ], [ 0, %.preheader.9 ], [ %n.vec328, %middle.block336 ]
  %xtraiter689 = and i64 %indvars.iv44, 1
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %scalar.ph318.prol.loopexit, label %scalar.ph318.prol

scalar.ph318.prol:                                ; preds = %scalar.ph318.preheader
  %475 = load double, ptr %446, align 8
  %476 = fmul double %0, %475
  %gep.9.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.9, i64 %indvars.iv35.9.ph
  %477 = load double, ptr %gep.9.prol, align 8
  %478 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.9.ph
  %479 = load double, ptr %478, align 8
  %480 = tail call double @llvm.fmuladd.f64(double %476, double %477, double %479)
  store double %480, ptr %478, align 8
  %indvars.iv.next36.9.prol = or disjoint i64 %indvars.iv35.9.ph, 1
  br label %scalar.ph318.prol.loopexit

scalar.ph318.prol.loopexit:                       ; preds = %scalar.ph318.prol, %scalar.ph318.preheader
  %indvars.iv35.9.unr = phi i64 [ %indvars.iv35.9.ph, %scalar.ph318.preheader ], [ %indvars.iv.next36.9.prol, %scalar.ph318.prol ]
  %481 = icmp eq i64 %indvars.iv46, %indvars.iv35.9.ph
  br i1 %481, label %.preheader.10, label %scalar.ph318

scalar.ph318:                                     ; preds = %scalar.ph318.prol.loopexit, %scalar.ph318
  %indvars.iv35.9 = phi i64 [ %indvars.iv.next36.9.1, %scalar.ph318 ], [ %indvars.iv35.9.unr, %scalar.ph318.prol.loopexit ]
  %482 = load double, ptr %446, align 8
  %483 = fmul double %0, %482
  %gep.9 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.9, i64 %indvars.iv35.9
  %484 = load double, ptr %gep.9, align 8
  %485 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.9
  %486 = load double, ptr %485, align 8
  %487 = tail call double @llvm.fmuladd.f64(double %483, double %484, double %486)
  store double %487, ptr %485, align 8
  %indvars.iv.next36.9 = add nuw nsw i64 %indvars.iv35.9, 1
  %488 = load double, ptr %446, align 8
  %489 = fmul double %0, %488
  %gep.9.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.9, i64 %indvars.iv.next36.9
  %490 = load double, ptr %gep.9.1, align 8
  %491 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.9
  %492 = load double, ptr %491, align 8
  %493 = tail call double @llvm.fmuladd.f64(double %489, double %490, double %492)
  store double %493, ptr %491, align 8
  %indvars.iv.next36.9.1 = add nuw nsw i64 %indvars.iv35.9, 2
  %exitcond39.9.not.1 = icmp eq i64 %indvars.iv.next36.9.1, %indvars.iv44
  br i1 %exitcond39.9.not.1, label %.preheader.10, label %scalar.ph318, !llvm.loop !116

.preheader.10:                                    ; preds = %scalar.ph318.prol.loopexit, %scalar.ph318, %middle.block336
  %494 = getelementptr inbounds nuw i8, ptr %11, i64 80
  %min.iters.check286 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check286, label %scalar.ph285.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %.preheader.10
  %495 = mul nuw nsw i64 %indvars.iv46, 248
  %496 = getelementptr i8, ptr %2, i64 %495
  %497 = getelementptr i8, ptr %496, i64 8
  %498 = mul nuw nsw i64 %indvars.iv46, 160
  %499 = getelementptr i8, ptr %3, i64 %498
  %500 = getelementptr i8, ptr %499, i64 88
  %bound0288 = icmp ult ptr %5, %500
  %bound1289 = icmp ult ptr %invariant.gep.10, %497
  %bound0291 = icmp ult ptr %5, %scevgep284
  %found.conflict290660 = or i1 %bound0288, %bound0291
  %conflict.rdx293 = and i1 %found.conflict290660, %bound1289
  br i1 %conflict.rdx293, label %scalar.ph285.preheader, label %vector.ph294

vector.ph294:                                     ; preds = %vector.memcheck287
  %n.vec295 = and i64 %indvars.iv44, 9223372036854775804
  %501 = load double, ptr %494, align 8, !alias.scope !117
  %502 = fmul double %0, %501
  %broadcast.splatinsert300 = insertelement <2 x double> poison, double %502, i64 0
  %broadcast.splat301 = shufflevector <2 x double> %broadcast.splatinsert300, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph294
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next302, %vector.body296 ]
  %503 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.10, i64 %index297
  %504 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.10, i64 %index297
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 160
  %506 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.10, i64 %index297
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 320
  %508 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.10, i64 %index297
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 480
  %510 = load double, ptr %503, align 8, !alias.scope !120
  %511 = load double, ptr %505, align 8, !alias.scope !120
  %512 = insertelement <2 x double> poison, double %510, i64 0
  %513 = insertelement <2 x double> %512, double %511, i64 1
  %514 = load double, ptr %507, align 8, !alias.scope !120
  %515 = load double, ptr %509, align 8, !alias.scope !120
  %516 = insertelement <2 x double> poison, double %514, i64 0
  %517 = insertelement <2 x double> %516, double %515, i64 1
  %518 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index297
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 16
  %wide.load298 = load <2 x double>, ptr %518, align 8, !alias.scope !122, !noalias !124
  %wide.load299 = load <2 x double>, ptr %519, align 8, !alias.scope !122, !noalias !124
  %520 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat301, <2 x double> %513, <2 x double> %wide.load298)
  %521 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat301, <2 x double> %517, <2 x double> %wide.load299)
  store <2 x double> %520, ptr %518, align 8, !alias.scope !122, !noalias !124
  store <2 x double> %521, ptr %519, align 8, !alias.scope !122, !noalias !124
  %index.next302 = add nuw i64 %index297, 4
  %522 = icmp eq i64 %index.next302, %n.vec295
  br i1 %522, label %middle.block303, label %vector.body296, !llvm.loop !125

middle.block303:                                  ; preds = %vector.body296
  %cmp.n304 = icmp eq i64 %indvars.iv44, %n.vec295
  br i1 %cmp.n304, label %.preheader.11, label %scalar.ph285.preheader

scalar.ph285.preheader:                           ; preds = %vector.memcheck287, %.preheader.10, %middle.block303
  %indvars.iv35.10.ph = phi i64 [ 0, %vector.memcheck287 ], [ 0, %.preheader.10 ], [ %n.vec295, %middle.block303 ]
  %xtraiter691 = and i64 %indvars.iv44, 1
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %scalar.ph285.prol.loopexit, label %scalar.ph285.prol

scalar.ph285.prol:                                ; preds = %scalar.ph285.preheader
  %523 = load double, ptr %494, align 8
  %524 = fmul double %0, %523
  %gep.10.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.10, i64 %indvars.iv35.10.ph
  %525 = load double, ptr %gep.10.prol, align 8
  %526 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.10.ph
  %527 = load double, ptr %526, align 8
  %528 = tail call double @llvm.fmuladd.f64(double %524, double %525, double %527)
  store double %528, ptr %526, align 8
  %indvars.iv.next36.10.prol = or disjoint i64 %indvars.iv35.10.ph, 1
  br label %scalar.ph285.prol.loopexit

scalar.ph285.prol.loopexit:                       ; preds = %scalar.ph285.prol, %scalar.ph285.preheader
  %indvars.iv35.10.unr = phi i64 [ %indvars.iv35.10.ph, %scalar.ph285.preheader ], [ %indvars.iv.next36.10.prol, %scalar.ph285.prol ]
  %529 = icmp eq i64 %indvars.iv46, %indvars.iv35.10.ph
  br i1 %529, label %.preheader.11, label %scalar.ph285

scalar.ph285:                                     ; preds = %scalar.ph285.prol.loopexit, %scalar.ph285
  %indvars.iv35.10 = phi i64 [ %indvars.iv.next36.10.1, %scalar.ph285 ], [ %indvars.iv35.10.unr, %scalar.ph285.prol.loopexit ]
  %530 = load double, ptr %494, align 8
  %531 = fmul double %0, %530
  %gep.10 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.10, i64 %indvars.iv35.10
  %532 = load double, ptr %gep.10, align 8
  %533 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.10
  %534 = load double, ptr %533, align 8
  %535 = tail call double @llvm.fmuladd.f64(double %531, double %532, double %534)
  store double %535, ptr %533, align 8
  %indvars.iv.next36.10 = add nuw nsw i64 %indvars.iv35.10, 1
  %536 = load double, ptr %494, align 8
  %537 = fmul double %0, %536
  %gep.10.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.10, i64 %indvars.iv.next36.10
  %538 = load double, ptr %gep.10.1, align 8
  %539 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.10
  %540 = load double, ptr %539, align 8
  %541 = tail call double @llvm.fmuladd.f64(double %537, double %538, double %540)
  store double %541, ptr %539, align 8
  %indvars.iv.next36.10.1 = add nuw nsw i64 %indvars.iv35.10, 2
  %exitcond39.10.not.1 = icmp eq i64 %indvars.iv.next36.10.1, %indvars.iv44
  br i1 %exitcond39.10.not.1, label %.preheader.11, label %scalar.ph285, !llvm.loop !126

.preheader.11:                                    ; preds = %scalar.ph285.prol.loopexit, %scalar.ph285, %middle.block303
  %542 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %min.iters.check253 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check253, label %scalar.ph252.preheader, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.preheader.11
  %543 = mul nuw nsw i64 %indvars.iv46, 248
  %544 = getelementptr i8, ptr %2, i64 %543
  %545 = getelementptr i8, ptr %544, i64 8
  %546 = mul nuw nsw i64 %indvars.iv46, 160
  %547 = getelementptr i8, ptr %3, i64 %546
  %548 = getelementptr i8, ptr %547, i64 96
  %bound0255 = icmp ult ptr %5, %548
  %bound1256 = icmp ult ptr %invariant.gep.11, %545
  %bound0258 = icmp ult ptr %5, %scevgep251
  %found.conflict257661 = or i1 %bound0255, %bound0258
  %conflict.rdx260 = and i1 %found.conflict257661, %bound1256
  br i1 %conflict.rdx260, label %scalar.ph252.preheader, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck254
  %n.vec262 = and i64 %indvars.iv44, 9223372036854775804
  %549 = load double, ptr %542, align 8, !alias.scope !127
  %550 = fmul double %0, %549
  %broadcast.splatinsert267 = insertelement <2 x double> poison, double %550, i64 0
  %broadcast.splat268 = shufflevector <2 x double> %broadcast.splatinsert267, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next269, %vector.body263 ]
  %551 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.11, i64 %index264
  %552 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.11, i64 %index264
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 160
  %554 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.11, i64 %index264
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 320
  %556 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.11, i64 %index264
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 480
  %558 = load double, ptr %551, align 8, !alias.scope !130
  %559 = load double, ptr %553, align 8, !alias.scope !130
  %560 = insertelement <2 x double> poison, double %558, i64 0
  %561 = insertelement <2 x double> %560, double %559, i64 1
  %562 = load double, ptr %555, align 8, !alias.scope !130
  %563 = load double, ptr %557, align 8, !alias.scope !130
  %564 = insertelement <2 x double> poison, double %562, i64 0
  %565 = insertelement <2 x double> %564, double %563, i64 1
  %566 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index264
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 16
  %wide.load265 = load <2 x double>, ptr %566, align 8, !alias.scope !132, !noalias !134
  %wide.load266 = load <2 x double>, ptr %567, align 8, !alias.scope !132, !noalias !134
  %568 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat268, <2 x double> %561, <2 x double> %wide.load265)
  %569 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat268, <2 x double> %565, <2 x double> %wide.load266)
  store <2 x double> %568, ptr %566, align 8, !alias.scope !132, !noalias !134
  store <2 x double> %569, ptr %567, align 8, !alias.scope !132, !noalias !134
  %index.next269 = add nuw i64 %index264, 4
  %570 = icmp eq i64 %index.next269, %n.vec262
  br i1 %570, label %middle.block270, label %vector.body263, !llvm.loop !135

middle.block270:                                  ; preds = %vector.body263
  %cmp.n271 = icmp eq i64 %indvars.iv44, %n.vec262
  br i1 %cmp.n271, label %.preheader.12, label %scalar.ph252.preheader

scalar.ph252.preheader:                           ; preds = %vector.memcheck254, %.preheader.11, %middle.block270
  %indvars.iv35.11.ph = phi i64 [ 0, %vector.memcheck254 ], [ 0, %.preheader.11 ], [ %n.vec262, %middle.block270 ]
  %xtraiter693 = and i64 %indvars.iv44, 1
  %lcmp.mod694.not = icmp eq i64 %xtraiter693, 0
  br i1 %lcmp.mod694.not, label %scalar.ph252.prol.loopexit, label %scalar.ph252.prol

scalar.ph252.prol:                                ; preds = %scalar.ph252.preheader
  %571 = load double, ptr %542, align 8
  %572 = fmul double %0, %571
  %gep.11.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.11, i64 %indvars.iv35.11.ph
  %573 = load double, ptr %gep.11.prol, align 8
  %574 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.11.ph
  %575 = load double, ptr %574, align 8
  %576 = tail call double @llvm.fmuladd.f64(double %572, double %573, double %575)
  store double %576, ptr %574, align 8
  %indvars.iv.next36.11.prol = or disjoint i64 %indvars.iv35.11.ph, 1
  br label %scalar.ph252.prol.loopexit

scalar.ph252.prol.loopexit:                       ; preds = %scalar.ph252.prol, %scalar.ph252.preheader
  %indvars.iv35.11.unr = phi i64 [ %indvars.iv35.11.ph, %scalar.ph252.preheader ], [ %indvars.iv.next36.11.prol, %scalar.ph252.prol ]
  %577 = icmp eq i64 %indvars.iv46, %indvars.iv35.11.ph
  br i1 %577, label %.preheader.12, label %scalar.ph252

scalar.ph252:                                     ; preds = %scalar.ph252.prol.loopexit, %scalar.ph252
  %indvars.iv35.11 = phi i64 [ %indvars.iv.next36.11.1, %scalar.ph252 ], [ %indvars.iv35.11.unr, %scalar.ph252.prol.loopexit ]
  %578 = load double, ptr %542, align 8
  %579 = fmul double %0, %578
  %gep.11 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.11, i64 %indvars.iv35.11
  %580 = load double, ptr %gep.11, align 8
  %581 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.11
  %582 = load double, ptr %581, align 8
  %583 = tail call double @llvm.fmuladd.f64(double %579, double %580, double %582)
  store double %583, ptr %581, align 8
  %indvars.iv.next36.11 = add nuw nsw i64 %indvars.iv35.11, 1
  %584 = load double, ptr %542, align 8
  %585 = fmul double %0, %584
  %gep.11.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.11, i64 %indvars.iv.next36.11
  %586 = load double, ptr %gep.11.1, align 8
  %587 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.11
  %588 = load double, ptr %587, align 8
  %589 = tail call double @llvm.fmuladd.f64(double %585, double %586, double %588)
  store double %589, ptr %587, align 8
  %indvars.iv.next36.11.1 = add nuw nsw i64 %indvars.iv35.11, 2
  %exitcond39.11.not.1 = icmp eq i64 %indvars.iv.next36.11.1, %indvars.iv44
  br i1 %exitcond39.11.not.1, label %.preheader.12, label %scalar.ph252, !llvm.loop !136

.preheader.12:                                    ; preds = %scalar.ph252.prol.loopexit, %scalar.ph252, %middle.block270
  %590 = getelementptr inbounds nuw i8, ptr %11, i64 96
  %min.iters.check220 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check220, label %scalar.ph219.preheader, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.preheader.12
  %591 = mul nuw nsw i64 %indvars.iv46, 248
  %592 = getelementptr i8, ptr %2, i64 %591
  %593 = getelementptr i8, ptr %592, i64 8
  %594 = mul nuw nsw i64 %indvars.iv46, 160
  %595 = getelementptr i8, ptr %3, i64 %594
  %596 = getelementptr i8, ptr %595, i64 104
  %bound0222 = icmp ult ptr %5, %596
  %bound1223 = icmp ult ptr %invariant.gep.12, %593
  %bound0225 = icmp ult ptr %5, %scevgep218
  %found.conflict224662 = or i1 %bound0222, %bound0225
  %conflict.rdx227 = and i1 %found.conflict224662, %bound1223
  br i1 %conflict.rdx227, label %scalar.ph219.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck221
  %n.vec229 = and i64 %indvars.iv44, 9223372036854775804
  %597 = load double, ptr %590, align 8, !alias.scope !137
  %598 = fmul double %0, %597
  %broadcast.splatinsert234 = insertelement <2 x double> poison, double %598, i64 0
  %broadcast.splat235 = shufflevector <2 x double> %broadcast.splatinsert234, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body230 ]
  %599 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.12, i64 %index231
  %600 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.12, i64 %index231
  %601 = getelementptr inbounds nuw i8, ptr %600, i64 160
  %602 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.12, i64 %index231
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 320
  %604 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.12, i64 %index231
  %605 = getelementptr inbounds nuw i8, ptr %604, i64 480
  %606 = load double, ptr %599, align 8, !alias.scope !140
  %607 = load double, ptr %601, align 8, !alias.scope !140
  %608 = insertelement <2 x double> poison, double %606, i64 0
  %609 = insertelement <2 x double> %608, double %607, i64 1
  %610 = load double, ptr %603, align 8, !alias.scope !140
  %611 = load double, ptr %605, align 8, !alias.scope !140
  %612 = insertelement <2 x double> poison, double %610, i64 0
  %613 = insertelement <2 x double> %612, double %611, i64 1
  %614 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index231
  %615 = getelementptr inbounds nuw i8, ptr %614, i64 16
  %wide.load232 = load <2 x double>, ptr %614, align 8, !alias.scope !142, !noalias !144
  %wide.load233 = load <2 x double>, ptr %615, align 8, !alias.scope !142, !noalias !144
  %616 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat235, <2 x double> %609, <2 x double> %wide.load232)
  %617 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat235, <2 x double> %613, <2 x double> %wide.load233)
  store <2 x double> %616, ptr %614, align 8, !alias.scope !142, !noalias !144
  store <2 x double> %617, ptr %615, align 8, !alias.scope !142, !noalias !144
  %index.next236 = add nuw i64 %index231, 4
  %618 = icmp eq i64 %index.next236, %n.vec229
  br i1 %618, label %middle.block237, label %vector.body230, !llvm.loop !145

middle.block237:                                  ; preds = %vector.body230
  %cmp.n238 = icmp eq i64 %indvars.iv44, %n.vec229
  br i1 %cmp.n238, label %.preheader.13, label %scalar.ph219.preheader

scalar.ph219.preheader:                           ; preds = %vector.memcheck221, %.preheader.12, %middle.block237
  %indvars.iv35.12.ph = phi i64 [ 0, %vector.memcheck221 ], [ 0, %.preheader.12 ], [ %n.vec229, %middle.block237 ]
  %xtraiter695 = and i64 %indvars.iv44, 1
  %lcmp.mod696.not = icmp eq i64 %xtraiter695, 0
  br i1 %lcmp.mod696.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol

scalar.ph219.prol:                                ; preds = %scalar.ph219.preheader
  %619 = load double, ptr %590, align 8
  %620 = fmul double %0, %619
  %gep.12.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.12, i64 %indvars.iv35.12.ph
  %621 = load double, ptr %gep.12.prol, align 8
  %622 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.12.ph
  %623 = load double, ptr %622, align 8
  %624 = tail call double @llvm.fmuladd.f64(double %620, double %621, double %623)
  store double %624, ptr %622, align 8
  %indvars.iv.next36.12.prol = or disjoint i64 %indvars.iv35.12.ph, 1
  br label %scalar.ph219.prol.loopexit

scalar.ph219.prol.loopexit:                       ; preds = %scalar.ph219.prol, %scalar.ph219.preheader
  %indvars.iv35.12.unr = phi i64 [ %indvars.iv35.12.ph, %scalar.ph219.preheader ], [ %indvars.iv.next36.12.prol, %scalar.ph219.prol ]
  %625 = icmp eq i64 %indvars.iv46, %indvars.iv35.12.ph
  br i1 %625, label %.preheader.13, label %scalar.ph219

scalar.ph219:                                     ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219
  %indvars.iv35.12 = phi i64 [ %indvars.iv.next36.12.1, %scalar.ph219 ], [ %indvars.iv35.12.unr, %scalar.ph219.prol.loopexit ]
  %626 = load double, ptr %590, align 8
  %627 = fmul double %0, %626
  %gep.12 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.12, i64 %indvars.iv35.12
  %628 = load double, ptr %gep.12, align 8
  %629 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.12
  %630 = load double, ptr %629, align 8
  %631 = tail call double @llvm.fmuladd.f64(double %627, double %628, double %630)
  store double %631, ptr %629, align 8
  %indvars.iv.next36.12 = add nuw nsw i64 %indvars.iv35.12, 1
  %632 = load double, ptr %590, align 8
  %633 = fmul double %0, %632
  %gep.12.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.12, i64 %indvars.iv.next36.12
  %634 = load double, ptr %gep.12.1, align 8
  %635 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.12
  %636 = load double, ptr %635, align 8
  %637 = tail call double @llvm.fmuladd.f64(double %633, double %634, double %636)
  store double %637, ptr %635, align 8
  %indvars.iv.next36.12.1 = add nuw nsw i64 %indvars.iv35.12, 2
  %exitcond39.12.not.1 = icmp eq i64 %indvars.iv.next36.12.1, %indvars.iv44
  br i1 %exitcond39.12.not.1, label %.preheader.13, label %scalar.ph219, !llvm.loop !146

.preheader.13:                                    ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219, %middle.block237
  %638 = getelementptr inbounds nuw i8, ptr %11, i64 104
  %min.iters.check187 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check187, label %scalar.ph186.preheader, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.preheader.13
  %639 = mul nuw nsw i64 %indvars.iv46, 248
  %640 = getelementptr i8, ptr %2, i64 %639
  %641 = getelementptr i8, ptr %640, i64 8
  %642 = mul nuw nsw i64 %indvars.iv46, 160
  %643 = getelementptr i8, ptr %3, i64 %642
  %644 = getelementptr i8, ptr %643, i64 112
  %bound0189 = icmp ult ptr %5, %644
  %bound1190 = icmp ult ptr %invariant.gep.13, %641
  %bound0192 = icmp ult ptr %5, %scevgep185
  %found.conflict191663 = or i1 %bound0189, %bound0192
  %conflict.rdx194 = and i1 %found.conflict191663, %bound1190
  br i1 %conflict.rdx194, label %scalar.ph186.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck188
  %n.vec196 = and i64 %indvars.iv44, 9223372036854775804
  %645 = load double, ptr %638, align 8, !alias.scope !147
  %646 = fmul double %0, %645
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %646, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ]
  %647 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.13, i64 %index198
  %648 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.13, i64 %index198
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 160
  %650 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.13, i64 %index198
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 320
  %652 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.13, i64 %index198
  %653 = getelementptr inbounds nuw i8, ptr %652, i64 480
  %654 = load double, ptr %647, align 8, !alias.scope !150
  %655 = load double, ptr %649, align 8, !alias.scope !150
  %656 = insertelement <2 x double> poison, double %654, i64 0
  %657 = insertelement <2 x double> %656, double %655, i64 1
  %658 = load double, ptr %651, align 8, !alias.scope !150
  %659 = load double, ptr %653, align 8, !alias.scope !150
  %660 = insertelement <2 x double> poison, double %658, i64 0
  %661 = insertelement <2 x double> %660, double %659, i64 1
  %662 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index198
  %663 = getelementptr inbounds nuw i8, ptr %662, i64 16
  %wide.load199 = load <2 x double>, ptr %662, align 8, !alias.scope !152, !noalias !154
  %wide.load200 = load <2 x double>, ptr %663, align 8, !alias.scope !152, !noalias !154
  %664 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat202, <2 x double> %657, <2 x double> %wide.load199)
  %665 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat202, <2 x double> %661, <2 x double> %wide.load200)
  store <2 x double> %664, ptr %662, align 8, !alias.scope !152, !noalias !154
  store <2 x double> %665, ptr %663, align 8, !alias.scope !152, !noalias !154
  %index.next203 = add nuw i64 %index198, 4
  %666 = icmp eq i64 %index.next203, %n.vec196
  br i1 %666, label %middle.block204, label %vector.body197, !llvm.loop !155

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %indvars.iv44, %n.vec196
  br i1 %cmp.n205, label %.preheader.14, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %vector.memcheck188, %.preheader.13, %middle.block204
  %indvars.iv35.13.ph = phi i64 [ 0, %vector.memcheck188 ], [ 0, %.preheader.13 ], [ %n.vec196, %middle.block204 ]
  %xtraiter697 = and i64 %indvars.iv44, 1
  %lcmp.mod698.not = icmp eq i64 %xtraiter697, 0
  br i1 %lcmp.mod698.not, label %scalar.ph186.prol.loopexit, label %scalar.ph186.prol

scalar.ph186.prol:                                ; preds = %scalar.ph186.preheader
  %667 = load double, ptr %638, align 8
  %668 = fmul double %0, %667
  %gep.13.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.13, i64 %indvars.iv35.13.ph
  %669 = load double, ptr %gep.13.prol, align 8
  %670 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.13.ph
  %671 = load double, ptr %670, align 8
  %672 = tail call double @llvm.fmuladd.f64(double %668, double %669, double %671)
  store double %672, ptr %670, align 8
  %indvars.iv.next36.13.prol = or disjoint i64 %indvars.iv35.13.ph, 1
  br label %scalar.ph186.prol.loopexit

scalar.ph186.prol.loopexit:                       ; preds = %scalar.ph186.prol, %scalar.ph186.preheader
  %indvars.iv35.13.unr = phi i64 [ %indvars.iv35.13.ph, %scalar.ph186.preheader ], [ %indvars.iv.next36.13.prol, %scalar.ph186.prol ]
  %673 = icmp eq i64 %indvars.iv46, %indvars.iv35.13.ph
  br i1 %673, label %.preheader.14, label %scalar.ph186

scalar.ph186:                                     ; preds = %scalar.ph186.prol.loopexit, %scalar.ph186
  %indvars.iv35.13 = phi i64 [ %indvars.iv.next36.13.1, %scalar.ph186 ], [ %indvars.iv35.13.unr, %scalar.ph186.prol.loopexit ]
  %674 = load double, ptr %638, align 8
  %675 = fmul double %0, %674
  %gep.13 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.13, i64 %indvars.iv35.13
  %676 = load double, ptr %gep.13, align 8
  %677 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.13
  %678 = load double, ptr %677, align 8
  %679 = tail call double @llvm.fmuladd.f64(double %675, double %676, double %678)
  store double %679, ptr %677, align 8
  %indvars.iv.next36.13 = add nuw nsw i64 %indvars.iv35.13, 1
  %680 = load double, ptr %638, align 8
  %681 = fmul double %0, %680
  %gep.13.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.13, i64 %indvars.iv.next36.13
  %682 = load double, ptr %gep.13.1, align 8
  %683 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.13
  %684 = load double, ptr %683, align 8
  %685 = tail call double @llvm.fmuladd.f64(double %681, double %682, double %684)
  store double %685, ptr %683, align 8
  %indvars.iv.next36.13.1 = add nuw nsw i64 %indvars.iv35.13, 2
  %exitcond39.13.not.1 = icmp eq i64 %indvars.iv.next36.13.1, %indvars.iv44
  br i1 %exitcond39.13.not.1, label %.preheader.14, label %scalar.ph186, !llvm.loop !156

.preheader.14:                                    ; preds = %scalar.ph186.prol.loopexit, %scalar.ph186, %middle.block204
  %686 = getelementptr inbounds nuw i8, ptr %11, i64 112
  %min.iters.check154 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.preheader.14
  %687 = mul nuw nsw i64 %indvars.iv46, 248
  %688 = getelementptr i8, ptr %2, i64 %687
  %689 = getelementptr i8, ptr %688, i64 8
  %690 = mul nuw nsw i64 %indvars.iv46, 160
  %691 = getelementptr i8, ptr %3, i64 %690
  %692 = getelementptr i8, ptr %691, i64 120
  %bound0156 = icmp ult ptr %5, %692
  %bound1157 = icmp ult ptr %invariant.gep.14, %689
  %bound0159 = icmp ult ptr %5, %scevgep152
  %found.conflict158664 = or i1 %bound0156, %bound0159
  %conflict.rdx161 = and i1 %found.conflict158664, %bound1157
  br i1 %conflict.rdx161, label %scalar.ph153.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck155
  %n.vec163 = and i64 %indvars.iv44, 9223372036854775804
  %693 = load double, ptr %686, align 8, !alias.scope !157
  %694 = fmul double %0, %693
  %broadcast.splatinsert168 = insertelement <2 x double> poison, double %694, i64 0
  %broadcast.splat169 = shufflevector <2 x double> %broadcast.splatinsert168, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next170, %vector.body164 ]
  %695 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.14, i64 %index165
  %696 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.14, i64 %index165
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 160
  %698 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.14, i64 %index165
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 320
  %700 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.14, i64 %index165
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 480
  %702 = load double, ptr %695, align 8, !alias.scope !160
  %703 = load double, ptr %697, align 8, !alias.scope !160
  %704 = insertelement <2 x double> poison, double %702, i64 0
  %705 = insertelement <2 x double> %704, double %703, i64 1
  %706 = load double, ptr %699, align 8, !alias.scope !160
  %707 = load double, ptr %701, align 8, !alias.scope !160
  %708 = insertelement <2 x double> poison, double %706, i64 0
  %709 = insertelement <2 x double> %708, double %707, i64 1
  %710 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index165
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 16
  %wide.load166 = load <2 x double>, ptr %710, align 8, !alias.scope !162, !noalias !164
  %wide.load167 = load <2 x double>, ptr %711, align 8, !alias.scope !162, !noalias !164
  %712 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat169, <2 x double> %705, <2 x double> %wide.load166)
  %713 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat169, <2 x double> %709, <2 x double> %wide.load167)
  store <2 x double> %712, ptr %710, align 8, !alias.scope !162, !noalias !164
  store <2 x double> %713, ptr %711, align 8, !alias.scope !162, !noalias !164
  %index.next170 = add nuw i64 %index165, 4
  %714 = icmp eq i64 %index.next170, %n.vec163
  br i1 %714, label %middle.block171, label %vector.body164, !llvm.loop !165

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %indvars.iv44, %n.vec163
  br i1 %cmp.n172, label %.preheader.15, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %vector.memcheck155, %.preheader.14, %middle.block171
  %indvars.iv35.14.ph = phi i64 [ 0, %vector.memcheck155 ], [ 0, %.preheader.14 ], [ %n.vec163, %middle.block171 ]
  %xtraiter699 = and i64 %indvars.iv44, 1
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol

scalar.ph153.prol:                                ; preds = %scalar.ph153.preheader
  %715 = load double, ptr %686, align 8
  %716 = fmul double %0, %715
  %gep.14.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.14, i64 %indvars.iv35.14.ph
  %717 = load double, ptr %gep.14.prol, align 8
  %718 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.14.ph
  %719 = load double, ptr %718, align 8
  %720 = tail call double @llvm.fmuladd.f64(double %716, double %717, double %719)
  store double %720, ptr %718, align 8
  %indvars.iv.next36.14.prol = or disjoint i64 %indvars.iv35.14.ph, 1
  br label %scalar.ph153.prol.loopexit

scalar.ph153.prol.loopexit:                       ; preds = %scalar.ph153.prol, %scalar.ph153.preheader
  %indvars.iv35.14.unr = phi i64 [ %indvars.iv35.14.ph, %scalar.ph153.preheader ], [ %indvars.iv.next36.14.prol, %scalar.ph153.prol ]
  %721 = icmp eq i64 %indvars.iv46, %indvars.iv35.14.ph
  br i1 %721, label %.preheader.15, label %scalar.ph153

scalar.ph153:                                     ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153
  %indvars.iv35.14 = phi i64 [ %indvars.iv.next36.14.1, %scalar.ph153 ], [ %indvars.iv35.14.unr, %scalar.ph153.prol.loopexit ]
  %722 = load double, ptr %686, align 8
  %723 = fmul double %0, %722
  %gep.14 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.14, i64 %indvars.iv35.14
  %724 = load double, ptr %gep.14, align 8
  %725 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.14
  %726 = load double, ptr %725, align 8
  %727 = tail call double @llvm.fmuladd.f64(double %723, double %724, double %726)
  store double %727, ptr %725, align 8
  %indvars.iv.next36.14 = add nuw nsw i64 %indvars.iv35.14, 1
  %728 = load double, ptr %686, align 8
  %729 = fmul double %0, %728
  %gep.14.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.14, i64 %indvars.iv.next36.14
  %730 = load double, ptr %gep.14.1, align 8
  %731 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.14
  %732 = load double, ptr %731, align 8
  %733 = tail call double @llvm.fmuladd.f64(double %729, double %730, double %732)
  store double %733, ptr %731, align 8
  %indvars.iv.next36.14.1 = add nuw nsw i64 %indvars.iv35.14, 2
  %exitcond39.14.not.1 = icmp eq i64 %indvars.iv.next36.14.1, %indvars.iv44
  br i1 %exitcond39.14.not.1, label %.preheader.15, label %scalar.ph153, !llvm.loop !166

.preheader.15:                                    ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153, %middle.block171
  %734 = getelementptr inbounds nuw i8, ptr %11, i64 120
  %min.iters.check121 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check121, label %scalar.ph120.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.preheader.15
  %735 = mul nuw nsw i64 %indvars.iv46, 248
  %736 = getelementptr i8, ptr %2, i64 %735
  %737 = getelementptr i8, ptr %736, i64 8
  %738 = mul nuw nsw i64 %indvars.iv46, 160
  %739 = getelementptr i8, ptr %3, i64 %738
  %740 = getelementptr i8, ptr %739, i64 128
  %bound0123 = icmp ult ptr %5, %740
  %bound1124 = icmp ult ptr %invariant.gep.15, %737
  %bound0126 = icmp ult ptr %5, %scevgep119
  %found.conflict125665 = or i1 %bound0123, %bound0126
  %conflict.rdx128 = and i1 %found.conflict125665, %bound1124
  br i1 %conflict.rdx128, label %scalar.ph120.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck122
  %n.vec130 = and i64 %indvars.iv44, 9223372036854775804
  %741 = load double, ptr %734, align 8, !alias.scope !167
  %742 = fmul double %0, %741
  %broadcast.splatinsert135 = insertelement <2 x double> poison, double %742, i64 0
  %broadcast.splat136 = shufflevector <2 x double> %broadcast.splatinsert135, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next137, %vector.body131 ]
  %743 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.15, i64 %index132
  %744 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.15, i64 %index132
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 160
  %746 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.15, i64 %index132
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 320
  %748 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.15, i64 %index132
  %749 = getelementptr inbounds nuw i8, ptr %748, i64 480
  %750 = load double, ptr %743, align 8, !alias.scope !170
  %751 = load double, ptr %745, align 8, !alias.scope !170
  %752 = insertelement <2 x double> poison, double %750, i64 0
  %753 = insertelement <2 x double> %752, double %751, i64 1
  %754 = load double, ptr %747, align 8, !alias.scope !170
  %755 = load double, ptr %749, align 8, !alias.scope !170
  %756 = insertelement <2 x double> poison, double %754, i64 0
  %757 = insertelement <2 x double> %756, double %755, i64 1
  %758 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index132
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 16
  %wide.load133 = load <2 x double>, ptr %758, align 8, !alias.scope !172, !noalias !174
  %wide.load134 = load <2 x double>, ptr %759, align 8, !alias.scope !172, !noalias !174
  %760 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat136, <2 x double> %753, <2 x double> %wide.load133)
  %761 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat136, <2 x double> %757, <2 x double> %wide.load134)
  store <2 x double> %760, ptr %758, align 8, !alias.scope !172, !noalias !174
  store <2 x double> %761, ptr %759, align 8, !alias.scope !172, !noalias !174
  %index.next137 = add nuw i64 %index132, 4
  %762 = icmp eq i64 %index.next137, %n.vec130
  br i1 %762, label %middle.block138, label %vector.body131, !llvm.loop !175

middle.block138:                                  ; preds = %vector.body131
  %cmp.n139 = icmp eq i64 %indvars.iv44, %n.vec130
  br i1 %cmp.n139, label %.preheader.16, label %scalar.ph120.preheader

scalar.ph120.preheader:                           ; preds = %vector.memcheck122, %.preheader.15, %middle.block138
  %indvars.iv35.15.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.preheader.15 ], [ %n.vec130, %middle.block138 ]
  %xtraiter701 = and i64 %indvars.iv44, 1
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  br i1 %lcmp.mod702.not, label %scalar.ph120.prol.loopexit, label %scalar.ph120.prol

scalar.ph120.prol:                                ; preds = %scalar.ph120.preheader
  %763 = load double, ptr %734, align 8
  %764 = fmul double %0, %763
  %gep.15.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.15, i64 %indvars.iv35.15.ph
  %765 = load double, ptr %gep.15.prol, align 8
  %766 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.15.ph
  %767 = load double, ptr %766, align 8
  %768 = tail call double @llvm.fmuladd.f64(double %764, double %765, double %767)
  store double %768, ptr %766, align 8
  %indvars.iv.next36.15.prol = or disjoint i64 %indvars.iv35.15.ph, 1
  br label %scalar.ph120.prol.loopexit

scalar.ph120.prol.loopexit:                       ; preds = %scalar.ph120.prol, %scalar.ph120.preheader
  %indvars.iv35.15.unr = phi i64 [ %indvars.iv35.15.ph, %scalar.ph120.preheader ], [ %indvars.iv.next36.15.prol, %scalar.ph120.prol ]
  %769 = icmp eq i64 %indvars.iv46, %indvars.iv35.15.ph
  br i1 %769, label %.preheader.16, label %scalar.ph120

scalar.ph120:                                     ; preds = %scalar.ph120.prol.loopexit, %scalar.ph120
  %indvars.iv35.15 = phi i64 [ %indvars.iv.next36.15.1, %scalar.ph120 ], [ %indvars.iv35.15.unr, %scalar.ph120.prol.loopexit ]
  %770 = load double, ptr %734, align 8
  %771 = fmul double %0, %770
  %gep.15 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.15, i64 %indvars.iv35.15
  %772 = load double, ptr %gep.15, align 8
  %773 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.15
  %774 = load double, ptr %773, align 8
  %775 = tail call double @llvm.fmuladd.f64(double %771, double %772, double %774)
  store double %775, ptr %773, align 8
  %indvars.iv.next36.15 = add nuw nsw i64 %indvars.iv35.15, 1
  %776 = load double, ptr %734, align 8
  %777 = fmul double %0, %776
  %gep.15.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.15, i64 %indvars.iv.next36.15
  %778 = load double, ptr %gep.15.1, align 8
  %779 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.15
  %780 = load double, ptr %779, align 8
  %781 = tail call double @llvm.fmuladd.f64(double %777, double %778, double %780)
  store double %781, ptr %779, align 8
  %indvars.iv.next36.15.1 = add nuw nsw i64 %indvars.iv35.15, 2
  %exitcond39.15.not.1 = icmp eq i64 %indvars.iv.next36.15.1, %indvars.iv44
  br i1 %exitcond39.15.not.1, label %.preheader.16, label %scalar.ph120, !llvm.loop !176

.preheader.16:                                    ; preds = %scalar.ph120.prol.loopexit, %scalar.ph120, %middle.block138
  %782 = getelementptr inbounds nuw i8, ptr %11, i64 128
  %min.iters.check88 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check88, label %scalar.ph87.preheader, label %vector.memcheck89

vector.memcheck89:                                ; preds = %.preheader.16
  %783 = mul nuw nsw i64 %indvars.iv46, 248
  %784 = getelementptr i8, ptr %2, i64 %783
  %785 = getelementptr i8, ptr %784, i64 8
  %786 = mul nuw nsw i64 %indvars.iv46, 160
  %787 = getelementptr i8, ptr %3, i64 %786
  %788 = getelementptr i8, ptr %787, i64 136
  %bound090 = icmp ult ptr %5, %788
  %bound191 = icmp ult ptr %invariant.gep.16, %785
  %bound093 = icmp ult ptr %5, %scevgep86
  %found.conflict92666 = or i1 %bound090, %bound093
  %conflict.rdx95 = and i1 %found.conflict92666, %bound191
  br i1 %conflict.rdx95, label %scalar.ph87.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck89
  %n.vec97 = and i64 %indvars.iv44, 9223372036854775804
  %789 = load double, ptr %782, align 8, !alias.scope !177
  %790 = fmul double %0, %789
  %broadcast.splatinsert102 = insertelement <2 x double> poison, double %790, i64 0
  %broadcast.splat103 = shufflevector <2 x double> %broadcast.splatinsert102, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ]
  %791 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.16, i64 %index99
  %792 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.16, i64 %index99
  %793 = getelementptr inbounds nuw i8, ptr %792, i64 160
  %794 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.16, i64 %index99
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 320
  %796 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.16, i64 %index99
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 480
  %798 = load double, ptr %791, align 8, !alias.scope !180
  %799 = load double, ptr %793, align 8, !alias.scope !180
  %800 = insertelement <2 x double> poison, double %798, i64 0
  %801 = insertelement <2 x double> %800, double %799, i64 1
  %802 = load double, ptr %795, align 8, !alias.scope !180
  %803 = load double, ptr %797, align 8, !alias.scope !180
  %804 = insertelement <2 x double> poison, double %802, i64 0
  %805 = insertelement <2 x double> %804, double %803, i64 1
  %806 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index99
  %807 = getelementptr inbounds nuw i8, ptr %806, i64 16
  %wide.load100 = load <2 x double>, ptr %806, align 8, !alias.scope !182, !noalias !184
  %wide.load101 = load <2 x double>, ptr %807, align 8, !alias.scope !182, !noalias !184
  %808 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat103, <2 x double> %801, <2 x double> %wide.load100)
  %809 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat103, <2 x double> %805, <2 x double> %wide.load101)
  store <2 x double> %808, ptr %806, align 8, !alias.scope !182, !noalias !184
  store <2 x double> %809, ptr %807, align 8, !alias.scope !182, !noalias !184
  %index.next104 = add nuw i64 %index99, 4
  %810 = icmp eq i64 %index.next104, %n.vec97
  br i1 %810, label %middle.block105, label %vector.body98, !llvm.loop !185

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %indvars.iv44, %n.vec97
  br i1 %cmp.n106, label %.preheader.17, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %vector.memcheck89, %.preheader.16, %middle.block105
  %indvars.iv35.16.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.preheader.16 ], [ %n.vec97, %middle.block105 ]
  %xtraiter703 = and i64 %indvars.iv44, 1
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  br i1 %lcmp.mod704.not, label %scalar.ph87.prol.loopexit, label %scalar.ph87.prol

scalar.ph87.prol:                                 ; preds = %scalar.ph87.preheader
  %811 = load double, ptr %782, align 8
  %812 = fmul double %0, %811
  %gep.16.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.16, i64 %indvars.iv35.16.ph
  %813 = load double, ptr %gep.16.prol, align 8
  %814 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.16.ph
  %815 = load double, ptr %814, align 8
  %816 = tail call double @llvm.fmuladd.f64(double %812, double %813, double %815)
  store double %816, ptr %814, align 8
  %indvars.iv.next36.16.prol = or disjoint i64 %indvars.iv35.16.ph, 1
  br label %scalar.ph87.prol.loopexit

scalar.ph87.prol.loopexit:                        ; preds = %scalar.ph87.prol, %scalar.ph87.preheader
  %indvars.iv35.16.unr = phi i64 [ %indvars.iv35.16.ph, %scalar.ph87.preheader ], [ %indvars.iv.next36.16.prol, %scalar.ph87.prol ]
  %817 = icmp eq i64 %indvars.iv46, %indvars.iv35.16.ph
  br i1 %817, label %.preheader.17, label %scalar.ph87

scalar.ph87:                                      ; preds = %scalar.ph87.prol.loopexit, %scalar.ph87
  %indvars.iv35.16 = phi i64 [ %indvars.iv.next36.16.1, %scalar.ph87 ], [ %indvars.iv35.16.unr, %scalar.ph87.prol.loopexit ]
  %818 = load double, ptr %782, align 8
  %819 = fmul double %0, %818
  %gep.16 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.16, i64 %indvars.iv35.16
  %820 = load double, ptr %gep.16, align 8
  %821 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.16
  %822 = load double, ptr %821, align 8
  %823 = tail call double @llvm.fmuladd.f64(double %819, double %820, double %822)
  store double %823, ptr %821, align 8
  %indvars.iv.next36.16 = add nuw nsw i64 %indvars.iv35.16, 1
  %824 = load double, ptr %782, align 8
  %825 = fmul double %0, %824
  %gep.16.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.16, i64 %indvars.iv.next36.16
  %826 = load double, ptr %gep.16.1, align 8
  %827 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.16
  %828 = load double, ptr %827, align 8
  %829 = tail call double @llvm.fmuladd.f64(double %825, double %826, double %828)
  store double %829, ptr %827, align 8
  %indvars.iv.next36.16.1 = add nuw nsw i64 %indvars.iv35.16, 2
  %exitcond39.16.not.1 = icmp eq i64 %indvars.iv.next36.16.1, %indvars.iv44
  br i1 %exitcond39.16.not.1, label %.preheader.17, label %scalar.ph87, !llvm.loop !186

.preheader.17:                                    ; preds = %scalar.ph87.prol.loopexit, %scalar.ph87, %middle.block105
  %830 = getelementptr inbounds nuw i8, ptr %11, i64 136
  %min.iters.check55 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check55, label %scalar.ph54.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.preheader.17
  %831 = mul nuw nsw i64 %indvars.iv46, 248
  %832 = getelementptr i8, ptr %2, i64 %831
  %833 = getelementptr i8, ptr %832, i64 8
  %834 = mul nuw nsw i64 %indvars.iv46, 160
  %835 = getelementptr i8, ptr %3, i64 %834
  %836 = getelementptr i8, ptr %835, i64 144
  %bound057 = icmp ult ptr %5, %836
  %bound158 = icmp ult ptr %invariant.gep.17, %833
  %bound060 = icmp ult ptr %5, %scevgep53
  %found.conflict59667 = or i1 %bound057, %bound060
  %conflict.rdx62 = and i1 %found.conflict59667, %bound158
  br i1 %conflict.rdx62, label %scalar.ph54.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck56
  %n.vec64 = and i64 %indvars.iv44, 9223372036854775804
  %837 = load double, ptr %830, align 8, !alias.scope !187
  %838 = fmul double %0, %837
  %broadcast.splatinsert69 = insertelement <2 x double> poison, double %838, i64 0
  %broadcast.splat70 = shufflevector <2 x double> %broadcast.splatinsert69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ]
  %839 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.17, i64 %index66
  %840 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.17, i64 %index66
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 160
  %842 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.17, i64 %index66
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 320
  %844 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.17, i64 %index66
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 480
  %846 = load double, ptr %839, align 8, !alias.scope !190
  %847 = load double, ptr %841, align 8, !alias.scope !190
  %848 = insertelement <2 x double> poison, double %846, i64 0
  %849 = insertelement <2 x double> %848, double %847, i64 1
  %850 = load double, ptr %843, align 8, !alias.scope !190
  %851 = load double, ptr %845, align 8, !alias.scope !190
  %852 = insertelement <2 x double> poison, double %850, i64 0
  %853 = insertelement <2 x double> %852, double %851, i64 1
  %854 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index66
  %855 = getelementptr inbounds nuw i8, ptr %854, i64 16
  %wide.load67 = load <2 x double>, ptr %854, align 8, !alias.scope !192, !noalias !194
  %wide.load68 = load <2 x double>, ptr %855, align 8, !alias.scope !192, !noalias !194
  %856 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %849, <2 x double> %wide.load67)
  %857 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %853, <2 x double> %wide.load68)
  store <2 x double> %856, ptr %854, align 8, !alias.scope !192, !noalias !194
  store <2 x double> %857, ptr %855, align 8, !alias.scope !192, !noalias !194
  %index.next71 = add nuw i64 %index66, 4
  %858 = icmp eq i64 %index.next71, %n.vec64
  br i1 %858, label %middle.block72, label %vector.body65, !llvm.loop !195

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %indvars.iv44, %n.vec64
  br i1 %cmp.n73, label %.preheader.18, label %scalar.ph54.preheader

scalar.ph54.preheader:                            ; preds = %vector.memcheck56, %.preheader.17, %middle.block72
  %indvars.iv35.17.ph = phi i64 [ 0, %vector.memcheck56 ], [ 0, %.preheader.17 ], [ %n.vec64, %middle.block72 ]
  %xtraiter705 = and i64 %indvars.iv44, 1
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod706.not, label %scalar.ph54.prol.loopexit, label %scalar.ph54.prol

scalar.ph54.prol:                                 ; preds = %scalar.ph54.preheader
  %859 = load double, ptr %830, align 8
  %860 = fmul double %0, %859
  %gep.17.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.17, i64 %indvars.iv35.17.ph
  %861 = load double, ptr %gep.17.prol, align 8
  %862 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.17.ph
  %863 = load double, ptr %862, align 8
  %864 = tail call double @llvm.fmuladd.f64(double %860, double %861, double %863)
  store double %864, ptr %862, align 8
  %indvars.iv.next36.17.prol = or disjoint i64 %indvars.iv35.17.ph, 1
  br label %scalar.ph54.prol.loopexit

scalar.ph54.prol.loopexit:                        ; preds = %scalar.ph54.prol, %scalar.ph54.preheader
  %indvars.iv35.17.unr = phi i64 [ %indvars.iv35.17.ph, %scalar.ph54.preheader ], [ %indvars.iv.next36.17.prol, %scalar.ph54.prol ]
  %865 = icmp eq i64 %indvars.iv46, %indvars.iv35.17.ph
  br i1 %865, label %.preheader.18, label %scalar.ph54

scalar.ph54:                                      ; preds = %scalar.ph54.prol.loopexit, %scalar.ph54
  %indvars.iv35.17 = phi i64 [ %indvars.iv.next36.17.1, %scalar.ph54 ], [ %indvars.iv35.17.unr, %scalar.ph54.prol.loopexit ]
  %866 = load double, ptr %830, align 8
  %867 = fmul double %0, %866
  %gep.17 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.17, i64 %indvars.iv35.17
  %868 = load double, ptr %gep.17, align 8
  %869 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.17
  %870 = load double, ptr %869, align 8
  %871 = tail call double @llvm.fmuladd.f64(double %867, double %868, double %870)
  store double %871, ptr %869, align 8
  %indvars.iv.next36.17 = add nuw nsw i64 %indvars.iv35.17, 1
  %872 = load double, ptr %830, align 8
  %873 = fmul double %0, %872
  %gep.17.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.17, i64 %indvars.iv.next36.17
  %874 = load double, ptr %gep.17.1, align 8
  %875 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.17
  %876 = load double, ptr %875, align 8
  %877 = tail call double @llvm.fmuladd.f64(double %873, double %874, double %876)
  store double %877, ptr %875, align 8
  %indvars.iv.next36.17.1 = add nuw nsw i64 %indvars.iv35.17, 2
  %exitcond39.17.not.1 = icmp eq i64 %indvars.iv.next36.17.1, %indvars.iv44
  br i1 %exitcond39.17.not.1, label %.preheader.18, label %scalar.ph54, !llvm.loop !196

.preheader.18:                                    ; preds = %scalar.ph54.prol.loopexit, %scalar.ph54, %middle.block72
  %878 = getelementptr inbounds nuw i8, ptr %11, i64 144
  %min.iters.check22 = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check22, label %scalar.ph21.preheader, label %vector.memcheck23

vector.memcheck23:                                ; preds = %.preheader.18
  %879 = mul nuw nsw i64 %indvars.iv46, 248
  %880 = getelementptr i8, ptr %2, i64 %879
  %881 = getelementptr i8, ptr %880, i64 8
  %882 = mul nuw nsw i64 %indvars.iv46, 160
  %883 = getelementptr i8, ptr %3, i64 %882
  %884 = getelementptr i8, ptr %883, i64 152
  %bound024 = icmp ult ptr %5, %884
  %bound125 = icmp ult ptr %invariant.gep.18, %881
  %bound027 = icmp ult ptr %5, %scevgep20
  %found.conflict26668 = or i1 %bound024, %bound027
  %conflict.rdx29 = and i1 %found.conflict26668, %bound125
  br i1 %conflict.rdx29, label %scalar.ph21.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %vector.memcheck23
  %n.vec31 = and i64 %indvars.iv44, 9223372036854775804
  %885 = load double, ptr %878, align 8, !alias.scope !197
  %886 = fmul double %0, %885
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %886, i64 0
  %broadcast.splat37 = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ]
  %887 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.18, i64 %index33
  %888 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.18, i64 %index33
  %889 = getelementptr inbounds nuw i8, ptr %888, i64 160
  %890 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.18, i64 %index33
  %891 = getelementptr inbounds nuw i8, ptr %890, i64 320
  %892 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.18, i64 %index33
  %893 = getelementptr inbounds nuw i8, ptr %892, i64 480
  %894 = load double, ptr %887, align 8, !alias.scope !200
  %895 = load double, ptr %889, align 8, !alias.scope !200
  %896 = insertelement <2 x double> poison, double %894, i64 0
  %897 = insertelement <2 x double> %896, double %895, i64 1
  %898 = load double, ptr %891, align 8, !alias.scope !200
  %899 = load double, ptr %893, align 8, !alias.scope !200
  %900 = insertelement <2 x double> poison, double %898, i64 0
  %901 = insertelement <2 x double> %900, double %899, i64 1
  %902 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index33
  %903 = getelementptr inbounds nuw i8, ptr %902, i64 16
  %wide.load34 = load <2 x double>, ptr %902, align 8, !alias.scope !202, !noalias !204
  %wide.load35 = load <2 x double>, ptr %903, align 8, !alias.scope !202, !noalias !204
  %904 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %897, <2 x double> %wide.load34)
  %905 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %901, <2 x double> %wide.load35)
  store <2 x double> %904, ptr %902, align 8, !alias.scope !202, !noalias !204
  store <2 x double> %905, ptr %903, align 8, !alias.scope !202, !noalias !204
  %index.next38 = add nuw i64 %index33, 4
  %906 = icmp eq i64 %index.next38, %n.vec31
  br i1 %906, label %middle.block39, label %vector.body32, !llvm.loop !205

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %indvars.iv44, %n.vec31
  br i1 %cmp.n40, label %.preheader.19, label %scalar.ph21.preheader

scalar.ph21.preheader:                            ; preds = %vector.memcheck23, %.preheader.18, %middle.block39
  %indvars.iv35.18.ph = phi i64 [ 0, %vector.memcheck23 ], [ 0, %.preheader.18 ], [ %n.vec31, %middle.block39 ]
  %xtraiter707 = and i64 %indvars.iv44, 1
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %scalar.ph21.prol.loopexit, label %scalar.ph21.prol

scalar.ph21.prol:                                 ; preds = %scalar.ph21.preheader
  %907 = load double, ptr %878, align 8
  %908 = fmul double %0, %907
  %gep.18.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.18, i64 %indvars.iv35.18.ph
  %909 = load double, ptr %gep.18.prol, align 8
  %910 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.18.ph
  %911 = load double, ptr %910, align 8
  %912 = tail call double @llvm.fmuladd.f64(double %908, double %909, double %911)
  store double %912, ptr %910, align 8
  %indvars.iv.next36.18.prol = or disjoint i64 %indvars.iv35.18.ph, 1
  br label %scalar.ph21.prol.loopexit

scalar.ph21.prol.loopexit:                        ; preds = %scalar.ph21.prol, %scalar.ph21.preheader
  %indvars.iv35.18.unr = phi i64 [ %indvars.iv35.18.ph, %scalar.ph21.preheader ], [ %indvars.iv.next36.18.prol, %scalar.ph21.prol ]
  %913 = icmp eq i64 %indvars.iv46, %indvars.iv35.18.ph
  br i1 %913, label %.preheader.19, label %scalar.ph21

scalar.ph21:                                      ; preds = %scalar.ph21.prol.loopexit, %scalar.ph21
  %indvars.iv35.18 = phi i64 [ %indvars.iv.next36.18.1, %scalar.ph21 ], [ %indvars.iv35.18.unr, %scalar.ph21.prol.loopexit ]
  %914 = load double, ptr %878, align 8
  %915 = fmul double %0, %914
  %gep.18 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.18, i64 %indvars.iv35.18
  %916 = load double, ptr %gep.18, align 8
  %917 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.18
  %918 = load double, ptr %917, align 8
  %919 = tail call double @llvm.fmuladd.f64(double %915, double %916, double %918)
  store double %919, ptr %917, align 8
  %indvars.iv.next36.18 = add nuw nsw i64 %indvars.iv35.18, 1
  %920 = load double, ptr %878, align 8
  %921 = fmul double %0, %920
  %gep.18.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.18, i64 %indvars.iv.next36.18
  %922 = load double, ptr %gep.18.1, align 8
  %923 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.18
  %924 = load double, ptr %923, align 8
  %925 = tail call double @llvm.fmuladd.f64(double %921, double %922, double %924)
  store double %925, ptr %923, align 8
  %indvars.iv.next36.18.1 = add nuw nsw i64 %indvars.iv35.18, 2
  %exitcond39.18.not.1 = icmp eq i64 %indvars.iv.next36.18.1, %indvars.iv44
  br i1 %exitcond39.18.not.1, label %.preheader.19, label %scalar.ph21, !llvm.loop !206

.preheader.19:                                    ; preds = %scalar.ph21.prol.loopexit, %scalar.ph21, %middle.block39
  %926 = getelementptr inbounds nuw i8, ptr %11, i64 152
  %min.iters.check = icmp samesign ult i64 %indvars.iv44, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.19
  %927 = mul nuw nsw i64 %indvars.iv46, 248
  %928 = getelementptr i8, ptr %2, i64 %927
  %929 = getelementptr i8, ptr %928, i64 8
  %930 = mul nuw nsw i64 %indvars.iv46, 160
  %931 = getelementptr i8, ptr %3, i64 %930
  %932 = getelementptr i8, ptr %931, i64 160
  %bound0 = icmp ult ptr %5, %932
  %bound1 = icmp ult ptr %invariant.gep.19, %929
  %bound06 = icmp ult ptr %5, %scevgep
  %found.conflict669 = or i1 %bound0, %bound06
  %conflict.rdx = and i1 %found.conflict669, %bound1
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv44, 9223372036854775804
  %933 = load double, ptr %926, align 8, !alias.scope !207
  %934 = fmul double %0, %933
  %broadcast.splatinsert = insertelement <2 x double> poison, double %934, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %935 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.19, i64 %index
  %936 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.19, i64 %index
  %937 = getelementptr inbounds nuw i8, ptr %936, i64 160
  %938 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.19, i64 %index
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 320
  %940 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.19, i64 %index
  %941 = getelementptr inbounds nuw i8, ptr %940, i64 480
  %942 = load double, ptr %935, align 8, !alias.scope !210
  %943 = load double, ptr %937, align 8, !alias.scope !210
  %944 = insertelement <2 x double> poison, double %942, i64 0
  %945 = insertelement <2 x double> %944, double %943, i64 1
  %946 = load double, ptr %939, align 8, !alias.scope !210
  %947 = load double, ptr %941, align 8, !alias.scope !210
  %948 = insertelement <2 x double> poison, double %946, i64 0
  %949 = insertelement <2 x double> %948, double %947, i64 1
  %950 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  %951 = getelementptr inbounds nuw i8, ptr %950, i64 16
  %wide.load = load <2 x double>, ptr %950, align 8, !alias.scope !212, !noalias !214
  %wide.load8 = load <2 x double>, ptr %951, align 8, !alias.scope !212, !noalias !214
  %952 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %945, <2 x double> %wide.load)
  %953 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %949, <2 x double> %wide.load8)
  store <2 x double> %952, ptr %950, align 8, !alias.scope !212, !noalias !214
  store <2 x double> %953, ptr %951, align 8, !alias.scope !212, !noalias !214
  %index.next = add nuw i64 %index, 4
  %954 = icmp eq i64 %index.next, %n.vec
  br i1 %954, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv44, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.19, %middle.block
  %indvars.iv35.19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.19 ], [ %n.vec, %middle.block ]
  %xtraiter709 = and i64 %indvars.iv44, 1
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  br i1 %lcmp.mod710.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %955 = load double, ptr %926, align 8
  %956 = fmul double %0, %955
  %gep.19.prol = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.19, i64 %indvars.iv35.19.ph
  %957 = load double, ptr %gep.19.prol, align 8
  %958 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.19.ph
  %959 = load double, ptr %958, align 8
  %960 = tail call double @llvm.fmuladd.f64(double %956, double %957, double %959)
  store double %960, ptr %958, align 8
  %indvars.iv.next36.19.prol = or disjoint i64 %indvars.iv35.19.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv35.19.unr = phi i64 [ %indvars.iv35.19.ph, %scalar.ph.preheader ], [ %indvars.iv.next36.19.prol, %scalar.ph.prol ]
  %961 = icmp eq i64 %indvars.iv46, %indvars.iv35.19.ph
  br i1 %961, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv35.19 = phi i64 [ %indvars.iv.next36.19.1, %scalar.ph ], [ %indvars.iv35.19.unr, %scalar.ph.prol.loopexit ]
  %962 = load double, ptr %926, align 8
  %963 = fmul double %0, %962
  %gep.19 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.19, i64 %indvars.iv35.19
  %964 = load double, ptr %gep.19, align 8
  %965 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.19
  %966 = load double, ptr %965, align 8
  %967 = tail call double @llvm.fmuladd.f64(double %963, double %964, double %966)
  store double %967, ptr %965, align 8
  %indvars.iv.next36.19 = add nuw nsw i64 %indvars.iv35.19, 1
  %968 = load double, ptr %926, align 8
  %969 = fmul double %0, %968
  %gep.19.1 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep.19, i64 %indvars.iv.next36.19
  %970 = load double, ptr %gep.19.1, align 8
  %971 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.19
  %972 = load double, ptr %971, align 8
  %973 = tail call double @llvm.fmuladd.f64(double %969, double %970, double %972)
  store double %973, ptr %971, align 8
  %indvars.iv.next36.19.1 = add nuw nsw i64 %indvars.iv35.19, 2
  %exitcond39.19.not.1 = icmp eq i64 %indvars.iv.next36.19.1, %indvars.iv44
  br i1 %exitcond39.19.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !216

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next47, 30
  br i1 %exitcond51.not, label %974, label %.preheader27, !llvm.loop !217

974:                                              ; preds = %.loopexit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01GFHCPBMG@C?$AA@") #9
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 30
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
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %13)
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %16 = load double, ptr %15, align 8
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %16) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !218

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 30
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !219

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01GFHCPBMG@C?$AA@") #9
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syrk\\syrk.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8, !10, !11, !12}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.vectorize.body", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8, !10, !11, !12}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!21}
!21 = distinct !{!21, !17}
!22 = !{!19, !16}
!23 = distinct !{!23, !8, !10, !11, !12}
!24 = distinct !{!24, !8, !12, !10, !25}
!25 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!26 = distinct !{!26, !8, !10, !25}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!33}
!33 = distinct !{!33, !29}
!34 = !{!31, !28}
!35 = distinct !{!35, !8, !10, !11, !12}
!36 = distinct !{!36, !8, !10, !25}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!43}
!43 = distinct !{!43, !39}
!44 = !{!41, !38}
!45 = distinct !{!45, !8, !10, !11, !12}
!46 = distinct !{!46, !8, !10, !25}
!47 = !{!48}
!48 = distinct !{!48, !49}
!49 = distinct !{!49, i1 false, !"LVerDomain"}
!50 = !{!51}
!51 = distinct !{!51, !49}
!52 = !{!53}
!53 = distinct !{!53, !49}
!54 = !{!51, !48}
!55 = distinct !{!55, !8, !10, !11, !12}
!56 = distinct !{!56, !8, !10, !25}
!57 = !{!58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, i1 false, !"LVerDomain"}
!60 = !{!61}
!61 = distinct !{!61, !59}
!62 = !{!63}
!63 = distinct !{!63, !59}
!64 = !{!61, !58}
!65 = distinct !{!65, !8, !10, !11, !12}
!66 = distinct !{!66, !8, !10, !25}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = !{!71}
!71 = distinct !{!71, !69}
!72 = !{!73}
!73 = distinct !{!73, !69}
!74 = !{!71, !68}
!75 = distinct !{!75, !8, !10, !11, !12}
!76 = distinct !{!76, !8, !10, !25}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, i1 false, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = !{!83}
!83 = distinct !{!83, !79}
!84 = !{!81, !78}
!85 = distinct !{!85, !8, !10, !11, !12}
!86 = distinct !{!86, !8, !10, !25}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, i1 false, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = !{!93}
!93 = distinct !{!93, !89}
!94 = !{!91, !88}
!95 = distinct !{!95, !8, !10, !11, !12}
!96 = distinct !{!96, !8, !10, !25}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, i1 false, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = !{!103}
!103 = distinct !{!103, !99}
!104 = !{!101, !98}
!105 = distinct !{!105, !8, !10, !11, !12}
!106 = distinct !{!106, !8, !10, !25}
!107 = !{!108}
!108 = distinct !{!108, !109}
!109 = distinct !{!109, i1 false, !"LVerDomain"}
!110 = !{!111}
!111 = distinct !{!111, !109}
!112 = !{!113}
!113 = distinct !{!113, !109}
!114 = !{!111, !108}
!115 = distinct !{!115, !8, !10, !11, !12}
!116 = distinct !{!116, !8, !10, !25}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, i1 false, !"LVerDomain"}
!120 = !{!121}
!121 = distinct !{!121, !119}
!122 = !{!123}
!123 = distinct !{!123, !119}
!124 = !{!121, !118}
!125 = distinct !{!125, !8, !10, !11, !12}
!126 = distinct !{!126, !8, !10, !25}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, i1 false, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = !{!133}
!133 = distinct !{!133, !129}
!134 = !{!131, !128}
!135 = distinct !{!135, !8, !10, !11, !12}
!136 = distinct !{!136, !8, !10, !25}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, i1 false, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = !{!143}
!143 = distinct !{!143, !139}
!144 = !{!141, !138}
!145 = distinct !{!145, !8, !10, !11, !12}
!146 = distinct !{!146, !8, !10, !25}
!147 = !{!148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, i1 false, !"LVerDomain"}
!150 = !{!151}
!151 = distinct !{!151, !149}
!152 = !{!153}
!153 = distinct !{!153, !149}
!154 = !{!151, !148}
!155 = distinct !{!155, !8, !10, !11, !12}
!156 = distinct !{!156, !8, !10, !25}
!157 = !{!158}
!158 = distinct !{!158, !159}
!159 = distinct !{!159, i1 false, !"LVerDomain"}
!160 = !{!161}
!161 = distinct !{!161, !159}
!162 = !{!163}
!163 = distinct !{!163, !159}
!164 = !{!161, !158}
!165 = distinct !{!165, !8, !10, !11, !12}
!166 = distinct !{!166, !8, !10, !25}
!167 = !{!168}
!168 = distinct !{!168, !169}
!169 = distinct !{!169, i1 false, !"LVerDomain"}
!170 = !{!171}
!171 = distinct !{!171, !169}
!172 = !{!173}
!173 = distinct !{!173, !169}
!174 = !{!171, !168}
!175 = distinct !{!175, !8, !10, !11, !12}
!176 = distinct !{!176, !8, !10, !25}
!177 = !{!178}
!178 = distinct !{!178, !179}
!179 = distinct !{!179, i1 false, !"LVerDomain"}
!180 = !{!181}
!181 = distinct !{!181, !179}
!182 = !{!183}
!183 = distinct !{!183, !179}
!184 = !{!181, !178}
!185 = distinct !{!185, !8, !10, !11, !12}
!186 = distinct !{!186, !8, !10, !25}
!187 = !{!188}
!188 = distinct !{!188, !189}
!189 = distinct !{!189, i1 false, !"LVerDomain"}
!190 = !{!191}
!191 = distinct !{!191, !189}
!192 = !{!193}
!193 = distinct !{!193, !189}
!194 = !{!191, !188}
!195 = distinct !{!195, !8, !10, !11, !12}
!196 = distinct !{!196, !8, !10, !25}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, i1 false, !"LVerDomain"}
!200 = !{!201}
!201 = distinct !{!201, !199}
!202 = !{!203}
!203 = distinct !{!203, !199}
!204 = !{!201, !198}
!205 = distinct !{!205, !8, !10, !11, !12}
!206 = distinct !{!206, !8, !10, !25}
!207 = !{!208}
!208 = distinct !{!208, !209}
!209 = distinct !{!209, i1 false, !"LVerDomain"}
!210 = !{!211}
!211 = distinct !{!211, !209}
!212 = !{!213}
!213 = distinct !{!213, !209}
!214 = !{!211, !208}
!215 = distinct !{!215, !8, !10, !11, !12}
!216 = distinct !{!216, !8, !10, !25}
!217 = distinct !{!217, !8}
!218 = distinct !{!218, !8}
!219 = distinct !{!219, !8}
