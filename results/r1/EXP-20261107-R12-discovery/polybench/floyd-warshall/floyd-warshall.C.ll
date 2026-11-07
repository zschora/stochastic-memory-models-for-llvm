; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\floyd-warshall\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\medley\\floyd-warshall\\floyd-warshall.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_04LNEJFJGI@path?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_03JDANDILB@?$CFd?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_04LNEJFJGI@path?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"path\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_03JDANDILB@?$CFd?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%d \00", comdat, align 4
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3600, i32 noundef 4) #8
  tail call fastcc void @init_array(ptr noundef %3)
  tail call fastcc void @kernel_floyd_warshall(ptr noundef %3)
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

.preheader:                                       ; preds = %1, %middle.block
  %indvars.iv27 = phi i64 [ 0, %1 ], [ %indvars.iv.next28, %middle.block ]
  %2 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv27
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv27, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader ], [ %vec.ind.next, %vector.body ]
  %3 = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %4 = trunc nuw nsw <4 x i64> %3 to <4 x i32>
  %5 = urem <4 x i32> %4, splat (i32 7)
  %6 = add nuw nsw <4 x i32> %5, splat (i32 1)
  %7 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %8 = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %9 = trunc nuw nsw <4 x i64> %8 to <4 x i32>
  %10 = urem <4 x i32> %9, splat (i32 13)
  %11 = icmp eq <4 x i32> %10, zeroinitializer
  %12 = urem <4 x i32> %9, splat (i32 7)
  %13 = icmp eq <4 x i32> %12, zeroinitializer
  %14 = or <4 x i1> %11, %13
  %15 = urem <4 x i32> %9, splat (i32 11)
  %16 = icmp eq <4 x i32> %15, zeroinitializer
  %17 = or <4 x i1> %16, %14
  %18 = select <4 x i1> %17, <4 x i32> splat (i32 999), <4 x i32> %6
  store <4 x i32> %18, ptr %7, align 4
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %19 = icmp eq i64 %index.next, 60
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 60
  br i1 %exitcond30.not, label %20, label %.preheader, !llvm.loop !12

