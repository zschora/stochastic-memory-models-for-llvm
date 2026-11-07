; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\mvt\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\mvt\\mvt.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_02JMABBILH@x1?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_02LHCMELHE@x2?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_02JMABBILH@x1?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"x1\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_02LHCMELHE@x2?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"x2\00", comdat, align 4
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #9
  tail call fastcc void @init_array(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %3)
  tail call fastcc void @kernel_mvt(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %3)
  %8 = icmp sgt i32 %0, 42
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %10, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %9
  tail call fastcc void @print_array(ptr noundef %4, ptr noundef %5)
  br label %12

12:                                               ; preds = %11, %9, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %7)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
  br label %vector.ph

vector.ph:                                        ; preds = %5, %middle.block
  %indvars.iv41 = phi i64 [ 0, %5 ], [ %indvars.iv.next42, %middle.block ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv41
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %.not = icmp eq i64 %indvars.iv.next42, 40
  %7 = trunc nuw nsw i64 %indvars.iv41 to i32
  %8 = uitofp nneg i32 %7 to double
  %9 = trunc nuw nsw i64 %indvars.iv.next42 to i32
  %10 = uitofp nneg i32 %9 to double
  %11 = insertelement <2 x double> poison, double %8, i64 0
  %12 = insertelement <2 x double> %11, double %10, i64 1
  %13 = fdiv <2 x double> %12, splat (double 4.000000e+01)
  %14 = extractelement <2 x double> %13, i64 0
  store double %14, ptr %6, align 8
  %15 = extractelement <2 x double> %13, i64 1
  %16 = select i1 %.not, double 0.000000e+00, double %15
  %17 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv41
  store double %16, ptr %17, align 8
  %.cmp = icmp samesign ult i64 %indvars.iv41, 37
  %18 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv41
  %.cmp36 = icmp samesign ult i64 %indvars.iv41, 36
  %.v = select i1 %.cmp, i32 3, i32 -37
  %19 = add nsw i32 %.v, %7
  %20 = uitofp nneg i32 %19 to double
  %.v37 = select i1 %.cmp36, i32 4, i32 -36
  %21 = add nsw i32 %.v37, %7
  %22 = uitofp nneg i32 %21 to double
  %23 = insertelement <2 x double> poison, double %20, i64 0
  %24 = insertelement <2 x double> %23, double %22, i64 1
  %25 = fdiv <2 x double> %24, splat (double 4.000000e+01)
  %26 = extractelement <2 x double> %25, i64 0
  store double %26, ptr %18, align 8
  %27 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv41
  %28 = extractelement <2 x double> %25, i64 1
  store double %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %indvars.iv41
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %30 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %31 = trunc nuw nsw <2 x i64> %30 to <2 x i32>
  %32 = urem <2 x i32> %31, splat (i32 40)
  %33 = uitofp nneg <2 x i32> %32 to <2 x double>
  %34 = fdiv <2 x double> %33, splat (double 4.000000e+01)
  %35 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %index
  store <2 x double> %34, ptr %35, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %36 = icmp eq i64 %index.next, 40
  br i1 %36, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  br i1 %.not, label %37, label %vector.ph, !llvm.loop !12

37:                                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_mvt(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #3 {
vector.memcheck:
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 128
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 136
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 144
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 152
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 168
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 176
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 184
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 192
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 200
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 208
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 216
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 224
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 232
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 240
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 248
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 264
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 272
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 280
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 296
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 312
  %44 = getelementptr i8, ptr %0, i64 320
  %45 = getelementptr i8, ptr %4, i64 12800
  %46 = getelementptr i8, ptr %2, i64 320
  %bound0 = icmp ult ptr %0, %45
  %bound1 = icmp ult ptr %4, %44
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %0, %46
  %bound17 = icmp ult ptr %2, %44
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx = or i1 %found.conflict, %found.conflict8
  br i1 %conflict.rdx, label %.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %47 = load double, ptr %2, align 8, !alias.scope !13
  %broadcast.splatinsert = insertelement <2 x double> poison, double %47, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = load double, ptr %5, align 8, !alias.scope !13
  %broadcast.splatinsert9 = insertelement <2 x double> poison, double %48, i64 0
  %broadcast.splat10 = shufflevector <2 x double> %broadcast.splatinsert9, <2 x double> poison, <2 x i32> zeroinitializer
  %49 = load double, ptr %6, align 8, !alias.scope !13
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %49, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = load double, ptr %7, align 8, !alias.scope !13
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %50, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = load double, ptr %8, align 8, !alias.scope !13
  %broadcast.splatinsert15 = insertelement <2 x double> poison, double %51, i64 0
  %broadcast.splat16 = shufflevector <2 x double> %broadcast.splatinsert15, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = load double, ptr %9, align 8, !alias.scope !13
  %broadcast.splatinsert17 = insertelement <2 x double> poison, double %52, i64 0
  %broadcast.splat18 = shufflevector <2 x double> %broadcast.splatinsert17, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = load double, ptr %10, align 8, !alias.scope !13
  %broadcast.splatinsert19 = insertelement <2 x double> poison, double %53, i64 0
  %broadcast.splat20 = shufflevector <2 x double> %broadcast.splatinsert19, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = load double, ptr %11, align 8, !alias.scope !13
  %broadcast.splatinsert21 = insertelement <2 x double> poison, double %54, i64 0
  %broadcast.splat22 = shufflevector <2 x double> %broadcast.splatinsert21, <2 x double> poison, <2 x i32> zeroinitializer
  %55 = load double, ptr %12, align 8, !alias.scope !13
  %broadcast.splatinsert23 = insertelement <2 x double> poison, double %55, i64 0
  %broadcast.splat24 = shufflevector <2 x double> %broadcast.splatinsert23, <2 x double> poison, <2 x i32> zeroinitializer
  %56 = load double, ptr %13, align 8, !alias.scope !13
  %broadcast.splatinsert25 = insertelement <2 x double> poison, double %56, i64 0
  %broadcast.splat26 = shufflevector <2 x double> %broadcast.splatinsert25, <2 x double> poison, <2 x i32> zeroinitializer
  %57 = load double, ptr %14, align 8, !alias.scope !13
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %57, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer
  %58 = load double, ptr %15, align 8, !alias.scope !13
  %broadcast.splatinsert29 = insertelement <2 x double> poison, double %58, i64 0
  %broadcast.splat30 = shufflevector <2 x double> %broadcast.splatinsert29, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = load double, ptr %16, align 8, !alias.scope !13
  %broadcast.splatinsert31 = insertelement <2 x double> poison, double %59, i64 0
  %broadcast.splat32 = shufflevector <2 x double> %broadcast.splatinsert31, <2 x double> poison, <2 x i32> zeroinitializer
  %60 = load double, ptr %17, align 8, !alias.scope !13
  %broadcast.splatinsert33 = insertelement <2 x double> poison, double %60, i64 0
  %broadcast.splat34 = shufflevector <2 x double> %broadcast.splatinsert33, <2 x double> poison, <2 x i32> zeroinitializer
  %61 = load double, ptr %18, align 8, !alias.scope !13
  %broadcast.splatinsert35 = insertelement <2 x double> poison, double %61, i64 0
  %broadcast.splat36 = shufflevector <2 x double> %broadcast.splatinsert35, <2 x double> poison, <2 x i32> zeroinitializer
  %62 = load double, ptr %19, align 8, !alias.scope !13
  %broadcast.splatinsert37 = insertelement <2 x double> poison, double %62, i64 0
  %broadcast.splat38 = shufflevector <2 x double> %broadcast.splatinsert37, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = load double, ptr %20, align 8, !alias.scope !13
  %broadcast.splatinsert39 = insertelement <2 x double> poison, double %63, i64 0
  %broadcast.splat40 = shufflevector <2 x double> %broadcast.splatinsert39, <2 x double> poison, <2 x i32> zeroinitializer
  %64 = load double, ptr %21, align 8, !alias.scope !13
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %64, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer
  %65 = load double, ptr %22, align 8, !alias.scope !13
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %65, i64 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer
  %66 = load double, ptr %23, align 8, !alias.scope !13
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %66, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  %67 = load double, ptr %24, align 8, !alias.scope !13
  %broadcast.splatinsert47 = insertelement <2 x double> poison, double %67, i64 0
  %broadcast.splat48 = shufflevector <2 x double> %broadcast.splatinsert47, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = load double, ptr %25, align 8, !alias.scope !13
  %broadcast.splatinsert49 = insertelement <2 x double> poison, double %68, i64 0
  %broadcast.splat50 = shufflevector <2 x double> %broadcast.splatinsert49, <2 x double> poison, <2 x i32> zeroinitializer
  %69 = load double, ptr %26, align 8, !alias.scope !13
  %broadcast.splatinsert51 = insertelement <2 x double> poison, double %69, i64 0
  %broadcast.splat52 = shufflevector <2 x double> %broadcast.splatinsert51, <2 x double> poison, <2 x i32> zeroinitializer
  %70 = load double, ptr %27, align 8, !alias.scope !13
  %broadcast.splatinsert53 = insertelement <2 x double> poison, double %70, i64 0
  %broadcast.splat54 = shufflevector <2 x double> %broadcast.splatinsert53, <2 x double> poison, <2 x i32> zeroinitializer
  %71 = load double, ptr %28, align 8, !alias.scope !13
  %broadcast.splatinsert55 = insertelement <2 x double> poison, double %71, i64 0
  %broadcast.splat56 = shufflevector <2 x double> %broadcast.splatinsert55, <2 x double> poison, <2 x i32> zeroinitializer
  %72 = load double, ptr %29, align 8, !alias.scope !13
  %broadcast.splatinsert57 = insertelement <2 x double> poison, double %72, i64 0
  %broadcast.splat58 = shufflevector <2 x double> %broadcast.splatinsert57, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = load double, ptr %30, align 8, !alias.scope !13
  %broadcast.splatinsert59 = insertelement <2 x double> poison, double %73, i64 0
  %broadcast.splat60 = shufflevector <2 x double> %broadcast.splatinsert59, <2 x double> poison, <2 x i32> zeroinitializer
  %74 = load double, ptr %31, align 8, !alias.scope !13
  %broadcast.splatinsert61 = insertelement <2 x double> poison, double %74, i64 0
  %broadcast.splat62 = shufflevector <2 x double> %broadcast.splatinsert61, <2 x double> poison, <2 x i32> zeroinitializer
  %75 = load double, ptr %32, align 8, !alias.scope !13
  %broadcast.splatinsert63 = insertelement <2 x double> poison, double %75, i64 0
  %broadcast.splat64 = shufflevector <2 x double> %broadcast.splatinsert63, <2 x double> poison, <2 x i32> zeroinitializer
  %76 = load double, ptr %33, align 8, !alias.scope !13
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %76, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = load double, ptr %34, align 8, !alias.scope !13
  %broadcast.splatinsert67 = insertelement <2 x double> poison, double %77, i64 0
  %broadcast.splat68 = shufflevector <2 x double> %broadcast.splatinsert67, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = load double, ptr %35, align 8, !alias.scope !13
  %broadcast.splatinsert69 = insertelement <2 x double> poison, double %78, i64 0
  %broadcast.splat70 = shufflevector <2 x double> %broadcast.splatinsert69, <2 x double> poison, <2 x i32> zeroinitializer
  %79 = load double, ptr %36, align 8, !alias.scope !13
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %79, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer
  %80 = load double, ptr %37, align 8, !alias.scope !13
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %80, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  %81 = load double, ptr %38, align 8, !alias.scope !13
  %broadcast.splatinsert75 = insertelement <2 x double> poison, double %81, i64 0
  %broadcast.splat76 = shufflevector <2 x double> %broadcast.splatinsert75, <2 x double> poison, <2 x i32> zeroinitializer
  %82 = load double, ptr %39, align 8, !alias.scope !13
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %82, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  %83 = load double, ptr %40, align 8, !alias.scope !13
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %83, i64 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer
  %84 = load double, ptr %41, align 8, !alias.scope !13
  %broadcast.splatinsert81 = insertelement <2 x double> poison, double %84, i64 0
  %broadcast.splat82 = shufflevector <2 x double> %broadcast.splatinsert81, <2 x double> poison, <2 x i32> zeroinitializer
  %85 = load double, ptr %42, align 8, !alias.scope !13
  %broadcast.splatinsert83 = insertelement <2 x double> poison, double %85, i64 0
  %broadcast.splat84 = shufflevector <2 x double> %broadcast.splatinsert83, <2 x double> poison, <2 x i32> zeroinitializer
  %86 = load double, ptr %43, align 8, !alias.scope !13
  %broadcast.splatinsert85 = insertelement <2 x double> poison, double %86, i64 0
  %broadcast.splat86 = shufflevector <2 x double> %broadcast.splatinsert85, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %87 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %88 = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %index
  %89 = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %index
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 320
  %wide.load = load <2 x double>, ptr %87, align 8, !alias.scope !16, !noalias !18
  %91 = load double, ptr %88, align 8, !alias.scope !20
  %92 = load double, ptr %90, align 8, !alias.scope !20
  %93 = insertelement <2 x double> poison, double %91, i64 0
  %94 = insertelement <2 x double> %93, double %92, i64 1
  %95 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> %broadcast.splat, <2 x double> %wide.load)
  store <2 x double> %95, ptr %87, align 8, !alias.scope !16, !noalias !18
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %97 = getelementptr inbounds nuw i8, ptr %89, i64 328
  %98 = load double, ptr %96, align 8, !alias.scope !20
  %99 = load double, ptr %97, align 8, !alias.scope !20
  %100 = insertelement <2 x double> poison, double %98, i64 0
  %101 = insertelement <2 x double> %100, double %99, i64 1
  %102 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %101, <2 x double> %broadcast.splat10, <2 x double> %95)
  store <2 x double> %102, ptr %87, align 8, !alias.scope !16, !noalias !18
  %103 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %104 = getelementptr inbounds nuw i8, ptr %89, i64 336
  %105 = load double, ptr %103, align 8, !alias.scope !20
  %106 = load double, ptr %104, align 8, !alias.scope !20
  %107 = insertelement <2 x double> poison, double %105, i64 0
  %108 = insertelement <2 x double> %107, double %106, i64 1
  %109 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %108, <2 x double> %broadcast.splat12, <2 x double> %102)
  store <2 x double> %109, ptr %87, align 8, !alias.scope !16, !noalias !18
  %110 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %111 = getelementptr inbounds nuw i8, ptr %89, i64 344
  %112 = load double, ptr %110, align 8, !alias.scope !20
  %113 = load double, ptr %111, align 8, !alias.scope !20
  %114 = insertelement <2 x double> poison, double %112, i64 0
  %115 = insertelement <2 x double> %114, double %113, i64 1
  %116 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %115, <2 x double> %broadcast.splat14, <2 x double> %109)
  store <2 x double> %116, ptr %87, align 8, !alias.scope !16, !noalias !18
  %117 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %118 = getelementptr inbounds nuw i8, ptr %89, i64 352
  %119 = load double, ptr %117, align 8, !alias.scope !20
  %120 = load double, ptr %118, align 8, !alias.scope !20
  %121 = insertelement <2 x double> poison, double %119, i64 0
  %122 = insertelement <2 x double> %121, double %120, i64 1
  %123 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %122, <2 x double> %broadcast.splat16, <2 x double> %116)
  store <2 x double> %123, ptr %87, align 8, !alias.scope !16, !noalias !18
  %124 = getelementptr inbounds nuw i8, ptr %88, i64 40
  %125 = getelementptr inbounds nuw i8, ptr %89, i64 360
  %126 = load double, ptr %124, align 8, !alias.scope !20
  %127 = load double, ptr %125, align 8, !alias.scope !20
  %128 = insertelement <2 x double> poison, double %126, i64 0
  %129 = insertelement <2 x double> %128, double %127, i64 1
  %130 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %129, <2 x double> %broadcast.splat18, <2 x double> %123)
  store <2 x double> %130, ptr %87, align 8, !alias.scope !16, !noalias !18
  %131 = getelementptr inbounds nuw i8, ptr %88, i64 48
  %132 = getelementptr inbounds nuw i8, ptr %89, i64 368
  %133 = load double, ptr %131, align 8, !alias.scope !20
  %134 = load double, ptr %132, align 8, !alias.scope !20
  %135 = insertelement <2 x double> poison, double %133, i64 0
  %136 = insertelement <2 x double> %135, double %134, i64 1
  %137 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %136, <2 x double> %broadcast.splat20, <2 x double> %130)
  store <2 x double> %137, ptr %87, align 8, !alias.scope !16, !noalias !18
  %138 = getelementptr inbounds nuw i8, ptr %88, i64 56
  %139 = getelementptr inbounds nuw i8, ptr %89, i64 376
  %140 = load double, ptr %138, align 8, !alias.scope !20
  %141 = load double, ptr %139, align 8, !alias.scope !20
  %142 = insertelement <2 x double> poison, double %140, i64 0
  %143 = insertelement <2 x double> %142, double %141, i64 1
  %144 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %143, <2 x double> %broadcast.splat22, <2 x double> %137)
  store <2 x double> %144, ptr %87, align 8, !alias.scope !16, !noalias !18
  %145 = getelementptr inbounds nuw i8, ptr %88, i64 64
  %146 = getelementptr inbounds nuw i8, ptr %89, i64 384
  %147 = load double, ptr %145, align 8, !alias.scope !20
  %148 = load double, ptr %146, align 8, !alias.scope !20
  %149 = insertelement <2 x double> poison, double %147, i64 0
  %150 = insertelement <2 x double> %149, double %148, i64 1
  %151 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %150, <2 x double> %broadcast.splat24, <2 x double> %144)
  store <2 x double> %151, ptr %87, align 8, !alias.scope !16, !noalias !18
  %152 = getelementptr inbounds nuw i8, ptr %88, i64 72
  %153 = getelementptr inbounds nuw i8, ptr %89, i64 392
  %154 = load double, ptr %152, align 8, !alias.scope !20
  %155 = load double, ptr %153, align 8, !alias.scope !20
  %156 = insertelement <2 x double> poison, double %154, i64 0
  %157 = insertelement <2 x double> %156, double %155, i64 1
  %158 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %157, <2 x double> %broadcast.splat26, <2 x double> %151)
  store <2 x double> %158, ptr %87, align 8, !alias.scope !16, !noalias !18
  %159 = getelementptr inbounds nuw i8, ptr %88, i64 80
  %160 = getelementptr inbounds nuw i8, ptr %89, i64 400
  %161 = load double, ptr %159, align 8, !alias.scope !20
  %162 = load double, ptr %160, align 8, !alias.scope !20
  %163 = insertelement <2 x double> poison, double %161, i64 0
  %164 = insertelement <2 x double> %163, double %162, i64 1
  %165 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %164, <2 x double> %broadcast.splat28, <2 x double> %158)
  store <2 x double> %165, ptr %87, align 8, !alias.scope !16, !noalias !18
  %166 = getelementptr inbounds nuw i8, ptr %88, i64 88
  %167 = getelementptr inbounds nuw i8, ptr %89, i64 408
  %168 = load double, ptr %166, align 8, !alias.scope !20
  %169 = load double, ptr %167, align 8, !alias.scope !20
  %170 = insertelement <2 x double> poison, double %168, i64 0
  %171 = insertelement <2 x double> %170, double %169, i64 1
  %172 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %171, <2 x double> %broadcast.splat30, <2 x double> %165)
  store <2 x double> %172, ptr %87, align 8, !alias.scope !16, !noalias !18
  %173 = getelementptr inbounds nuw i8, ptr %88, i64 96
  %174 = getelementptr inbounds nuw i8, ptr %89, i64 416
  %175 = load double, ptr %173, align 8, !alias.scope !20
  %176 = load double, ptr %174, align 8, !alias.scope !20
  %177 = insertelement <2 x double> poison, double %175, i64 0
  %178 = insertelement <2 x double> %177, double %176, i64 1
  %179 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %178, <2 x double> %broadcast.splat32, <2 x double> %172)
  store <2 x double> %179, ptr %87, align 8, !alias.scope !16, !noalias !18
  %180 = getelementptr inbounds nuw i8, ptr %88, i64 104
  %181 = getelementptr inbounds nuw i8, ptr %89, i64 424
  %182 = load double, ptr %180, align 8, !alias.scope !20
  %183 = load double, ptr %181, align 8, !alias.scope !20
  %184 = insertelement <2 x double> poison, double %182, i64 0
  %185 = insertelement <2 x double> %184, double %183, i64 1
  %186 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %185, <2 x double> %broadcast.splat34, <2 x double> %179)
  store <2 x double> %186, ptr %87, align 8, !alias.scope !16, !noalias !18
  %187 = getelementptr inbounds nuw i8, ptr %88, i64 112
  %188 = getelementptr inbounds nuw i8, ptr %89, i64 432
  %189 = load double, ptr %187, align 8, !alias.scope !20
  %190 = load double, ptr %188, align 8, !alias.scope !20
  %191 = insertelement <2 x double> poison, double %189, i64 0
  %192 = insertelement <2 x double> %191, double %190, i64 1
  %193 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %192, <2 x double> %broadcast.splat36, <2 x double> %186)
  store <2 x double> %193, ptr %87, align 8, !alias.scope !16, !noalias !18
  %194 = getelementptr inbounds nuw i8, ptr %88, i64 120
  %195 = getelementptr inbounds nuw i8, ptr %89, i64 440
  %196 = load double, ptr %194, align 8, !alias.scope !20
  %197 = load double, ptr %195, align 8, !alias.scope !20
  %198 = insertelement <2 x double> poison, double %196, i64 0
  %199 = insertelement <2 x double> %198, double %197, i64 1
  %200 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %199, <2 x double> %broadcast.splat38, <2 x double> %193)
  store <2 x double> %200, ptr %87, align 8, !alias.scope !16, !noalias !18
  %201 = getelementptr inbounds nuw i8, ptr %88, i64 128
  %202 = getelementptr inbounds nuw i8, ptr %89, i64 448
  %203 = load double, ptr %201, align 8, !alias.scope !20
  %204 = load double, ptr %202, align 8, !alias.scope !20
  %205 = insertelement <2 x double> poison, double %203, i64 0
  %206 = insertelement <2 x double> %205, double %204, i64 1
  %207 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %206, <2 x double> %broadcast.splat40, <2 x double> %200)
  store <2 x double> %207, ptr %87, align 8, !alias.scope !16, !noalias !18
  %208 = getelementptr inbounds nuw i8, ptr %88, i64 136
  %209 = getelementptr inbounds nuw i8, ptr %89, i64 456
  %210 = load double, ptr %208, align 8, !alias.scope !20
  %211 = load double, ptr %209, align 8, !alias.scope !20
  %212 = insertelement <2 x double> poison, double %210, i64 0
  %213 = insertelement <2 x double> %212, double %211, i64 1
  %214 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %213, <2 x double> %broadcast.splat42, <2 x double> %207)
  store <2 x double> %214, ptr %87, align 8, !alias.scope !16, !noalias !18
  %215 = getelementptr inbounds nuw i8, ptr %88, i64 144
  %216 = getelementptr inbounds nuw i8, ptr %89, i64 464
  %217 = load double, ptr %215, align 8, !alias.scope !20
  %218 = load double, ptr %216, align 8, !alias.scope !20
  %219 = insertelement <2 x double> poison, double %217, i64 0
  %220 = insertelement <2 x double> %219, double %218, i64 1
  %221 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %220, <2 x double> %broadcast.splat44, <2 x double> %214)
  store <2 x double> %221, ptr %87, align 8, !alias.scope !16, !noalias !18
  %222 = getelementptr inbounds nuw i8, ptr %88, i64 152
  %223 = getelementptr inbounds nuw i8, ptr %89, i64 472
  %224 = load double, ptr %222, align 8, !alias.scope !20
  %225 = load double, ptr %223, align 8, !alias.scope !20
  %226 = insertelement <2 x double> poison, double %224, i64 0
  %227 = insertelement <2 x double> %226, double %225, i64 1
  %228 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %227, <2 x double> %broadcast.splat46, <2 x double> %221)
  store <2 x double> %228, ptr %87, align 8, !alias.scope !16, !noalias !18
  %229 = getelementptr inbounds nuw i8, ptr %88, i64 160
  %230 = getelementptr inbounds nuw i8, ptr %89, i64 480
  %231 = load double, ptr %229, align 8, !alias.scope !20
  %232 = load double, ptr %230, align 8, !alias.scope !20
  %233 = insertelement <2 x double> poison, double %231, i64 0
  %234 = insertelement <2 x double> %233, double %232, i64 1
  %235 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %234, <2 x double> %broadcast.splat48, <2 x double> %228)
  store <2 x double> %235, ptr %87, align 8, !alias.scope !16, !noalias !18
  %236 = getelementptr inbounds nuw i8, ptr %88, i64 168
  %237 = getelementptr inbounds nuw i8, ptr %89, i64 488
  %238 = load double, ptr %236, align 8, !alias.scope !20
  %239 = load double, ptr %237, align 8, !alias.scope !20
  %240 = insertelement <2 x double> poison, double %238, i64 0
  %241 = insertelement <2 x double> %240, double %239, i64 1
  %242 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %241, <2 x double> %broadcast.splat50, <2 x double> %235)
  store <2 x double> %242, ptr %87, align 8, !alias.scope !16, !noalias !18
  %243 = getelementptr inbounds nuw i8, ptr %88, i64 176
  %244 = getelementptr inbounds nuw i8, ptr %89, i64 496
  %245 = load double, ptr %243, align 8, !alias.scope !20
  %246 = load double, ptr %244, align 8, !alias.scope !20
  %247 = insertelement <2 x double> poison, double %245, i64 0
  %248 = insertelement <2 x double> %247, double %246, i64 1
  %249 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %248, <2 x double> %broadcast.splat52, <2 x double> %242)
  store <2 x double> %249, ptr %87, align 8, !alias.scope !16, !noalias !18
  %250 = getelementptr inbounds nuw i8, ptr %88, i64 184
  %251 = getelementptr inbounds nuw i8, ptr %89, i64 504
  %252 = load double, ptr %250, align 8, !alias.scope !20
  %253 = load double, ptr %251, align 8, !alias.scope !20
  %254 = insertelement <2 x double> poison, double %252, i64 0
  %255 = insertelement <2 x double> %254, double %253, i64 1
  %256 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %255, <2 x double> %broadcast.splat54, <2 x double> %249)
  store <2 x double> %256, ptr %87, align 8, !alias.scope !16, !noalias !18
  %257 = getelementptr inbounds nuw i8, ptr %88, i64 192
  %258 = getelementptr inbounds nuw i8, ptr %89, i64 512
  %259 = load double, ptr %257, align 8, !alias.scope !20
  %260 = load double, ptr %258, align 8, !alias.scope !20
  %261 = insertelement <2 x double> poison, double %259, i64 0
  %262 = insertelement <2 x double> %261, double %260, i64 1
  %263 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %262, <2 x double> %broadcast.splat56, <2 x double> %256)
  store <2 x double> %263, ptr %87, align 8, !alias.scope !16, !noalias !18
  %264 = getelementptr inbounds nuw i8, ptr %88, i64 200
  %265 = getelementptr inbounds nuw i8, ptr %89, i64 520
  %266 = load double, ptr %264, align 8, !alias.scope !20
  %267 = load double, ptr %265, align 8, !alias.scope !20
  %268 = insertelement <2 x double> poison, double %266, i64 0
  %269 = insertelement <2 x double> %268, double %267, i64 1
  %270 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %269, <2 x double> %broadcast.splat58, <2 x double> %263)
  store <2 x double> %270, ptr %87, align 8, !alias.scope !16, !noalias !18
  %271 = getelementptr inbounds nuw i8, ptr %88, i64 208
  %272 = getelementptr inbounds nuw i8, ptr %89, i64 528
  %273 = load double, ptr %271, align 8, !alias.scope !20
  %274 = load double, ptr %272, align 8, !alias.scope !20
  %275 = insertelement <2 x double> poison, double %273, i64 0
  %276 = insertelement <2 x double> %275, double %274, i64 1
  %277 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %276, <2 x double> %broadcast.splat60, <2 x double> %270)
  store <2 x double> %277, ptr %87, align 8, !alias.scope !16, !noalias !18
  %278 = getelementptr inbounds nuw i8, ptr %88, i64 216
  %279 = getelementptr inbounds nuw i8, ptr %89, i64 536
  %280 = load double, ptr %278, align 8, !alias.scope !20
  %281 = load double, ptr %279, align 8, !alias.scope !20
  %282 = insertelement <2 x double> poison, double %280, i64 0
  %283 = insertelement <2 x double> %282, double %281, i64 1
  %284 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %283, <2 x double> %broadcast.splat62, <2 x double> %277)
  store <2 x double> %284, ptr %87, align 8, !alias.scope !16, !noalias !18
  %285 = getelementptr inbounds nuw i8, ptr %88, i64 224
  %286 = getelementptr inbounds nuw i8, ptr %89, i64 544
  %287 = load double, ptr %285, align 8, !alias.scope !20
  %288 = load double, ptr %286, align 8, !alias.scope !20
  %289 = insertelement <2 x double> poison, double %287, i64 0
  %290 = insertelement <2 x double> %289, double %288, i64 1
  %291 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %290, <2 x double> %broadcast.splat64, <2 x double> %284)
  store <2 x double> %291, ptr %87, align 8, !alias.scope !16, !noalias !18
  %292 = getelementptr inbounds nuw i8, ptr %88, i64 232
  %293 = getelementptr inbounds nuw i8, ptr %89, i64 552
  %294 = load double, ptr %292, align 8, !alias.scope !20
  %295 = load double, ptr %293, align 8, !alias.scope !20
  %296 = insertelement <2 x double> poison, double %294, i64 0
  %297 = insertelement <2 x double> %296, double %295, i64 1
  %298 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %297, <2 x double> %broadcast.splat66, <2 x double> %291)
  store <2 x double> %298, ptr %87, align 8, !alias.scope !16, !noalias !18
  %299 = getelementptr inbounds nuw i8, ptr %88, i64 240
  %300 = getelementptr inbounds nuw i8, ptr %89, i64 560
  %301 = load double, ptr %299, align 8, !alias.scope !20
  %302 = load double, ptr %300, align 8, !alias.scope !20
  %303 = insertelement <2 x double> poison, double %301, i64 0
  %304 = insertelement <2 x double> %303, double %302, i64 1
  %305 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %304, <2 x double> %broadcast.splat68, <2 x double> %298)
  store <2 x double> %305, ptr %87, align 8, !alias.scope !16, !noalias !18
  %306 = getelementptr inbounds nuw i8, ptr %88, i64 248
  %307 = getelementptr inbounds nuw i8, ptr %89, i64 568
  %308 = load double, ptr %306, align 8, !alias.scope !20
  %309 = load double, ptr %307, align 8, !alias.scope !20
  %310 = insertelement <2 x double> poison, double %308, i64 0
  %311 = insertelement <2 x double> %310, double %309, i64 1
  %312 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %311, <2 x double> %broadcast.splat70, <2 x double> %305)
  store <2 x double> %312, ptr %87, align 8, !alias.scope !16, !noalias !18
  %313 = getelementptr inbounds nuw i8, ptr %88, i64 256
  %314 = getelementptr inbounds nuw i8, ptr %89, i64 576
  %315 = load double, ptr %313, align 8, !alias.scope !20
  %316 = load double, ptr %314, align 8, !alias.scope !20
  %317 = insertelement <2 x double> poison, double %315, i64 0
  %318 = insertelement <2 x double> %317, double %316, i64 1
  %319 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %318, <2 x double> %broadcast.splat72, <2 x double> %312)
  store <2 x double> %319, ptr %87, align 8, !alias.scope !16, !noalias !18
  %320 = getelementptr inbounds nuw i8, ptr %88, i64 264
  %321 = getelementptr inbounds nuw i8, ptr %89, i64 584
  %322 = load double, ptr %320, align 8, !alias.scope !20
  %323 = load double, ptr %321, align 8, !alias.scope !20
  %324 = insertelement <2 x double> poison, double %322, i64 0
  %325 = insertelement <2 x double> %324, double %323, i64 1
  %326 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %325, <2 x double> %broadcast.splat74, <2 x double> %319)
  store <2 x double> %326, ptr %87, align 8, !alias.scope !16, !noalias !18
  %327 = getelementptr inbounds nuw i8, ptr %88, i64 272
  %328 = getelementptr inbounds nuw i8, ptr %89, i64 592
  %329 = load double, ptr %327, align 8, !alias.scope !20
  %330 = load double, ptr %328, align 8, !alias.scope !20
  %331 = insertelement <2 x double> poison, double %329, i64 0
  %332 = insertelement <2 x double> %331, double %330, i64 1
  %333 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %332, <2 x double> %broadcast.splat76, <2 x double> %326)
  store <2 x double> %333, ptr %87, align 8, !alias.scope !16, !noalias !18
  %334 = getelementptr inbounds nuw i8, ptr %88, i64 280
  %335 = getelementptr inbounds nuw i8, ptr %89, i64 600
  %336 = load double, ptr %334, align 8, !alias.scope !20
  %337 = load double, ptr %335, align 8, !alias.scope !20
  %338 = insertelement <2 x double> poison, double %336, i64 0
  %339 = insertelement <2 x double> %338, double %337, i64 1
  %340 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %339, <2 x double> %broadcast.splat78, <2 x double> %333)
  store <2 x double> %340, ptr %87, align 8, !alias.scope !16, !noalias !18
  %341 = getelementptr inbounds nuw i8, ptr %88, i64 288
  %342 = getelementptr inbounds nuw i8, ptr %89, i64 608
  %343 = load double, ptr %341, align 8, !alias.scope !20
  %344 = load double, ptr %342, align 8, !alias.scope !20
  %345 = insertelement <2 x double> poison, double %343, i64 0
  %346 = insertelement <2 x double> %345, double %344, i64 1
  %347 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %346, <2 x double> %broadcast.splat80, <2 x double> %340)
  store <2 x double> %347, ptr %87, align 8, !alias.scope !16, !noalias !18
  %348 = getelementptr inbounds nuw i8, ptr %88, i64 296
  %349 = getelementptr inbounds nuw i8, ptr %89, i64 616
  %350 = load double, ptr %348, align 8, !alias.scope !20
  %351 = load double, ptr %349, align 8, !alias.scope !20
  %352 = insertelement <2 x double> poison, double %350, i64 0
  %353 = insertelement <2 x double> %352, double %351, i64 1
  %354 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %353, <2 x double> %broadcast.splat82, <2 x double> %347)
  store <2 x double> %354, ptr %87, align 8, !alias.scope !16, !noalias !18
  %355 = getelementptr inbounds nuw i8, ptr %88, i64 304
  %356 = getelementptr inbounds nuw i8, ptr %89, i64 624
  %357 = load double, ptr %355, align 8, !alias.scope !20
  %358 = load double, ptr %356, align 8, !alias.scope !20
  %359 = insertelement <2 x double> poison, double %357, i64 0
  %360 = insertelement <2 x double> %359, double %358, i64 1
  %361 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %360, <2 x double> %broadcast.splat84, <2 x double> %354)
  store <2 x double> %361, ptr %87, align 8, !alias.scope !16, !noalias !18
  %362 = getelementptr inbounds nuw i8, ptr %88, i64 312
  %363 = getelementptr inbounds nuw i8, ptr %89, i64 632
  %364 = load double, ptr %362, align 8, !alias.scope !20
  %365 = load double, ptr %363, align 8, !alias.scope !20
  %366 = insertelement <2 x double> poison, double %364, i64 0
  %367 = insertelement <2 x double> %366, double %365, i64 1
  %368 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %367, <2 x double> %broadcast.splat86, <2 x double> %361)
  store <2 x double> %368, ptr %87, align 8, !alias.scope !16, !noalias !18
  %index.next = add nuw i64 %index, 2
  %369 = icmp eq i64 %index.next, 40
  br i1 %369, label %.preheader.preheader, label %vector.body, !llvm.loop !21

