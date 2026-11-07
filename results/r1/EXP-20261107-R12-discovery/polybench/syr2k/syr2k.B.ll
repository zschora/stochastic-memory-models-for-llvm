; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\syr2k\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syr2k\\syr2k.c"
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
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #9
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %8 = load double, ptr %4, align 8
  %9 = load double, ptr %3, align 8
  tail call fastcc void @kernel_syr2k(double noundef %9, double noundef %8, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %10 = icmp sgt i32 %0, 42
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %12, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %13, label %14

13:                                               ; preds = %11
  tail call fastcc void @print_array(ptr noundef %5)
  br label %14

14:                                               ; preds = %13, %11, %2
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %7)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
  %6 = ptrtoaddr ptr %3 to i64
  %7 = ptrtoaddr ptr %4 to i64
  store double 1.500000e+00, ptr %0, align 8
  store double 1.200000e+00, ptr %1, align 8
  %8 = sub i64 %6, %7
  %diff.check = icmp ugt i64 %8, -16
  br label %.preheader40

.preheader40:                                     ; preds = %5, %middle.block
  %indvars.iv46 = phi i64 [ 0, %5 ], [ %indvars.iv.next47, %middle.block ]
  %9 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv46
  %10 = getelementptr inbounds nuw [160 x i8], ptr %4, i64 %indvars.iv46
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader40
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv46, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %11 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %12 = mul nuw <2 x i32> %11, <i32 0, i32 1>
  %13 = add <2 x i32> %12, splat (i32 1)
  %14 = urem <2 x i32> %13, splat (i32 30)
  %15 = uitofp nneg <2 x i32> %14 to <2 x double>
  %16 = fdiv <2 x double> %15, splat (double 3.000000e+01)
  store <2 x double> %16, ptr %9, align 8
  %17 = add <2 x i32> %12, splat (i32 2)
  %18 = urem <2 x i32> %17, splat (i32 20)
  %19 = uitofp nneg <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, splat (double 2.000000e+01)
  store <2 x double> %20, ptr %10, align 8
  %21 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %22 = mul <2 x i32> %21, <i32 2, i32 3>
  %23 = add <2 x i32> %22, splat (i32 1)
  %24 = urem <2 x i32> %23, splat (i32 30)
  %25 = uitofp nneg <2 x i32> %24 to <2 x double>
  %26 = fdiv <2 x double> %25, splat (double 3.000000e+01)
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <2 x double> %26, ptr %27, align 8
  %28 = add <2 x i32> %22, splat (i32 2)
  %29 = urem <2 x i32> %28, splat (i32 20)
  %30 = uitofp nneg <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, splat (double 2.000000e+01)
  %32 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x double> %31, ptr %32, align 8
  %33 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %34 = mul <2 x i32> %33, <i32 4, i32 5>
  %35 = add <2 x i32> %34, splat (i32 1)
  %36 = urem <2 x i32> %35, splat (i32 30)
  %37 = uitofp nneg <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, splat (double 3.000000e+01)
  %39 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <2 x double> %38, ptr %39, align 8
  %40 = add <2 x i32> %34, splat (i32 2)
  %41 = urem <2 x i32> %40, splat (i32 20)
  %42 = uitofp nneg <2 x i32> %41 to <2 x double>
  %43 = fdiv <2 x double> %42, splat (double 2.000000e+01)
  %44 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store <2 x double> %43, ptr %44, align 8
  %45 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %46 = mul <2 x i32> %45, <i32 6, i32 7>
  %47 = add <2 x i32> %46, splat (i32 1)
  %48 = urem <2 x i32> %47, splat (i32 30)
  %49 = uitofp nneg <2 x i32> %48 to <2 x double>
  %50 = fdiv <2 x double> %49, splat (double 3.000000e+01)
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <2 x double> %50, ptr %51, align 8
  %52 = add <2 x i32> %46, splat (i32 2)
  %53 = urem <2 x i32> %52, splat (i32 20)
  %54 = uitofp nneg <2 x i32> %53 to <2 x double>
  %55 = fdiv <2 x double> %54, splat (double 2.000000e+01)
  %56 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <2 x double> %55, ptr %56, align 8
  %57 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %58 = mul <2 x i32> %57, <i32 8, i32 9>
  %59 = add <2 x i32> %58, splat (i32 1)
  %60 = urem <2 x i32> %59, splat (i32 30)
  %61 = uitofp nneg <2 x i32> %60 to <2 x double>
  %62 = fdiv <2 x double> %61, splat (double 3.000000e+01)
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <2 x double> %62, ptr %63, align 8
  %64 = add <2 x i32> %58, splat (i32 2)
  %65 = urem <2 x i32> %64, splat (i32 20)
  %66 = uitofp nneg <2 x i32> %65 to <2 x double>
  %67 = fdiv <2 x double> %66, splat (double 2.000000e+01)
  %68 = getelementptr inbounds nuw i8, ptr %10, i64 64
  store <2 x double> %67, ptr %68, align 8
  %69 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %70 = mul <2 x i32> %69, <i32 10, i32 11>
  %71 = add <2 x i32> %70, splat (i32 1)
  %72 = urem <2 x i32> %71, splat (i32 30)
  %73 = uitofp nneg <2 x i32> %72 to <2 x double>
  %74 = fdiv <2 x double> %73, splat (double 3.000000e+01)
  %75 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <2 x double> %74, ptr %75, align 8
  %76 = add <2 x i32> %70, splat (i32 2)
  %77 = urem <2 x i32> %76, splat (i32 20)
  %78 = uitofp nneg <2 x i32> %77 to <2 x double>
  %79 = fdiv <2 x double> %78, splat (double 2.000000e+01)
  %80 = getelementptr inbounds nuw i8, ptr %10, i64 80
  store <2 x double> %79, ptr %80, align 8
  %81 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %82 = mul <2 x i32> %81, <i32 12, i32 13>
  %83 = add <2 x i32> %82, splat (i32 1)
  %84 = urem <2 x i32> %83, splat (i32 30)
  %85 = uitofp nneg <2 x i32> %84 to <2 x double>
  %86 = fdiv <2 x double> %85, splat (double 3.000000e+01)
  %87 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <2 x double> %86, ptr %87, align 8
  %88 = add <2 x i32> %82, splat (i32 2)
  %89 = urem <2 x i32> %88, splat (i32 20)
  %90 = uitofp nneg <2 x i32> %89 to <2 x double>
  %91 = fdiv <2 x double> %90, splat (double 2.000000e+01)
  %92 = getelementptr inbounds nuw i8, ptr %10, i64 96
  store <2 x double> %91, ptr %92, align 8
  %93 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %94 = mul <2 x i32> %93, <i32 14, i32 15>
  %95 = add <2 x i32> %94, splat (i32 1)
  %96 = urem <2 x i32> %95, splat (i32 30)
  %97 = uitofp nneg <2 x i32> %96 to <2 x double>
  %98 = fdiv <2 x double> %97, splat (double 3.000000e+01)
  %99 = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <2 x double> %98, ptr %99, align 8
  %100 = add <2 x i32> %94, splat (i32 2)
  %101 = urem <2 x i32> %100, splat (i32 20)
  %102 = uitofp nneg <2 x i32> %101 to <2 x double>
  %103 = fdiv <2 x double> %102, splat (double 2.000000e+01)
  %104 = getelementptr inbounds nuw i8, ptr %10, i64 112
  store <2 x double> %103, ptr %104, align 8
  %105 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %106 = mul <2 x i32> %105, <i32 16, i32 17>
  %107 = add <2 x i32> %106, splat (i32 1)
  %108 = urem <2 x i32> %107, splat (i32 30)
  %109 = uitofp nneg <2 x i32> %108 to <2 x double>
  %110 = fdiv <2 x double> %109, splat (double 3.000000e+01)
  %111 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <2 x double> %110, ptr %111, align 8
  %112 = add <2 x i32> %106, splat (i32 2)
  %113 = urem <2 x i32> %112, splat (i32 20)
  %114 = uitofp nneg <2 x i32> %113 to <2 x double>
  %115 = fdiv <2 x double> %114, splat (double 2.000000e+01)
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 128
  store <2 x double> %115, ptr %116, align 8
  %117 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %118 = mul <2 x i32> %117, <i32 18, i32 19>
  %119 = add <2 x i32> %118, splat (i32 1)
  %120 = urem <2 x i32> %119, splat (i32 30)
  %121 = uitofp nneg <2 x i32> %120 to <2 x double>
  %122 = fdiv <2 x double> %121, splat (double 3.000000e+01)
  %123 = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <2 x double> %122, ptr %123, align 8
  %124 = add <2 x i32> %118, splat (i32 2)
  %125 = urem <2 x i32> %124, splat (i32 20)
  %126 = uitofp nneg <2 x i32> %125 to <2 x double>
  %127 = fdiv <2 x double> %126, splat (double 2.000000e+01)
  %128 = getelementptr inbounds nuw i8, ptr %10, i64 144
  store <2 x double> %127, ptr %128, align 8
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader40, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader40 ]
  %129 = mul nuw nsw i64 %indvars.iv, %indvars.iv46
  %130 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv
  %131 = trunc i64 %129 to i32
  %132 = add i32 %131, 1
  %133 = urem i32 %132, 30
  %134 = uitofp nneg i32 %133 to double
  %135 = trunc i64 %129 to i32
  %136 = add i32 %135, 2
  %137 = urem i32 %136, 20
  %138 = uitofp nneg i32 %137 to double
  %139 = insertelement <2 x double> poison, double %134, i64 0
  %140 = insertelement <2 x double> %139, double %138, i64 1
  %141 = fdiv <2 x double> %140, <double 3.000000e+01, double 2.000000e+01>
  %142 = extractelement <2 x double> %141, i64 0
  store double %142, ptr %130, align 8
  %143 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %144 = extractelement <2 x double> %141, i64 1
  store double %144, ptr %143, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !7

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 30
  br i1 %exitcond49.not, label %.preheader, label %.preheader40, !llvm.loop !11

