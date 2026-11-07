; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\gemm\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemm\\gemm.c"
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
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #8
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 750, i32 noundef 8) #8
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %8 = load double, ptr %4, align 8
  %9 = load double, ptr %3, align 8
  tail call fastcc void @kernel_gemm(double noundef %9, double noundef %8, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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
  store double 1.500000e+00, ptr %0, align 8
  store double 1.200000e+00, ptr %1, align 8
  br label %.preheader50

.preheader50:                                     ; preds = %5, %.preheader50
  %indvars.iv58 = phi i64 [ 0, %5 ], [ %indvars.iv.next59, %.preheader50 ]
  %6 = getelementptr inbounds nuw [200 x i8], ptr %2, i64 %indvars.iv58
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv58, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %7 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %8 = mul nuw <2 x i32> %7, <i32 0, i32 1>
  %9 = add <2 x i32> %8, splat (i32 1)
  %10 = urem <2 x i32> %9, splat (i32 20)
  %11 = uitofp nneg <2 x i32> %10 to <2 x double>
  %12 = fdiv <2 x double> %11, splat (double 2.000000e+01)
  store <2 x double> %12, ptr %6, align 8
  %13 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %14 = mul <2 x i32> %13, <i32 2, i32 3>
  %15 = add <2 x i32> %14, splat (i32 1)
  %16 = urem <2 x i32> %15, splat (i32 20)
  %17 = uitofp nneg <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, splat (double 2.000000e+01)
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %18, ptr %19, align 8
  %20 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %21 = mul <2 x i32> %20, <i32 4, i32 5>
  %22 = add <2 x i32> %21, splat (i32 1)
  %23 = urem <2 x i32> %22, splat (i32 20)
  %24 = uitofp nneg <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, splat (double 2.000000e+01)
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <2 x double> %25, ptr %26, align 8
  %27 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %28 = mul <2 x i32> %27, <i32 6, i32 7>
  %29 = add <2 x i32> %28, splat (i32 1)
  %30 = urem <2 x i32> %29, splat (i32 20)
  %31 = uitofp nneg <2 x i32> %30 to <2 x double>
  %32 = fdiv <2 x double> %31, splat (double 2.000000e+01)
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <2 x double> %32, ptr %33, align 8
  %34 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %35 = mul <2 x i32> %34, <i32 8, i32 9>
  %36 = add <2 x i32> %35, splat (i32 1)
  %37 = urem <2 x i32> %36, splat (i32 20)
  %38 = uitofp nneg <2 x i32> %37 to <2 x double>
  %39 = fdiv <2 x double> %38, splat (double 2.000000e+01)
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <2 x double> %39, ptr %40, align 8
  %41 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %42 = mul <2 x i32> %41, <i32 10, i32 11>
  %43 = add <2 x i32> %42, splat (i32 1)
  %44 = urem <2 x i32> %43, splat (i32 20)
  %45 = uitofp nneg <2 x i32> %44 to <2 x double>
  %46 = fdiv <2 x double> %45, splat (double 2.000000e+01)
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <2 x double> %46, ptr %47, align 8
  %48 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %49 = mul <2 x i32> %48, <i32 12, i32 13>
  %50 = add <2 x i32> %49, splat (i32 1)
  %51 = urem <2 x i32> %50, splat (i32 20)
  %52 = uitofp nneg <2 x i32> %51 to <2 x double>
  %53 = fdiv <2 x double> %52, splat (double 2.000000e+01)
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <2 x double> %53, ptr %54, align 8
  %55 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %56 = mul <2 x i32> %55, <i32 14, i32 15>
  %57 = add <2 x i32> %56, splat (i32 1)
  %58 = urem <2 x i32> %57, splat (i32 20)
  %59 = uitofp nneg <2 x i32> %58 to <2 x double>
  %60 = fdiv <2 x double> %59, splat (double 2.000000e+01)
  %61 = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <2 x double> %60, ptr %61, align 8
  %62 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %63 = mul <2 x i32> %62, <i32 16, i32 17>
  %64 = add <2 x i32> %63, splat (i32 1)
  %65 = urem <2 x i32> %64, splat (i32 20)
  %66 = uitofp nneg <2 x i32> %65 to <2 x double>
  %67 = fdiv <2 x double> %66, splat (double 2.000000e+01)
  %68 = getelementptr inbounds nuw i8, ptr %6, i64 128
  store <2 x double> %67, ptr %68, align 8
  %69 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %70 = mul <2 x i32> %69, <i32 18, i32 19>
  %71 = add <2 x i32> %70, splat (i32 1)
  %72 = urem <2 x i32> %71, splat (i32 20)
  %73 = uitofp nneg <2 x i32> %72 to <2 x double>
  %74 = fdiv <2 x double> %73, splat (double 2.000000e+01)
  %75 = getelementptr inbounds nuw i8, ptr %6, i64 144
  store <2 x double> %74, ptr %75, align 8
  %76 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %77 = mul <2 x i32> %76, <i32 20, i32 21>
  %78 = add <2 x i32> %77, splat (i32 1)
  %79 = urem <2 x i32> %78, splat (i32 20)
  %80 = uitofp nneg <2 x i32> %79 to <2 x double>
  %81 = fdiv <2 x double> %80, splat (double 2.000000e+01)
  %82 = getelementptr inbounds nuw i8, ptr %6, i64 160
  store <2 x double> %81, ptr %82, align 8
  %83 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %84 = mul <2 x i32> %83, <i32 22, i32 23>
  %85 = add <2 x i32> %84, splat (i32 1)
  %86 = urem <2 x i32> %85, splat (i32 20)
  %87 = uitofp nneg <2 x i32> %86 to <2 x double>
  %88 = fdiv <2 x double> %87, splat (double 2.000000e+01)
  %89 = getelementptr inbounds nuw i8, ptr %6, i64 176
  store <2 x double> %88, ptr %89, align 8
  %90 = trunc i64 %indvars.iv58 to i32
  %91 = mul i32 %90, 24
  %92 = or disjoint i32 %91, 1
  %93 = urem i32 %92, 20
  %94 = uitofp nneg i32 %93 to double
  %95 = fdiv double %94, 2.000000e+01
  %96 = getelementptr inbounds nuw i8, ptr %6, i64 192
  store double %95, ptr %96, align 8
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, 20
  br i1 %exitcond61.not, label %.preheader48, label %.preheader50, !llvm.loop !7

.preheader48:                                     ; preds = %.preheader50, %middle.block10
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %middle.block10 ], [ 0, %.preheader50 ]
  %97 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %indvars.iv66
  %broadcast.splatinsert3 = insertelement <2 x i64> poison, i64 %indvars.iv66, i64 0
  %broadcast.splat4 = shufflevector <2 x i64> %broadcast.splatinsert3, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body5