.preheader28:                                     ; preds = %vector.memcheck, %.preheader28
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader28 ], [ 0, %vector.memcheck ]
  %370 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %371 = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %indvars.iv
  %.promoted = load double, ptr %370, align 8
  %372 = load double, ptr %371, align 8
  %373 = load double, ptr %2, align 8
  %374 = tail call double @llvm.fmuladd.f64(double %372, double %373, double %.promoted)
  store double %374, ptr %370, align 8
  %375 = getelementptr inbounds nuw i8, ptr %371, i64 8
  %376 = load double, ptr %375, align 8
  %377 = load double, ptr %5, align 8
  %378 = tail call double @llvm.fmuladd.f64(double %376, double %377, double %374)
  store double %378, ptr %370, align 8
  %379 = getelementptr inbounds nuw i8, ptr %371, i64 16
  %380 = load double, ptr %379, align 8
  %381 = load double, ptr %6, align 8
  %382 = tail call double @llvm.fmuladd.f64(double %380, double %381, double %378)
  store double %382, ptr %370, align 8
  %383 = getelementptr inbounds nuw i8, ptr %371, i64 24
  %384 = load double, ptr %383, align 8
  %385 = load double, ptr %7, align 8
  %386 = tail call double @llvm.fmuladd.f64(double %384, double %385, double %382)
  store double %386, ptr %370, align 8
  %387 = getelementptr inbounds nuw i8, ptr %371, i64 32
  %388 = load double, ptr %387, align 8
  %389 = load double, ptr %8, align 8
  %390 = tail call double @llvm.fmuladd.f64(double %388, double %389, double %386)
  store double %390, ptr %370, align 8
  %391 = getelementptr inbounds nuw i8, ptr %371, i64 40
  %392 = load double, ptr %391, align 8
  %393 = load double, ptr %9, align 8
  %394 = tail call double @llvm.fmuladd.f64(double %392, double %393, double %390)
  store double %394, ptr %370, align 8
  %395 = getelementptr inbounds nuw i8, ptr %371, i64 48
  %396 = load double, ptr %395, align 8
  %397 = load double, ptr %10, align 8
  %398 = tail call double @llvm.fmuladd.f64(double %396, double %397, double %394)
  store double %398, ptr %370, align 8
  %399 = getelementptr inbounds nuw i8, ptr %371, i64 56
  %400 = load double, ptr %399, align 8
  %401 = load double, ptr %11, align 8
  %402 = tail call double @llvm.fmuladd.f64(double %400, double %401, double %398)
  store double %402, ptr %370, align 8
  %403 = getelementptr inbounds nuw i8, ptr %371, i64 64
  %404 = load double, ptr %403, align 8
  %405 = load double, ptr %12, align 8
  %406 = tail call double @llvm.fmuladd.f64(double %404, double %405, double %402)
  store double %406, ptr %370, align 8
  %407 = getelementptr inbounds nuw i8, ptr %371, i64 72
  %408 = load double, ptr %407, align 8
  %409 = load double, ptr %13, align 8
  %410 = tail call double @llvm.fmuladd.f64(double %408, double %409, double %406)
  store double %410, ptr %370, align 8
  %411 = getelementptr inbounds nuw i8, ptr %371, i64 80
  %412 = load double, ptr %411, align 8
  %413 = load double, ptr %14, align 8
  %414 = tail call double @llvm.fmuladd.f64(double %412, double %413, double %410)
  store double %414, ptr %370, align 8
  %415 = getelementptr inbounds nuw i8, ptr %371, i64 88
  %416 = load double, ptr %415, align 8
  %417 = load double, ptr %15, align 8
  %418 = tail call double @llvm.fmuladd.f64(double %416, double %417, double %414)
  store double %418, ptr %370, align 8
  %419 = getelementptr inbounds nuw i8, ptr %371, i64 96
  %420 = load double, ptr %419, align 8
  %421 = load double, ptr %16, align 8
  %422 = tail call double @llvm.fmuladd.f64(double %420, double %421, double %418)
  store double %422, ptr %370, align 8
  %423 = getelementptr inbounds nuw i8, ptr %371, i64 104
  %424 = load double, ptr %423, align 8
  %425 = load double, ptr %17, align 8
  %426 = tail call double @llvm.fmuladd.f64(double %424, double %425, double %422)
  store double %426, ptr %370, align 8
  %427 = getelementptr inbounds nuw i8, ptr %371, i64 112
  %428 = load double, ptr %427, align 8
  %429 = load double, ptr %18, align 8
  %430 = tail call double @llvm.fmuladd.f64(double %428, double %429, double %426)
  store double %430, ptr %370, align 8
  %431 = getelementptr inbounds nuw i8, ptr %371, i64 120
  %432 = load double, ptr %431, align 8
  %433 = load double, ptr %19, align 8
  %434 = tail call double @llvm.fmuladd.f64(double %432, double %433, double %430)
  store double %434, ptr %370, align 8
  %435 = getelementptr inbounds nuw i8, ptr %371, i64 128
  %436 = load double, ptr %435, align 8
  %437 = load double, ptr %20, align 8
  %438 = tail call double @llvm.fmuladd.f64(double %436, double %437, double %434)
  store double %438, ptr %370, align 8
  %439 = getelementptr inbounds nuw i8, ptr %371, i64 136
  %440 = load double, ptr %439, align 8
  %441 = load double, ptr %21, align 8
  %442 = tail call double @llvm.fmuladd.f64(double %440, double %441, double %438)
  store double %442, ptr %370, align 8
  %443 = getelementptr inbounds nuw i8, ptr %371, i64 144
  %444 = load double, ptr %443, align 8
  %445 = load double, ptr %22, align 8
  %446 = tail call double @llvm.fmuladd.f64(double %444, double %445, double %442)
  store double %446, ptr %370, align 8
  %447 = getelementptr inbounds nuw i8, ptr %371, i64 152
  %448 = load double, ptr %447, align 8
  %449 = load double, ptr %23, align 8
  %450 = tail call double @llvm.fmuladd.f64(double %448, double %449, double %446)
  store double %450, ptr %370, align 8
  %451 = getelementptr inbounds nuw i8, ptr %371, i64 160
  %452 = load double, ptr %451, align 8
  %453 = load double, ptr %24, align 8
  %454 = tail call double @llvm.fmuladd.f64(double %452, double %453, double %450)
  store double %454, ptr %370, align 8
  %455 = getelementptr inbounds nuw i8, ptr %371, i64 168
  %456 = load double, ptr %455, align 8
  %457 = load double, ptr %25, align 8
  %458 = tail call double @llvm.fmuladd.f64(double %456, double %457, double %454)
  store double %458, ptr %370, align 8
  %459 = getelementptr inbounds nuw i8, ptr %371, i64 176
  %460 = load double, ptr %459, align 8
  %461 = load double, ptr %26, align 8
  %462 = tail call double @llvm.fmuladd.f64(double %460, double %461, double %458)
  store double %462, ptr %370, align 8
  %463 = getelementptr inbounds nuw i8, ptr %371, i64 184
  %464 = load double, ptr %463, align 8
  %465 = load double, ptr %27, align 8
  %466 = tail call double @llvm.fmuladd.f64(double %464, double %465, double %462)
  store double %466, ptr %370, align 8
  %467 = getelementptr inbounds nuw i8, ptr %371, i64 192
  %468 = load double, ptr %467, align 8
  %469 = load double, ptr %28, align 8
  %470 = tail call double @llvm.fmuladd.f64(double %468, double %469, double %466)
  store double %470, ptr %370, align 8
  %471 = getelementptr inbounds nuw i8, ptr %371, i64 200
  %472 = load double, ptr %471, align 8
  %473 = load double, ptr %29, align 8
  %474 = tail call double @llvm.fmuladd.f64(double %472, double %473, double %470)
  store double %474, ptr %370, align 8
  %475 = getelementptr inbounds nuw i8, ptr %371, i64 208
  %476 = load double, ptr %475, align 8
  %477 = load double, ptr %30, align 8
  %478 = tail call double @llvm.fmuladd.f64(double %476, double %477, double %474)
  store double %478, ptr %370, align 8
  %479 = getelementptr inbounds nuw i8, ptr %371, i64 216
  %480 = load double, ptr %479, align 8
  %481 = load double, ptr %31, align 8
  %482 = tail call double @llvm.fmuladd.f64(double %480, double %481, double %478)
  store double %482, ptr %370, align 8
  %483 = getelementptr inbounds nuw i8, ptr %371, i64 224
  %484 = load double, ptr %483, align 8
  %485 = load double, ptr %32, align 8
  %486 = tail call double @llvm.fmuladd.f64(double %484, double %485, double %482)
  store double %486, ptr %370, align 8
  %487 = getelementptr inbounds nuw i8, ptr %371, i64 232
  %488 = load double, ptr %487, align 8
  %489 = load double, ptr %33, align 8
  %490 = tail call double @llvm.fmuladd.f64(double %488, double %489, double %486)
  store double %490, ptr %370, align 8
  %491 = getelementptr inbounds nuw i8, ptr %371, i64 240
  %492 = load double, ptr %491, align 8
  %493 = load double, ptr %34, align 8
  %494 = tail call double @llvm.fmuladd.f64(double %492, double %493, double %490)
  store double %494, ptr %370, align 8
  %495 = getelementptr inbounds nuw i8, ptr %371, i64 248
  %496 = load double, ptr %495, align 8
  %497 = load double, ptr %35, align 8
  %498 = tail call double @llvm.fmuladd.f64(double %496, double %497, double %494)
  store double %498, ptr %370, align 8
  %499 = getelementptr inbounds nuw i8, ptr %371, i64 256
  %500 = load double, ptr %499, align 8
  %501 = load double, ptr %36, align 8
  %502 = tail call double @llvm.fmuladd.f64(double %500, double %501, double %498)
  store double %502, ptr %370, align 8
  %503 = getelementptr inbounds nuw i8, ptr %371, i64 264
  %504 = load double, ptr %503, align 8
  %505 = load double, ptr %37, align 8
  %506 = tail call double @llvm.fmuladd.f64(double %504, double %505, double %502)
  store double %506, ptr %370, align 8
  %507 = getelementptr inbounds nuw i8, ptr %371, i64 272
  %508 = load double, ptr %507, align 8
  %509 = load double, ptr %38, align 8
  %510 = tail call double @llvm.fmuladd.f64(double %508, double %509, double %506)
  store double %510, ptr %370, align 8
  %511 = getelementptr inbounds nuw i8, ptr %371, i64 280
  %512 = load double, ptr %511, align 8
  %513 = load double, ptr %39, align 8
  %514 = tail call double @llvm.fmuladd.f64(double %512, double %513, double %510)
  store double %514, ptr %370, align 8
  %515 = getelementptr inbounds nuw i8, ptr %371, i64 288
  %516 = load double, ptr %515, align 8
  %517 = load double, ptr %40, align 8
  %518 = tail call double @llvm.fmuladd.f64(double %516, double %517, double %514)
  store double %518, ptr %370, align 8
  %519 = getelementptr inbounds nuw i8, ptr %371, i64 296
  %520 = load double, ptr %519, align 8
  %521 = load double, ptr %41, align 8
  %522 = tail call double @llvm.fmuladd.f64(double %520, double %521, double %518)
  store double %522, ptr %370, align 8
  %523 = getelementptr inbounds nuw i8, ptr %371, i64 304
  %524 = load double, ptr %523, align 8
  %525 = load double, ptr %42, align 8
  %526 = tail call double @llvm.fmuladd.f64(double %524, double %525, double %522)
  store double %526, ptr %370, align 8
  %527 = getelementptr inbounds nuw i8, ptr %371, i64 312
  %528 = load double, ptr %527, align 8
  %529 = load double, ptr %43, align 8
  %530 = tail call double @llvm.fmuladd.f64(double %528, double %529, double %526)
  store double %530, ptr %370, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %.preheader.preheader, label %.preheader28, !llvm.loop !22

