; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\bicg\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\bicg\\bicg.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01LKDEMHDF@s?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_01IIACKFLH@q?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01LKDEMHDF@s?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"s\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_01IIACKFLH@q?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"q\00", comdat, align 4
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1596, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 38, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 42, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 38, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 42, i32 noundef 8) #9
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %7, ptr noundef %6)
  tail call fastcc void @kernel_bicg(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 304)) %2) unnamed_addr #2 {
.preheader.preheader:
  store <2 x double> <double 0.000000e+00, double f0x3F9AF286BCA1AF28>, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> <double f0x3FAAF286BCA1AF28, double f0x3FB435E50D79435E>, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> <double f0x3FBAF286BCA1AF28, double f0x3FC0D79435E50D79>, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x double> <double f0x3FC435E50D79435E, double f0x3FC79435E50D7943>, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <2 x double> <double f0x3FCAF286BCA1AF28, double f0x3FCE50D79435E50D>, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <2 x double> <double f0x3FD0D79435E50D79, double f0x3FD286BCA1AF286C>, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <2 x double> <double f0x3FD435E50D79435E, double f0x3FD5E50D79435E51>, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <2 x double> <double f0x3FD79435E50D7943, double f0x3FD9435E50D79436>, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store <2 x double> <double f0x3FDAF286BCA1AF28, double f0x3FDCA1AF286BCA1B>, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store <2 x double> <double f0x3FDE50D79435E50D, double 5.000000e-01>, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store <2 x double> <double f0x3FE0D79435E50D79, double f0x3FE1AF286BCA1AF3>, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store <2 x double> <double f0x3FE286BCA1AF286C, double f0x3FE35E50D79435E5>, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store <2 x double> <double f0x3FE435E50D79435E, double f0x3FE50D79435E50D8>, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store <2 x double> <double f0x3FE5E50D79435E51, double f0x3FE6BCA1AF286BCA>, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store <2 x double> <double f0x3FE79435E50D7943, double f0x3FE86BCA1AF286BD>, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store <2 x double> <double f0x3FE9435E50D79436, double f0x3FEA1AF286BCA1AF>, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 256
  store <2 x double> <double f0x3FEAF286BCA1AF28, double f0x3FEBCA1AF286BCA2>, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 272
  store <2 x double> <double f0x3FECA1AF286BCA1B, double f0x3FED79435E50D794>, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store <2 x double> <double f0x3FEE50D79435E50D, double f0x3FEF286BCA1AF287>, ptr %20, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block
  %indvars.iv34 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next35, %middle.block ]
  %21 = trunc nuw nsw i64 %indvars.iv34 to i32
  %22 = uitofp nneg i32 %21 to double
  %23 = fdiv double %22, 4.200000e+01
  %24 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv34
  store double %23, ptr %24, align 8
  %25 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %indvars.iv34
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv34, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader ], [ %vec.ind.next, %vector.body ]
  %26 = add nuw nsw <2 x i64> %vec.ind, splat (i64 1)
  %27 = mul nuw nsw <2 x i64> %26, %broadcast.splat
  %28 = trunc nuw nsw <2 x i64> %27 to <2 x i32>
  %29 = urem <2 x i32> %28, splat (i32 42)
  %30 = uitofp nneg <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, splat (double 4.200000e+01)
  %32 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %index
  store <2 x double> %31, ptr %32, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %33 = icmp eq i64 %index.next, 38
  br i1 %33, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next35, 42
  br i1 %exitcond37.not, label %34, label %.preheader, !llvm.loop !12

34:                                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_bicg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 304)) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #3 {
.preheader.preheader:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %1, i8 0, i64 304, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %20
  %indvars.iv33 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next34, %20 ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv33
  store double 0.000000e+00, ptr %5, align 8
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv33
  %7 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %indvars.iv33
  br label %8

8:                                                ; preds = %.preheader, %8
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %8 ]
  %9 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %10 = load double, ptr %9, align 8
  %11 = load double, ptr %6, align 8
  %12 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %13 = load double, ptr %12, align 8
  %14 = tail call double @llvm.fmuladd.f64(double %11, double %13, double %10)
  store double %14, ptr %9, align 8
  %15 = load double, ptr %5, align 8
  %16 = load double, ptr %12, align 8
  %17 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %18 = load double, ptr %17, align 8
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %15)
  store double %19, ptr %5, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %20, label %8, !llvm.loop !13

20:                                               ; preds = %8
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, 42
  br i1 %exitcond36.not, label %21, label %.preheader, !llvm.loop !14

21:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %3)
  %4 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01LKDEMHDF@s?$AA@") #9
  br label %6

6:                                                ; preds = %2, %11
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %11 ]
  %indvars18 = trunc i64 %indvars.iv to i32
  %.urem = add nsw i32 %indvars18, -20
  %.cmp = icmp samesign ult i64 %indvars.iv, 20
  %7 = select i1 %.cmp, i32 %indvars18, i32 %.urem
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc14 = tail call i32 @fputc(i32 10, ptr %10)
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %13 = load double, ptr %12, align 8
  %14 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %13) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %16, label %6, !llvm.loop !15

16:                                               ; preds = %11
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01LKDEMHDF@s?$AA@") #9
  %19 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01IIACKFLH@q?$AA@") #9
  br label %21

21:                                               ; preds = %16, %26
  %indvars.iv19 = phi i64 [ 0, %16 ], [ %indvars.iv.next20, %26 ]
  %.lhs.trunc = trunc i64 %indvars.iv19 to i8
  %22 = urem i8 %.lhs.trunc, 20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %25)
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv19
  %28 = load double, ptr %27, align 8
  %29 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %28) #9
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond22.not = icmp eq i64 %indvars.iv.next20, 42
  br i1 %exitcond22.not, label %31, label %21, !llvm.loop !16

31:                                               ; preds = %26
  %32 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01IIACKFLH@q?$AA@") #9
  %34 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %34)
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\bicg\\bicg.c", directory: "C:\\work\\llvm-profitability-research")
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
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