.preheader:                                       ; preds = %middle.block, %middle.block10
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %middle.block10 ], [ 0, %middle.block ]
  %145 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv54
  %broadcast.splatinsert3 = insertelement <2 x i64> poison, i64 %indvars.iv54, i64 0
  %broadcast.splat4 = shufflevector <2 x i64> %broadcast.splatinsert3, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body5

vector.body5:                                     ; preds = %vector.body5, %.preheader
  %index6 = phi i64 [ 0, %.preheader ], [ %index.next8, %vector.body5 ]
  %vec.ind7 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader ], [ %vec.ind.next9, %vector.body5 ]
  %146 = mul nuw nsw <2 x i64> %vec.ind7, %broadcast.splat4
  %147 = trunc <2 x i64> %146 to <2 x i32>
  %148 = add <2 x i32> %147, splat (i32 3)
  %149 = urem <2 x i32> %148, splat (i32 30)
  %150 = uitofp nneg <2 x i32> %149 to <2 x double>
  %151 = fdiv <2 x double> %150, splat (double 2.000000e+01)
  %152 = getelementptr inbounds nuw [8 x i8], ptr %145, i64 %index6
  store <2 x double> %151, ptr %152, align 8
  %index.next8 = add nuw i64 %index6, 2
  %vec.ind.next9 = add nuw nsw <2 x i64> %vec.ind7, splat (i64 2)
  %153 = icmp eq i64 %index.next8, 30
  br i1 %153, label %middle.block10, label %vector.body5, !llvm.loop !12