.preheader.preheader:                             ; preds = %vector.body, %.preheader28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %542
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %542 ], [ 0, %.preheader.preheader ]
  %531 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv40
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv40
  %.promoted31 = load double, ptr %531, align 8
  br label %532

532:                                              ; preds = %532, %.preheader
  %indvars.iv36 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next37.1, %532 ]
  %533 = phi double [ %.promoted31, %.preheader ], [ %541, %532 ]
  %gep = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep, i64 %indvars.iv36
  %534 = load double, ptr %gep, align 8
  %535 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv36
  %536 = load double, ptr %535, align 8
  %537 = tail call double @llvm.fmuladd.f64(double %534, double %536, double %533)
  store double %537, ptr %531, align 8
  %indvars.iv.next37 = or disjoint i64 %indvars.iv36, 1
  %gep.1 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep, i64 %indvars.iv.next37
  %538 = load double, ptr %gep.1, align 8
  %539 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next37
  %540 = load double, ptr %539, align 8
  %541 = tail call double @llvm.fmuladd.f64(double %538, double %540, double %537)
  store double %541, ptr %531, align 8
  %indvars.iv.next37.1 = add nuw nsw i64 %indvars.iv36, 2
  %exitcond39.not.1 = icmp eq i64 %indvars.iv.next37.1, 40
  br i1 %exitcond39.not.1, label %542, label %532, !llvm.loop !24