20:                                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_floyd_warshall(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
  %scevgep9 = getelementptr i8, ptr %0, i64 14400
  %2 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %3 = shufflevector <2 x ptr> %2, <2 x ptr> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x ptr> poison, ptr %scevgep9, i64 0
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.preheader30

.preheader30:                                     ; preds = %1, %90
  %indvars.iv39 = phi i64 [ 0, %1 ], [ %indvars.iv.next40, %90 ]
  %6 = mul nuw nsw i64 %indvars.iv39, 240
  %7 = getelementptr i8, ptr %0, i64 %6
  %8 = shl nuw nsw i64 %indvars.iv39, 2
  %9 = getelementptr i8, ptr %0, i64 %8
  %10 = insertelement <2 x ptr> poison, ptr %9, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %7, i64 1
  %12 = getelementptr i8, <2 x ptr> %11, <2 x i64> <i64 14164, i64 240>
  %scevgep8 = getelementptr nuw i8, ptr %0, i64 %8
  %13 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv39
  %14 = insertelement <2 x ptr> poison, ptr %scevgep8, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %13, i64 1
  %16 = icmp ult <2 x ptr> %3, %12
  %17 = icmp ult <2 x ptr> %15, %5
  %18 = and <2 x i1> %16, %17
  %19 = bitcast <2 x i1> %18 to i2
  %.not = icmp eq i2 %19, 0
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 64
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 80
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 96
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 112
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 128
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 144
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 160
  %30 = getelementptr inbounds nuw i8, ptr %13, i64 176
  %31 = getelementptr inbounds nuw i8, ptr %13, i64 192
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 208
  br label %.preheader

.preheader:                                       ; preds = %.preheader30, %89
  %indvars.iv35 = phi i64 [ 0, %.preheader30 ], [ %indvars.iv.next36, %89 ]
  %33 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv35
  %34 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv39
  br i1 %.not, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.preheader
  %35 = load i32, ptr %34, align 4, !alias.scope !13
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %35, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %wide.load = load <4 x i32>, ptr %33, align 4, !alias.scope !16, !noalias !18
  %wide.load13 = load <4 x i32>, ptr %36, align 4, !alias.scope !16, !noalias !18
  %wide.load14 = load <4 x i32>, ptr %13, align 4, !alias.scope !20
  %wide.load15 = load <4 x i32>, ptr %20, align 4, !alias.scope !20
  %37 = add <4 x i32> %wide.load14, %broadcast.splat
  %38 = add <4 x i32> %wide.load15, %broadcast.splat
  %39 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %37)
  %40 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load13, <4 x i32> %38)
  store <4 x i32> %39, ptr %33, align 4, !alias.scope !16, !noalias !18
  store <4 x i32> %40, ptr %36, align 4, !alias.scope !16, !noalias !18
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %wide.load.1 = load <4 x i32>, ptr %41, align 4, !alias.scope !16, !noalias !18
  %wide.load13.1 = load <4 x i32>, ptr %42, align 4, !alias.scope !16, !noalias !18
  %wide.load14.1 = load <4 x i32>, ptr %21, align 4, !alias.scope !20
  %wide.load15.1 = load <4 x i32>, ptr %22, align 4, !alias.scope !20
  %43 = add <4 x i32> %wide.load14.1, %broadcast.splat
  %44 = add <4 x i32> %wide.load15.1, %broadcast.splat
  %45 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load.1, <4 x i32> %43)
  %46 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load13.1, <4 x i32> %44)
  store <4 x i32> %45, ptr %41, align 4, !alias.scope !16, !noalias !18
  store <4 x i32> %46, ptr %42, align 4, !alias.scope !16, !noalias !18
  %47 = getelementptr inbounds nuw i8, ptr %33, i64 64
  %48 = getelementptr inbounds nuw i8, ptr %33, i64 80
  %wide.load.2 = load <4 x i32>, ptr %47, align 4, !alias.scope !16, !noalias !18
  %wide.load13.2 = load <4 x i32>, ptr %48, align 4, !alias.scope !16, !noalias !18
  %wide.load14.2 = load <4 x i32>, ptr %23, align 4, !alias.scope !20
  %wide.load15.2 = load <4 x i32>, ptr %24, align 4, !alias.scope !20
  %49 = add <4 x i32> %wide.load14.2, %broadcast.splat
  %50 = add <4 x i32> %wide.load15.2, %broadcast.splat
  %51 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load.2, <4 x i32> %49)
  %52 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load13.2, <4 x i32> %50)
  store <4 x i32> %51, ptr %47, align 4, !alias.scope !16, !noalias !18
  store <4 x i32> %52, ptr %48, align 4, !alias.scope !16, !noalias !18
  %53 = getelementptr inbounds nuw i8, ptr %33, i64 96
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 112
  %wide.load.3 = load <4 x i32>, ptr %53, align 4, !alias.scope !16, !noalias !18
  %wide.load13.3 = load <4 x i32>, ptr %54, align 4, !alias.scope !16, !noalias !18
  %wide.load14.3 = load <4 x i32>, ptr %25, align 4, !alias.scope !20
  %wide.load15.3 = load <4 x i32>, ptr %26, align 4, !alias.scope !20
  %55 = add <4 x i32> %wide.load14.3, %broadcast.splat
  %56 = add <4 x i32> %wide.load15.3, %broadcast.splat
  %57 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load.3, <4 x i32> %55)
  %58 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load13.3, <4 x i32> %56)
  store <4 x i32> %57, ptr %53, align 4, !alias.scope !16, !noalias !18
  store <4 x i32> %58, ptr %54, align 4, !alias.scope !16, !noalias !18
  %59 = getelementptr inbounds nuw i8, ptr %33, i64 128
  %60 = getelementptr inbounds nuw i8, ptr %33, i64 144
  %wide.load.4 = load <4 x i32>, ptr %59, align 4, !alias.scope !16, !noalias !18
  %wide.load13.4 = load <4 x i32>, ptr %60, align 4, !alias.scope !16, !noalias !18
  %wide.load14.4 = load <4 x i32>, ptr %27, align 4, !alias.scope !20
  %wide.load15.4 = load <4 x i32>, ptr %28, align 4, !alias.scope !20
  %61 = add <4 x i32> %wide.load14.4, %broadcast.splat
  %62 = add <4 x i32> %wide.load15.4, %broadcast.splat
  %63 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load.4, <4 x i32> %61)
  %64 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load13.4, <4 x i32> %62)
  store <4 x i32> %63, ptr %59, align 4, !alias.scope !16, !noalias !18
  store <4 x i32> %64, ptr %60, align 4, !alias.scope !16, !noalias !18
  %65 = getelementptr inbounds nuw i8, ptr %33, i64 160
  %66 = getelementptr inbounds nuw i8, ptr %33, i64 176
  %wide.load.5 = load <4 x i32>, ptr %65, align 4, !alias.scope !16, !noalias !18
  %wide.load13.5 = load <4 x i32>, ptr %66, align 4, !alias.scope !16, !noalias !18
  %wide.load14.5 = load <4 x i32>, ptr %29, align 4, !alias.scope !20
  %wide.load15.5 = load <4 x i32>, ptr %30, align 4, !alias.scope !20
  %67 = add <4 x i32> %wide.load14.5, %broadcast.splat
  %68 = add <4 x i32> %wide.load15.5, %broadcast.splat
  %69 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load.5, <4 x i32> %67)
  %70 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load13.5, <4 x i32> %68)
  store <4 x i32> %69, ptr %65, align 4, !alias.scope !16, !noalias !18
  store <4 x i32> %70, ptr %66, align 4, !alias.scope !16, !noalias !18
  %71 = getelementptr inbounds nuw i8, ptr %33, i64 192
  %72 = getelementptr inbounds nuw i8, ptr %33, i64 208
  %wide.load.6 = load <4 x i32>, ptr %71, align 4, !alias.scope !16, !noalias !18
  %wide.load13.6 = load <4 x i32>, ptr %72, align 4, !alias.scope !16, !noalias !18
  %wide.load14.6 = load <4 x i32>, ptr %31, align 4, !alias.scope !20
  %wide.load15.6 = load <4 x i32>, ptr %32, align 4, !alias.scope !20
  %73 = add <4 x i32> %wide.load14.6, %broadcast.splat
  %74 = add <4 x i32> %wide.load15.6, %broadcast.splat
  %75 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load.6, <4 x i32> %73)
  %76 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load13.6, <4 x i32> %74)
  store <4 x i32> %75, ptr %71, align 4, !alias.scope !16, !noalias !18
  store <4 x i32> %76, ptr %72, align 4, !alias.scope !16, !noalias !18
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ 56, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ]
  %77 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv
  %78 = load i32, ptr %77, align 4
  %79 = load i32, ptr %34, align 4
  %80 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %79
  %. = tail call i32 @llvm.smin.i32(i32 %78, i32 %82)
  store i32 %., ptr %77, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %83 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv.next
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %34, align 4
  %86 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.next
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %85
  %..1 = tail call i32 @llvm.smin.i32(i32 %84, i32 %88)
  store i32 %..1, ptr %83, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 60
  br i1 %exitcond.not.1, label %89, label %scalar.ph, !llvm.loop !21

89:                                               ; preds = %scalar.ph
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 60
  br i1 %exitcond38.not, label %90, label %.preheader, !llvm.loop !23

90:                                               ; preds = %89
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, 60
  br i1 %exitcond42.not, label %91, label %.preheader30, !llvm.loop !24

91:                                               ; preds = %90
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_04LNEJFJGI@path?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 60
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
  %15 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %16) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !25

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 60
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !26

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_04LNEJFJGI@path?$AA@") #8
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
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\medley\\floyd-warshall\\floyd-warshall.c", directory: "C:\\work\\llvm-profitability-research")
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
!18 = !{!14, !19}
!19 = distinct !{!19, !15}
!20 = !{!19}
!21 = distinct !{!21, !8, !9, !22}
!22 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