middle.block10:                                   ; preds = %vector.body5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 30
  br i1 %exitcond57.not, label %154, label %.preheader, !llvm.loop !15

154:                                              ; preds = %middle.block10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_syr2k(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #3 {
  %broadcast.splatinsert33 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat34 = shufflevector <2 x double> %broadcast.splatinsert33, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x ptr> poison, ptr %4, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader34

.preheader34:                                     ; preds = %5, %72
  %indvars.iv55 = phi i64 [ 0, %5 ], [ %indvars.iv.next56, %72 ]
  %indvars.iv53 = phi i64 [ 1, %5 ], [ %indvars.iv.next54, %72 ]
  %8 = mul nuw nsw i64 %indvars.iv55, 160
  %9 = add nuw i64 %8, 160
  %scevgep = getelementptr i8, ptr %4, i64 %9
  %scevgep14 = getelementptr i8, ptr %3, i64 %9
  %10 = mul nuw nsw i64 %indvars.iv55, 248
  %11 = getelementptr i8, ptr %2, i64 %10
  %scevgep15 = getelementptr i8, ptr %11, i64 8
  %12 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv55
  %min.iters.check30 = icmp samesign ult i64 %indvars.iv53, 4
  br i1 %min.iters.check30, label %scalar.ph29.preheader, label %vector.ph31

vector.ph31:                                      ; preds = %.preheader34
  %n.vec32 = and i64 %indvars.iv53, 9223372036854775804
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph31
  %index36 = phi i64 [ 0, %vector.ph31 ], [ %index.next39, %vector.body35 ]
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index36
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load37 = load <2 x double>, ptr %13, align 8
  %wide.load38 = load <2 x double>, ptr %14, align 8
  %15 = fmul <2 x double> %broadcast.splat34, %wide.load37
  %16 = fmul <2 x double> %broadcast.splat34, %wide.load38
  store <2 x double> %15, ptr %13, align 8
  store <2 x double> %16, ptr %14, align 8
  %index.next39 = add nuw i64 %index36, 4
  %17 = icmp eq i64 %index.next39, %n.vec32
  br i1 %17, label %middle.block40, label %vector.body35, !llvm.loop !16

middle.block40:                                   ; preds = %vector.body35
  %cmp.n41 = icmp eq i64 %indvars.iv53, %n.vec32
  br i1 %cmp.n41, label %.preheader33, label %scalar.ph29.preheader

scalar.ph29.preheader:                            ; preds = %.preheader34, %middle.block40
  %indvars.iv.ph = phi i64 [ 0, %.preheader34 ], [ %n.vec32, %middle.block40 ]
  br label %scalar.ph29

.preheader33:                                     ; preds = %scalar.ph29, %middle.block40
  %18 = getelementptr inbounds nuw [160 x i8], ptr %4, i64 %indvars.iv55
  %19 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv55
  %20 = insertelement <2 x ptr> poison, ptr %12, i64 0
  %21 = shufflevector <2 x ptr> %20, <2 x ptr> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x ptr> poison, ptr %scevgep14, i64 0
  %23 = insertelement <2 x ptr> %22, ptr %scevgep, i64 1
  %24 = insertelement <2 x ptr> %6, ptr %19, i64 0
  %25 = insertelement <2 x ptr> poison, ptr %scevgep15, i64 0
  %26 = shufflevector <2 x ptr> %25, <2 x ptr> poison, <2 x i32> zeroinitializer
  %27 = insertelement <2 x ptr> %7, ptr %18, i64 1
  %min.iters.check = icmp samesign ult i64 %indvars.iv53, 2
  %28 = icmp ult <2 x ptr> %21, %23
  %29 = icmp ult <2 x ptr> %24, %26
  %30 = icmp ult <2 x ptr> %27, %26
  %31 = or <2 x i1> %29, %30
  %32 = and <2 x i1> %28, %31
  %33 = bitcast <2 x i1> %32 to i2
  %.not = icmp eq i2 %33, 0
  %n.vec = and i64 %indvars.iv53, 9223372036854775806
  %cmp.n = icmp eq i64 %indvars.iv53, %n.vec
  br label %.preheader

scalar.ph29:                                      ; preds = %scalar.ph29.preheader, %scalar.ph29
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph29 ], [ %indvars.iv.ph, %scalar.ph29.preheader ]
  %34 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv
  %35 = load double, ptr %34, align 8
  %36 = fmul double %1, %35
  store double %36, ptr %34, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv53
  br i1 %exitcond.not, label %.preheader33, label %scalar.ph29, !llvm.loop !17