542:                                              ; preds = %532
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, 40
  br i1 %exitcond43.not, label %543, label %.preheader, !llvm.loop !25

543:                                              ; preds = %542
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %3)
  %4 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_02JMABBILH@x1?$AA@") #9
  br label %6

6:                                                ; preds = %2, %11
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %11 ]
  %indvars21 = trunc i64 %indvars.iv to i32
  %.urem = add nsw i32 %indvars21, -20
  %.cmp = icmp samesign ult i64 %indvars.iv, 20
  %7 = select i1 %.cmp, i32 %indvars21, i32 %.urem
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc15 = tail call i32 @fputc(i32 10, ptr %10)
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %13 = load double, ptr %12, align 8
  %14 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %13) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %16, label %6, !llvm.loop !26

16:                                               ; preds = %11
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_02JMABBILH@x1?$AA@") #9
  %19 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_02LHCMELHE@x2?$AA@") #9
  br label %21

21:                                               ; preds = %16, %26
  %indvars.iv22 = phi i64 [ 0, %16 ], [ %indvars.iv.next23, %26 ]
  %indvars25 = trunc i64 %indvars.iv22 to i32
  %.urem16 = add nsw i32 %indvars25, -20
  %.cmp17 = icmp samesign ult i64 %indvars.iv22, 20
  %22 = select i1 %.cmp17, i32 %indvars25, i32 %.urem16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %25)
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv22
  %28 = load double, ptr %27, align 8
  %29 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %28) #9
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, 40
  br i1 %exitcond26.not, label %31, label %21, !llvm.loop !27

31:                                               ; preds = %26
  %32 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_02LHCMELHE@x2?$AA@") #9
  %34 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %34)
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\mvt\\mvt.c", directory: "C:\\work\\llvm-profitability-research")
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
!18 = !{!19, !14}
!19 = distinct !{!19, !15}
!20 = !{!19}
!21 = distinct !{!21, !8, !9, !10, !11}
!22 = distinct !{!22, !8, !9, !23}
!23 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