vector.body5:                                     ; preds = %vector.body5, %.preheader48
  %index6 = phi i64 [ 0, %.preheader48 ], [ %index.next8, %vector.body5 ]
  %vec.ind7 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader48 ], [ %vec.ind.next9, %vector.body5 ]
  %98 = add nuw nsw <2 x i64> %vec.ind7, splat (i64 1)
  %99 = mul nuw nsw <2 x i64> %98, %broadcast.splat4
  %100 = trunc nuw nsw <2 x i64> %99 to <2 x i32>
  %101 = urem <2 x i32> %100, splat (i32 30)
  %102 = uitofp nneg <2 x i32> %101 to <2 x double>
  %103 = fdiv <2 x double> %102, splat (double 3.000000e+01)
  %104 = getelementptr inbounds nuw [8 x i8], ptr %97, i64 %index6
  store <2 x double> %103, ptr %104, align 8
  %index.next8 = add nuw i64 %index6, 2
  %vec.ind.next9 = add nuw nsw <2 x i64> %vec.ind7, splat (i64 2)
  %105 = icmp eq i64 %index.next8, 30
  br i1 %105, label %middle.block10, label %vector.body5, !llvm.loop !9

middle.block10:                                   ; preds = %vector.body5
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next67, 20
  br i1 %exitcond69.not, label %.preheader, label %.preheader48, !llvm.loop !13