.preheader:                                       ; preds = %.preheader33, %.loopexit
  %indvars.iv49 = phi i64 [ 0, %.preheader33 ], [ %indvars.iv.next50, %.loopexit ]
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv49
  %37 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv49
  %invariant.gep36 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv49
  %38 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv49
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %39 = load double, ptr %37, align 8, !alias.scope !18
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %39, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = load double, ptr %38, align 8, !alias.scope !21
  %broadcast.splatinsert25 = insertelement <2 x double> poison, double %40, i64 0
  %broadcast.splat26 = shufflevector <2 x double> %broadcast.splatinsert25, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %41 = or disjoint i64 %index, 1
  %42 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %index
  %43 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %41
  %44 = load double, ptr %42, align 8, !alias.scope !23
  %45 = load double, ptr %43, align 8, !alias.scope !23
  %46 = insertelement <2 x double> poison, double %44, i64 0
  %47 = insertelement <2 x double> %46, double %45, i64 1
  %48 = fmul <2 x double> %broadcast.splat, %47
  %49 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep36, i64 %index
  %50 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep36, i64 %41
  %51 = load double, ptr %49, align 8, !alias.scope !25
  %52 = load double, ptr %50, align 8, !alias.scope !25
  %53 = insertelement <2 x double> poison, double %51, i64 0
  %54 = insertelement <2 x double> %53, double %52, i64 1
  %55 = fmul <2 x double> %broadcast.splat, %54
  %56 = fmul <2 x double> %55, %broadcast.splat26
  %57 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %broadcast.splat28, <2 x double> %56)
  %58 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index
  %wide.load = load <2 x double>, ptr %58, align 8, !alias.scope !27, !noalias !29
  %59 = fadd <2 x double> %wide.load, %57
  store <2 x double> %59, ptr %58, align 8, !alias.scope !27, !noalias !29
  %index.next = add nuw i64 %index, 2
  %60 = icmp eq i64 %index.next, %n.vec
  br i1 %60, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %scalar.ph ], [ %indvars.iv44.ph, %scalar.ph.preheader ]
  %gep = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %indvars.iv44
  %61 = load double, ptr %gep, align 8
  %62 = fmul double %0, %61
  %63 = load double, ptr %37, align 8
  %gep37 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep36, i64 %indvars.iv44
  %64 = load double, ptr %gep37, align 8
  %65 = fmul double %0, %64
  %66 = load double, ptr %38, align 8
  %67 = fmul double %65, %66
  %68 = tail call double @llvm.fmuladd.f64(double %62, double %63, double %67)
  %69 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv44
  %70 = load double, ptr %69, align 8
  %71 = fadd double %70, %68
  store double %71, ptr %69, align 8
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %indvars.iv53
  br i1 %exitcond48.not, label %.loopexit, label %scalar.ph, !llvm.loop !31

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 20
  br i1 %exitcond52.not, label %72, label %.preheader, !llvm.loop !32

72:                                               ; preds = %.loopexit
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next56, 30
  br i1 %exitcond60.not, label %73, label %.preheader34, !llvm.loop !33

73:                                               ; preds = %72
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
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !34

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 30
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !35

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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syr2k\\syr2k.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8, !9, !10}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8, !9, !13, !14}
!13 = !{!"llvm.loop.vectorize.body", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8, !9, !13, !14}
!17 = distinct !{!17, !8, !14, !9, !10}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, i1 false, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = !{!24}
!24 = distinct !{!24, !20}
!25 = !{!26}
!26 = distinct !{!26, !20}
!27 = !{!28}
!28 = distinct !{!28, !20}
!29 = !{!22, !24, !26, !19}
!30 = distinct !{!30, !8, !9, !13, !14}
!31 = distinct !{!31, !8, !9, !10}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