.preheader:                                       ; preds = %middle.block10, %.preheader
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.preheader ], [ 0, %middle.block10 ]
  %106 = getelementptr inbounds nuw [200 x i8], ptr %4, i64 %indvars.iv74
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %indvars.iv74, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %108 = mul <2 x i32> %107, <i32 2, i32 3>
  %109 = urem <2 x i32> %108, splat (i32 25)
  %110 = uitofp nneg <2 x i32> %109 to <2 x double>
  %111 = fdiv <2 x double> %110, splat (double 2.500000e+01)
  store <2 x double> %111, ptr %106, align 8
  %112 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %113 = mul <2 x i32> %112, <i32 4, i32 5>
  %114 = urem <2 x i32> %113, splat (i32 25)
  %115 = uitofp nneg <2 x i32> %114 to <2 x double>
  %116 = fdiv <2 x double> %115, splat (double 2.500000e+01)
  %117 = getelementptr inbounds nuw i8, ptr %106, i64 16
  store <2 x double> %116, ptr %117, align 8
  %118 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %119 = mul <2 x i32> %118, <i32 6, i32 7>
  %120 = urem <2 x i32> %119, splat (i32 25)
  %121 = uitofp nneg <2 x i32> %120 to <2 x double>
  %122 = fdiv <2 x double> %121, splat (double 2.500000e+01)
  %123 = getelementptr inbounds nuw i8, ptr %106, i64 32
  store <2 x double> %122, ptr %123, align 8
  %124 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %125 = mul <2 x i32> %124, <i32 8, i32 9>
  %126 = urem <2 x i32> %125, splat (i32 25)
  %127 = uitofp nneg <2 x i32> %126 to <2 x double>
  %128 = fdiv <2 x double> %127, splat (double 2.500000e+01)
  %129 = getelementptr inbounds nuw i8, ptr %106, i64 48
  store <2 x double> %128, ptr %129, align 8
  %130 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %131 = mul <2 x i32> %130, <i32 10, i32 11>
  %132 = urem <2 x i32> %131, splat (i32 25)
  %133 = uitofp nneg <2 x i32> %132 to <2 x double>
  %134 = fdiv <2 x double> %133, splat (double 2.500000e+01)
  %135 = getelementptr inbounds nuw i8, ptr %106, i64 64
  store <2 x double> %134, ptr %135, align 8
  %136 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %137 = mul <2 x i32> %136, <i32 12, i32 13>
  %138 = urem <2 x i32> %137, splat (i32 25)
  %139 = uitofp nneg <2 x i32> %138 to <2 x double>
  %140 = fdiv <2 x double> %139, splat (double 2.500000e+01)
  %141 = getelementptr inbounds nuw i8, ptr %106, i64 80
  store <2 x double> %140, ptr %141, align 8
  %142 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %143 = mul <2 x i32> %142, <i32 14, i32 15>
  %144 = urem <2 x i32> %143, splat (i32 25)
  %145 = uitofp nneg <2 x i32> %144 to <2 x double>
  %146 = fdiv <2 x double> %145, splat (double 2.500000e+01)
  %147 = getelementptr inbounds nuw i8, ptr %106, i64 96
  store <2 x double> %146, ptr %147, align 8
  %148 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %149 = mul <2 x i32> %148, <i32 16, i32 17>
  %150 = urem <2 x i32> %149, splat (i32 25)
  %151 = uitofp nneg <2 x i32> %150 to <2 x double>
  %152 = fdiv <2 x double> %151, splat (double 2.500000e+01)
  %153 = getelementptr inbounds nuw i8, ptr %106, i64 112
  store <2 x double> %152, ptr %153, align 8
  %154 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %155 = mul <2 x i32> %154, <i32 18, i32 19>
  %156 = urem <2 x i32> %155, splat (i32 25)
  %157 = uitofp nneg <2 x i32> %156 to <2 x double>
  %158 = fdiv <2 x double> %157, splat (double 2.500000e+01)
  %159 = getelementptr inbounds nuw i8, ptr %106, i64 128
  store <2 x double> %158, ptr %159, align 8
  %160 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %161 = mul <2 x i32> %160, <i32 20, i32 21>
  %162 = urem <2 x i32> %161, splat (i32 25)
  %163 = uitofp nneg <2 x i32> %162 to <2 x double>
  %164 = fdiv <2 x double> %163, splat (double 2.500000e+01)
  %165 = getelementptr inbounds nuw i8, ptr %106, i64 144
  store <2 x double> %164, ptr %165, align 8
  %166 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %167 = mul <2 x i32> %166, <i32 22, i32 23>
  %168 = urem <2 x i32> %167, splat (i32 25)
  %169 = uitofp nneg <2 x i32> %168 to <2 x double>
  %170 = fdiv <2 x double> %169, splat (double 2.500000e+01)
  %171 = getelementptr inbounds nuw i8, ptr %106, i64 160
  store <2 x double> %170, ptr %171, align 8
  %172 = trunc <2 x i64> %broadcast.splat14 to <2 x i32>
  %173 = mul <2 x i32> %172, <i32 24, i32 25>
  %174 = urem <2 x i32> %173, splat (i32 25)
  %175 = uitofp nneg <2 x i32> %174 to <2 x double>
  %176 = fdiv <2 x double> %175, splat (double 2.500000e+01)
  %177 = getelementptr inbounds nuw i8, ptr %106, i64 176
  store <2 x double> %176, ptr %177, align 8
  %178 = trunc i64 %indvars.iv74 to i32
  %179 = mul i32 %178, 26
  %180 = urem i32 %179, 25
  %181 = uitofp nneg i32 %180 to double
  %182 = fdiv double %181, 2.500000e+01
  %183 = getelementptr inbounds nuw i8, ptr %106, i64 192
  store double %182, ptr %183, align 8
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next75, 30
  br i1 %exitcond77.not, label %184, label %.preheader, !llvm.loop !14

184:                                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_gemm(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #3 {
  %6 = insertelement <2 x double> poison, double %1, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader24

.preheader24:                                     ; preds = %5, %212
  %indvars.iv32 = phi i64 [ 0, %5 ], [ %indvars.iv.next33, %212 ]
  %8 = getelementptr inbounds nuw [200 x i8], ptr %2, i64 %indvars.iv32
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load <2 x double>, ptr %8, align 8
  %11 = fmul <2 x double> %7, %10
  store <2 x double> %11, ptr %8, align 8
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %14 = load <2 x double>, ptr %12, align 8
  %15 = fmul <2 x double> %7, %14
  store <2 x double> %15, ptr %12, align 8
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %18 = load <2 x double>, ptr %16, align 8
  %19 = fmul <2 x double> %7, %18
  store <2 x double> %19, ptr %16, align 8
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %22 = load <2 x double>, ptr %20, align 8
  %23 = fmul <2 x double> %7, %22
  store <2 x double> %23, ptr %20, align 8
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %26 = load <2 x double>, ptr %24, align 8
  %27 = fmul <2 x double> %7, %26
  store <2 x double> %27, ptr %24, align 8
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 88
  %30 = load <2 x double>, ptr %28, align 8
  %31 = fmul <2 x double> %7, %30
  store <2 x double> %31, ptr %28, align 8
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 96
  %33 = getelementptr inbounds nuw i8, ptr %8, i64 104
  %34 = load <2 x double>, ptr %32, align 8
  %35 = fmul <2 x double> %7, %34
  store <2 x double> %35, ptr %32, align 8
  %36 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %37 = getelementptr inbounds nuw i8, ptr %8, i64 120
  %38 = load <2 x double>, ptr %36, align 8
  %39 = fmul <2 x double> %7, %38
  store <2 x double> %39, ptr %36, align 8
  %40 = getelementptr inbounds nuw i8, ptr %8, i64 128
  %41 = getelementptr inbounds nuw i8, ptr %8, i64 136
  %42 = load <2 x double>, ptr %40, align 8
  %43 = fmul <2 x double> %7, %42
  store <2 x double> %43, ptr %40, align 8
  %44 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %45 = getelementptr inbounds nuw i8, ptr %8, i64 152
  %46 = load <2 x double>, ptr %44, align 8
  %47 = fmul <2 x double> %7, %46
  store <2 x double> %47, ptr %44, align 8
  %48 = getelementptr inbounds nuw i8, ptr %8, i64 160
  %49 = getelementptr inbounds nuw i8, ptr %8, i64 168
  %50 = load <2 x double>, ptr %48, align 8
  %51 = fmul <2 x double> %7, %50
  store <2 x double> %51, ptr %48, align 8
  %52 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %53 = getelementptr inbounds nuw i8, ptr %8, i64 184
  %54 = load <2 x double>, ptr %52, align 8
  %55 = fmul <2 x double> %7, %54
  store <2 x double> %55, ptr %52, align 8
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 192
  %57 = load double, ptr %56, align 8
  %58 = fmul double %1, %57
  store double %58, ptr %56, align 8
  %59 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %indvars.iv32
  %.promoted = load double, ptr %8, align 8
  %.promoted36 = load double, ptr %9, align 8
  %.promoted37 = load double, ptr %12, align 8
  %.promoted38 = load double, ptr %13, align 8
  %.promoted39 = load double, ptr %16, align 8
  %.promoted40 = load double, ptr %17, align 8
  %.promoted41 = load double, ptr %20, align 8
  %.promoted42 = load double, ptr %21, align 8
  %.promoted43 = load double, ptr %24, align 8
  %.promoted44 = load double, ptr %25, align 8
  %.promoted45 = load double, ptr %28, align 8
  %.promoted46 = load double, ptr %29, align 8
  %.promoted47 = load double, ptr %32, align 8
  %.promoted48 = load double, ptr %36, align 8
  %.promoted49 = load double, ptr %37, align 8
  %.promoted50 = load double, ptr %40, align 8
  %.promoted51 = load double, ptr %41, align 8
  %.promoted52 = load double, ptr %44, align 8
  %.promoted53 = load double, ptr %45, align 8
  %.promoted54 = load double, ptr %48, align 8
  %.promoted55 = load double, ptr %49, align 8
  %.promoted56 = load double, ptr %52, align 8
  %.promoted57 = load double, ptr %53, align 8
  %.promoted58 = load double, ptr %56, align 8
  %60 = extractelement <2 x double> %35, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader24, %.preheader
  %61 = phi double [ %.promoted58, %.preheader24 ], [ %211, %.preheader ]
  %62 = phi double [ %.promoted57, %.preheader24 ], [ %206, %.preheader ]
  %63 = phi double [ %.promoted56, %.preheader24 ], [ %201, %.preheader ]
  %64 = phi double [ %.promoted55, %.preheader24 ], [ %196, %.preheader ]
  %65 = phi double [ %.promoted54, %.preheader24 ], [ %191, %.preheader ]
  %66 = phi double [ %.promoted53, %.preheader24 ], [ %186, %.preheader ]
  %67 = phi double [ %.promoted52, %.preheader24 ], [ %181, %.preheader ]
  %68 = phi double [ %.promoted51, %.preheader24 ], [ %176, %.preheader ]
  %69 = phi double [ %.promoted50, %.preheader24 ], [ %171, %.preheader ]
  %70 = phi double [ %.promoted49, %.preheader24 ], [ %166, %.preheader ]
  %71 = phi double [ %.promoted48, %.preheader24 ], [ %161, %.preheader ]
  %72 = phi double [ %.promoted47, %.preheader24 ], [ %151, %.preheader ]
  %73 = phi double [ %.promoted46, %.preheader24 ], [ %146, %.preheader ]
  %74 = phi double [ %.promoted45, %.preheader24 ], [ %141, %.preheader ]
  %75 = phi double [ %.promoted44, %.preheader24 ], [ %136, %.preheader ]
  %76 = phi double [ %.promoted43, %.preheader24 ], [ %131, %.preheader ]
  %77 = phi double [ %.promoted42, %.preheader24 ], [ %126, %.preheader ]
  %78 = phi double [ %.promoted41, %.preheader24 ], [ %121, %.preheader ]
  %79 = phi double [ %.promoted40, %.preheader24 ], [ %116, %.preheader ]
  %80 = phi double [ %.promoted39, %.preheader24 ], [ %111, %.preheader ]
  %81 = phi double [ %.promoted38, %.preheader24 ], [ %106, %.preheader ]
  %82 = phi double [ %.promoted37, %.preheader24 ], [ %101, %.preheader ]
  %83 = phi double [ %.promoted36, %.preheader24 ], [ %96, %.preheader ]
  %84 = phi double [ %.promoted, %.preheader24 ], [ %91, %.preheader ]
  %85 = phi double [ %60, %.preheader24 ], [ %156, %.preheader ]
  %indvars.iv = phi i64 [ 0, %.preheader24 ], [ %indvars.iv.next, %.preheader ]
  %86 = getelementptr inbounds nuw [8 x i8], ptr %59, i64 %indvars.iv
  %87 = getelementptr inbounds nuw [200 x i8], ptr %4, i64 %indvars.iv
  %88 = load double, ptr %86, align 8
  %89 = fmul double %0, %88
  %90 = load double, ptr %87, align 8
  %91 = tail call double @llvm.fmuladd.f64(double %89, double %90, double %84)
  store double %91, ptr %8, align 8
  %92 = load double, ptr %86, align 8
  %93 = fmul double %0, %92
  %94 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %95 = load double, ptr %94, align 8
  %96 = tail call double @llvm.fmuladd.f64(double %93, double %95, double %83)
  store double %96, ptr %9, align 8
  %97 = load double, ptr %86, align 8
  %98 = fmul double %0, %97
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %100 = load double, ptr %99, align 8
  %101 = tail call double @llvm.fmuladd.f64(double %98, double %100, double %82)
  store double %101, ptr %12, align 8
  %102 = load double, ptr %86, align 8
  %103 = fmul double %0, %102
  %104 = getelementptr inbounds nuw i8, ptr %87, i64 24
  %105 = load double, ptr %104, align 8
  %106 = tail call double @llvm.fmuladd.f64(double %103, double %105, double %81)
  store double %106, ptr %13, align 8
  %107 = load double, ptr %86, align 8
  %108 = fmul double %0, %107
  %109 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %110 = load double, ptr %109, align 8
  %111 = tail call double @llvm.fmuladd.f64(double %108, double %110, double %80)
  store double %111, ptr %16, align 8
  %112 = load double, ptr %86, align 8
  %113 = fmul double %0, %112
  %114 = getelementptr inbounds nuw i8, ptr %87, i64 40
  %115 = load double, ptr %114, align 8
  %116 = tail call double @llvm.fmuladd.f64(double %113, double %115, double %79)
  store double %116, ptr %17, align 8
  %117 = load double, ptr %86, align 8
  %118 = fmul double %0, %117
  %119 = getelementptr inbounds nuw i8, ptr %87, i64 48
  %120 = load double, ptr %119, align 8
  %121 = tail call double @llvm.fmuladd.f64(double %118, double %120, double %78)
  store double %121, ptr %20, align 8
  %122 = load double, ptr %86, align 8
  %123 = fmul double %0, %122
  %124 = getelementptr inbounds nuw i8, ptr %87, i64 56
  %125 = load double, ptr %124, align 8
  %126 = tail call double @llvm.fmuladd.f64(double %123, double %125, double %77)
  store double %126, ptr %21, align 8
  %127 = load double, ptr %86, align 8
  %128 = fmul double %0, %127
  %129 = getelementptr inbounds nuw i8, ptr %87, i64 64
  %130 = load double, ptr %129, align 8
  %131 = tail call double @llvm.fmuladd.f64(double %128, double %130, double %76)
  store double %131, ptr %24, align 8
  %132 = load double, ptr %86, align 8
  %133 = fmul double %0, %132
  %134 = getelementptr inbounds nuw i8, ptr %87, i64 72
  %135 = load double, ptr %134, align 8
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %135, double %75)
  store double %136, ptr %25, align 8
  %137 = load double, ptr %86, align 8
  %138 = fmul double %0, %137
  %139 = getelementptr inbounds nuw i8, ptr %87, i64 80
  %140 = load double, ptr %139, align 8
  %141 = tail call double @llvm.fmuladd.f64(double %138, double %140, double %74)
  store double %141, ptr %28, align 8
  %142 = load double, ptr %86, align 8
  %143 = fmul double %0, %142
  %144 = getelementptr inbounds nuw i8, ptr %87, i64 88
  %145 = load double, ptr %144, align 8
  %146 = tail call double @llvm.fmuladd.f64(double %143, double %145, double %73)
  store double %146, ptr %29, align 8
  %147 = load double, ptr %86, align 8
  %148 = fmul double %0, %147
  %149 = getelementptr inbounds nuw i8, ptr %87, i64 96
  %150 = load double, ptr %149, align 8
  %151 = tail call double @llvm.fmuladd.f64(double %148, double %150, double %72)
  store double %151, ptr %32, align 8
  %152 = load double, ptr %86, align 8
  %153 = fmul double %0, %152
  %154 = getelementptr inbounds nuw i8, ptr %87, i64 104
  %155 = load double, ptr %154, align 8
  %156 = tail call double @llvm.fmuladd.f64(double %153, double %155, double %85)
  store double %156, ptr %33, align 8
  %157 = load double, ptr %86, align 8
  %158 = fmul double %0, %157
  %159 = getelementptr inbounds nuw i8, ptr %87, i64 112
  %160 = load double, ptr %159, align 8
  %161 = tail call double @llvm.fmuladd.f64(double %158, double %160, double %71)
  store double %161, ptr %36, align 8
  %162 = load double, ptr %86, align 8
  %163 = fmul double %0, %162
  %164 = getelementptr inbounds nuw i8, ptr %87, i64 120
  %165 = load double, ptr %164, align 8
  %166 = tail call double @llvm.fmuladd.f64(double %163, double %165, double %70)
  store double %166, ptr %37, align 8
  %167 = load double, ptr %86, align 8
  %168 = fmul double %0, %167
  %169 = getelementptr inbounds nuw i8, ptr %87, i64 128
  %170 = load double, ptr %169, align 8
  %171 = tail call double @llvm.fmuladd.f64(double %168, double %170, double %69)
  store double %171, ptr %40, align 8
  %172 = load double, ptr %86, align 8
  %173 = fmul double %0, %172
  %174 = getelementptr inbounds nuw i8, ptr %87, i64 136
  %175 = load double, ptr %174, align 8
  %176 = tail call double @llvm.fmuladd.f64(double %173, double %175, double %68)
  store double %176, ptr %41, align 8
  %177 = load double, ptr %86, align 8
  %178 = fmul double %0, %177
  %179 = getelementptr inbounds nuw i8, ptr %87, i64 144
  %180 = load double, ptr %179, align 8
  %181 = tail call double @llvm.fmuladd.f64(double %178, double %180, double %67)
  store double %181, ptr %44, align 8
  %182 = load double, ptr %86, align 8
  %183 = fmul double %0, %182
  %184 = getelementptr inbounds nuw i8, ptr %87, i64 152
  %185 = load double, ptr %184, align 8
  %186 = tail call double @llvm.fmuladd.f64(double %183, double %185, double %66)
  store double %186, ptr %45, align 8
  %187 = load double, ptr %86, align 8
  %188 = fmul double %0, %187
  %189 = getelementptr inbounds nuw i8, ptr %87, i64 160
  %190 = load double, ptr %189, align 8
  %191 = tail call double @llvm.fmuladd.f64(double %188, double %190, double %65)
  store double %191, ptr %48, align 8
  %192 = load double, ptr %86, align 8
  %193 = fmul double %0, %192
  %194 = getelementptr inbounds nuw i8, ptr %87, i64 168
  %195 = load double, ptr %194, align 8
  %196 = tail call double @llvm.fmuladd.f64(double %193, double %195, double %64)
  store double %196, ptr %49, align 8
  %197 = load double, ptr %86, align 8
  %198 = fmul double %0, %197
  %199 = getelementptr inbounds nuw i8, ptr %87, i64 176
  %200 = load double, ptr %199, align 8
  %201 = tail call double @llvm.fmuladd.f64(double %198, double %200, double %63)
  store double %201, ptr %52, align 8
  %202 = load double, ptr %86, align 8
  %203 = fmul double %0, %202
  %204 = getelementptr inbounds nuw i8, ptr %87, i64 184
  %205 = load double, ptr %204, align 8
  %206 = tail call double @llvm.fmuladd.f64(double %203, double %205, double %62)
  store double %206, ptr %53, align 8
  %207 = load double, ptr %86, align 8
  %208 = fmul double %0, %207
  %209 = getelementptr inbounds nuw i8, ptr %87, i64 192
  %210 = load double, ptr %209, align 8
  %211 = tail call double @llvm.fmuladd.f64(double %208, double %210, double %61)
  store double %211, ptr %56, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %212, label %.preheader, !llvm.loop !15

212:                                              ; preds = %.preheader
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, 20
  br i1 %exitcond35.not, label %213, label %.preheader24, !llvm.loop !16

213:                                              ; preds = %212
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01GFHCPBMG@C?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 20
  %6 = getelementptr inbounds nuw [200 x i8], ptr %0, i64 %indvars.iv18
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !17

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 20
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !18

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01GFHCPBMG@C?$AA@") #8
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemm\\gemm.c", directory: "C:\\work\\llvm-profitability-research")
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
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
