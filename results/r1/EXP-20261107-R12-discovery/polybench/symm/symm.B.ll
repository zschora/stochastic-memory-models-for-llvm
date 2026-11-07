; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\symm\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\symm\\symm.c"
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
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8) #9
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %8 = load double, ptr %4, align 8
  %9 = load double, ptr %3, align 8
  tail call fastcc void @kernel_symm(double noundef %9, double noundef %8, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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
  %6 = ptrtoaddr ptr %2 to i64
  %7 = ptrtoaddr ptr %4 to i64
  store double 1.500000e+00, ptr %0, align 8
  store double 1.200000e+00, ptr %1, align 8
  %8 = sub i64 %6, %7
  %diff.check = icmp ugt i64 %8, -16
  br label %.preheader45

.preheader45:                                     ; preds = %5, %middle.block
  %indvars.iv52 = phi i64 [ 0, %5 ], [ %indvars.iv.next53, %middle.block ]
  %9 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv52
  %10 = add nuw nsw i64 %indvars.iv52, 30
  %11 = getelementptr inbounds nuw [240 x i8], ptr %4, i64 %indvars.iv52
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader45
  %broadcast.splatinsert1 = insertelement <2 x i64> poison, i64 %10, i64 0
  %broadcast.splat2 = shufflevector <2 x i64> %broadcast.splatinsert1, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv52, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %12 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %13 = add <2 x i32> %12, <i32 0, i32 1>
  %14 = uitofp nneg <2 x i32> %13 to <2 x double>
  %15 = fdiv <2 x double> %14, splat (double 2.000000e+01)
  store <2 x double> %15, ptr %9, align 8
  %16 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %17 = add <2 x i32> %16, <i32 0, i32 -1>
  %18 = uitofp nneg <2 x i32> %17 to <2 x double>
  %19 = fdiv <2 x double> %18, splat (double 2.000000e+01)
  store <2 x double> %19, ptr %11, align 8
  %20 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %21 = add <2 x i32> %20, <i32 2, i32 3>
  %22 = uitofp nneg <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, splat (double 2.000000e+01)
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <2 x double> %23, ptr %24, align 8
  %25 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %26 = add <2 x i32> %25, <i32 -2, i32 -3>
  %27 = uitofp nneg <2 x i32> %26 to <2 x double>
  %28 = fdiv <2 x double> %27, splat (double 2.000000e+01)
  %29 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <2 x double> %28, ptr %29, align 8
  %30 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %31 = add <2 x i32> %30, <i32 4, i32 5>
  %32 = uitofp nneg <2 x i32> %31 to <2 x double>
  %33 = fdiv <2 x double> %32, splat (double 2.000000e+01)
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <2 x double> %33, ptr %34, align 8
  %35 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %36 = add <2 x i32> %35, <i32 -4, i32 -5>
  %37 = uitofp nneg <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, splat (double 2.000000e+01)
  %39 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store <2 x double> %38, ptr %39, align 8
  %40 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %41 = add <2 x i32> %40, <i32 6, i32 7>
  %42 = uitofp nneg <2 x i32> %41 to <2 x double>
  %43 = fdiv <2 x double> %42, splat (double 2.000000e+01)
  %44 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <2 x double> %43, ptr %44, align 8
  %45 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %46 = add <2 x i32> %45, <i32 -6, i32 -7>
  %47 = uitofp nneg <2 x i32> %46 to <2 x double>
  %48 = fdiv <2 x double> %47, splat (double 2.000000e+01)
  %49 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store <2 x double> %48, ptr %49, align 8
  %50 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %51 = add <2 x i32> %50, <i32 8, i32 9>
  %52 = uitofp nneg <2 x i32> %51 to <2 x double>
  %53 = fdiv <2 x double> %52, splat (double 2.000000e+01)
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <2 x double> %53, ptr %54, align 8
  %55 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %56 = add <2 x i32> %55, <i32 -8, i32 -9>
  %57 = uitofp nneg <2 x i32> %56 to <2 x double>
  %58 = fdiv <2 x double> %57, splat (double 2.000000e+01)
  %59 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store <2 x double> %58, ptr %59, align 8
  %60 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %61 = add <2 x i32> %60, <i32 10, i32 11>
  %62 = uitofp nneg <2 x i32> %61 to <2 x double>
  %63 = fdiv <2 x double> %62, splat (double 2.000000e+01)
  %64 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <2 x double> %63, ptr %64, align 8
  %65 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %66 = add <2 x i32> %65, <i32 -10, i32 -11>
  %67 = uitofp nneg <2 x i32> %66 to <2 x double>
  %68 = fdiv <2 x double> %67, splat (double 2.000000e+01)
  %69 = getelementptr inbounds nuw i8, ptr %11, i64 80
  store <2 x double> %68, ptr %69, align 8
  %70 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %71 = add <2 x i32> %70, <i32 12, i32 13>
  %72 = uitofp nneg <2 x i32> %71 to <2 x double>
  %73 = fdiv <2 x double> %72, splat (double 2.000000e+01)
  %74 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <2 x double> %73, ptr %74, align 8
  %75 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %76 = add <2 x i32> %75, <i32 -12, i32 -13>
  %77 = uitofp nneg <2 x i32> %76 to <2 x double>
  %78 = fdiv <2 x double> %77, splat (double 2.000000e+01)
  %79 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store <2 x double> %78, ptr %79, align 8
  %80 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %81 = add <2 x i32> %80, <i32 14, i32 15>
  %82 = uitofp nneg <2 x i32> %81 to <2 x double>
  %83 = fdiv <2 x double> %82, splat (double 2.000000e+01)
  %84 = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <2 x double> %83, ptr %84, align 8
  %85 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %86 = add <2 x i32> %85, <i32 -14, i32 -15>
  %87 = uitofp nneg <2 x i32> %86 to <2 x double>
  %88 = fdiv <2 x double> %87, splat (double 2.000000e+01)
  %89 = getelementptr inbounds nuw i8, ptr %11, i64 112
  store <2 x double> %88, ptr %89, align 8
  %90 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %91 = add <2 x i32> %90, <i32 16, i32 17>
  %92 = uitofp nneg <2 x i32> %91 to <2 x double>
  %93 = fdiv <2 x double> %92, splat (double 2.000000e+01)
  %94 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <2 x double> %93, ptr %94, align 8
  %95 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %96 = add <2 x i32> %95, <i32 -16, i32 -17>
  %97 = uitofp nneg <2 x i32> %96 to <2 x double>
  %98 = fdiv <2 x double> %97, splat (double 2.000000e+01)
  %99 = getelementptr inbounds nuw i8, ptr %11, i64 128
  store <2 x double> %98, ptr %99, align 8
  %100 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %101 = add <2 x i32> %100, <i32 18, i32 19>
  %102 = uitofp nneg <2 x i32> %101 to <2 x double>
  %103 = fdiv <2 x double> %102, splat (double 2.000000e+01)
  %104 = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <2 x double> %103, ptr %104, align 8
  %105 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %106 = add <2 x i32> %105, <i32 -18, i32 -19>
  %107 = uitofp nneg <2 x i32> %106 to <2 x double>
  %108 = fdiv <2 x double> %107, splat (double 2.000000e+01)
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 144
  store <2 x double> %108, ptr %109, align 8
  %110 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %111 = add <2 x i32> %110, <i32 20, i32 21>
  %112 = uitofp nneg <2 x i32> %111 to <2 x double>
  %113 = fdiv <2 x double> %112, splat (double 2.000000e+01)
  %114 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <2 x double> %113, ptr %114, align 8
  %115 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %116 = add <2 x i32> %115, <i32 -20, i32 -21>
  %117 = uitofp nneg <2 x i32> %116 to <2 x double>
  %118 = fdiv <2 x double> %117, splat (double 2.000000e+01)
  %119 = getelementptr inbounds nuw i8, ptr %11, i64 160
  store <2 x double> %118, ptr %119, align 8
  %120 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %121 = add <2 x i32> %120, <i32 22, i32 23>
  %122 = uitofp nneg <2 x i32> %121 to <2 x double>
  %123 = fdiv <2 x double> %122, splat (double 2.000000e+01)
  %124 = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <2 x double> %123, ptr %124, align 8
  %125 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %126 = add <2 x i32> %125, <i32 -22, i32 -23>
  %127 = uitofp nneg <2 x i32> %126 to <2 x double>
  %128 = fdiv <2 x double> %127, splat (double 2.000000e+01)
  %129 = getelementptr inbounds nuw i8, ptr %11, i64 176
  store <2 x double> %128, ptr %129, align 8
  %130 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %131 = add <2 x i32> %130, <i32 24, i32 25>
  %132 = uitofp nneg <2 x i32> %131 to <2 x double>
  %133 = fdiv <2 x double> %132, splat (double 2.000000e+01)
  %134 = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <2 x double> %133, ptr %134, align 8
  %135 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %136 = add <2 x i32> %135, <i32 -24, i32 -25>
  %137 = uitofp nneg <2 x i32> %136 to <2 x double>
  %138 = fdiv <2 x double> %137, splat (double 2.000000e+01)
  %139 = getelementptr inbounds nuw i8, ptr %11, i64 192
  store <2 x double> %138, ptr %139, align 8
  %140 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %141 = add <2 x i32> %140, <i32 26, i32 27>
  %142 = uitofp nneg <2 x i32> %141 to <2 x double>
  %143 = fdiv <2 x double> %142, splat (double 2.000000e+01)
  %144 = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <2 x double> %143, ptr %144, align 8
  %145 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %146 = add <2 x i32> %145, <i32 -26, i32 -27>
  %147 = uitofp nneg <2 x i32> %146 to <2 x double>
  %148 = fdiv <2 x double> %147, splat (double 2.000000e+01)
  %149 = getelementptr inbounds nuw i8, ptr %11, i64 208
  store <2 x double> %148, ptr %149, align 8
  %150 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %151 = add <2 x i32> %150, <i32 28, i32 29>
  %152 = uitofp nneg <2 x i32> %151 to <2 x double>
  %153 = fdiv <2 x double> %152, splat (double 2.000000e+01)
  %154 = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <2 x double> %153, ptr %154, align 8
  %155 = trunc <2 x i64> %broadcast.splat2 to <2 x i32>
  %156 = add <2 x i32> %155, <i32 -28, i32 -29>
  %157 = uitofp nneg <2 x i32> %156 to <2 x double>
  %158 = fdiv <2 x double> %157, splat (double 2.000000e+01)
  %159 = getelementptr inbounds nuw i8, ptr %11, i64 224
  store <2 x double> %158, ptr %159, align 8
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader45, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %.preheader45 ]
  %160 = add nuw nsw i64 %indvars.iv, %indvars.iv52
  %161 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv
  %162 = sub nuw nsw i64 %10, %indvars.iv
  %163 = trunc nuw nsw i64 %160 to i32
  %164 = uitofp nneg i32 %163 to double
  %165 = trunc nuw nsw i64 %162 to i32
  %166 = uitofp nneg i32 %165 to double
  %167 = insertelement <2 x double> poison, double %164, i64 0
  %168 = insertelement <2 x double> %167, double %166, i64 1
  %169 = fdiv <2 x double> %168, splat (double 2.000000e+01)
  %170 = extractelement <2 x double> %169, i64 0
  store double %170, ptr %161, align 8
  %171 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  %172 = extractelement <2 x double> %169, i64 1
  store double %172, ptr %171, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %173 = add nuw nsw i64 %indvars.iv.next, %indvars.iv52
  %174 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv.next
  %175 = sub nuw nsw i64 %10, %indvars.iv.next
  %176 = trunc nuw nsw i64 %173 to i32
  %177 = uitofp nneg i32 %176 to double
  %178 = trunc nuw nsw i64 %175 to i32
  %179 = uitofp nneg i32 %178 to double
  %180 = insertelement <2 x double> poison, double %177, i64 0
  %181 = insertelement <2 x double> %180, double %179, i64 1
  %182 = fdiv <2 x double> %181, splat (double 2.000000e+01)
  %183 = extractelement <2 x double> %182, i64 0
  store double %183, ptr %174, align 8
  %184 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.next
  %185 = extractelement <2 x double> %182, i64 1
  store double %185, ptr %184, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !7

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, 20
  br i1 %exitcond55.not, label %.preheader, label %.preheader45, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %middle.block8, %.loopexit23
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next69, 20
  br i1 %exitcond73.not, label %206, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %middle.block, %.loopexit
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.loopexit ], [ 0, %middle.block ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.loopexit ], [ 1, %middle.block ]
  %186 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv68
  %min.iters.check10 = icmp samesign ult i64 %indvars.iv62, 2
  br i1 %min.iters.check10, label %scalar.ph9.preheader, label %vector.ph11

vector.ph11:                                      ; preds = %.preheader
  %n.vec12 = and i64 %indvars.iv62, 9223372036854775806
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %indvars.iv68, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph11
  %index16 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body15 ]
  %vec.ind17 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph11 ], [ %vec.ind.next19, %vector.body15 ]
  %187 = add nuw nsw <2 x i64> %vec.ind17, %broadcast.splat14
  %188 = trunc nuw nsw <2 x i64> %187 to <2 x i32>
  %189 = sitofp <2 x i32> %188 to <2 x double>
  %190 = fdiv <2 x double> %189, splat (double 2.000000e+01)
  %191 = getelementptr inbounds nuw [8 x i8], ptr %186, i64 %index16
  store <2 x double> %190, ptr %191, align 8
  %index.next18 = add nuw i64 %index16, 2
  %vec.ind.next19 = add nuw nsw <2 x i64> %vec.ind17, splat (i64 2)
  %192 = icmp eq i64 %index.next18, %n.vec12
  br i1 %192, label %middle.block20, label %vector.body15, !llvm.loop !13

middle.block20:                                   ; preds = %vector.body15
  %cmp.n21 = icmp eq i64 %indvars.iv62, %n.vec12
  br i1 %cmp.n21, label %.loopexit23, label %scalar.ph9.preheader

scalar.ph9.preheader:                             ; preds = %.preheader, %middle.block20
  %indvars.iv56.ph = phi i64 [ 0, %.preheader ], [ %n.vec12, %middle.block20 ]
  br label %scalar.ph9

scalar.ph9:                                       ; preds = %scalar.ph9.preheader, %scalar.ph9
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %scalar.ph9 ], [ %indvars.iv56.ph, %scalar.ph9.preheader ]
  %193 = add nuw nsw i64 %indvars.iv56, %indvars.iv68
  %194 = trunc nuw nsw i64 %193 to i32
  %195 = sitofp i32 %194 to double
  %196 = fdiv double %195, 2.000000e+01
  %197 = getelementptr inbounds nuw [8 x i8], ptr %186, i64 %indvars.iv56
  store double %196, ptr %197, align 8
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next57, %indvars.iv62
  br i1 %exitcond61.not, label %.loopexit23, label %scalar.ph9, !llvm.loop !16

.loopexit23:                                      ; preds = %scalar.ph9, %middle.block20
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %198 = icmp samesign ult i64 %indvars.iv68, 19
  br i1 %198, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit23
  %199 = sub nuw nsw i64 19, %indvars.iv68
  %min.iters.check = icmp samesign ugt i64 %indvars.iv68, 15
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph.preheader
  %n.vec = and i64 %199, 28
  %200 = add nuw i64 %indvars.iv62, %n.vec
  %201 = getelementptr inbounds nuw [8 x i8], ptr %186, i64 %indvars.iv62
  br label %vector.body5

vector.body5:                                     ; preds = %vector.body5, %vector.ph4
  %index6 = phi i64 [ 0, %vector.ph4 ], [ %index.next7, %vector.body5 ]
  %202 = getelementptr inbounds nuw [8 x i8], ptr %201, i64 %index6
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 16
  store <2 x double> splat (double -9.990000e+02), ptr %202, align 8
  store <2 x double> splat (double -9.990000e+02), ptr %203, align 8
  %index.next7 = add nuw i64 %index6, 4
  %204 = icmp eq i64 %index.next7, %n.vec
  br i1 %204, label %middle.block8, label %vector.body5, !llvm.loop !17

middle.block8:                                    ; preds = %vector.body5
  %cmp.n = icmp eq i64 %199, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %.lr.ph.preheader, %middle.block8
  %indvars.iv64.ph = phi i64 [ %indvars.iv62, %.lr.ph.preheader ], [ %200, %middle.block8 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph ], [ %indvars.iv64.ph, %.lr.ph.preheader25 ]
  %205 = getelementptr inbounds nuw [8 x i8], ptr %186, i64 %indvars.iv64
  store double -9.990000e+02, ptr %205, align 8
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 20
  br i1 %exitcond67.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

206:                                              ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_symm(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #3 {
  %6 = insertelement <2 x ptr> poison, ptr %4, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %3, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, <2 x i64> <i64 4800, i64 3200>
  %scevgep8 = getelementptr i8, ptr %2, i64 4800
  %9 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %10 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x ptr> poison, ptr %scevgep8, i64 0
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> zeroinitializer
  %13 = icmp ult <2 x ptr> %10, %8
  %14 = icmp ult <2 x ptr> %7, %12
  %15 = and <2 x i1> %13, %14
  %16 = bitcast <2 x i1> %15 to i2
  %.not19 = icmp eq i2 %16, 0
  %broadcast.splatinsert12 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat13 = shufflevector <2 x double> %broadcast.splatinsert12, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader42

.preheader42:                                     ; preds = %5, %.split.us
  %indvars.iv59 = phi i64 [ 0, %5 ], [ %indvars.iv.next60, %.split.us ]
  %.not = icmp eq i64 %indvars.iv59, 0
  %17 = getelementptr inbounds nuw [240 x i8], ptr %2, i64 %indvars.iv59
  %18 = getelementptr inbounds nuw [240 x i8], ptr %4, i64 %indvars.iv59
  %19 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv59
  %20 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv59
  br i1 %.not, label %vector.memcheck, label %.preheader.us

vector.memcheck:                                  ; preds = %.preheader42
  br i1 %.not19, label %vector.body, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.body, %vector.memcheck
  %indvars.iv55.ph = phi i64 [ 0, %vector.memcheck ], [ 28, %vector.body ]
  br label %.preheader

vector.body:                                      ; preds = %vector.memcheck
  %21 = load double, ptr %20, align 8, !alias.scope !19
  %broadcast.splatinsert17 = insertelement <2 x double> poison, double %21, i64 0
  %broadcast.splat18 = shufflevector <2 x double> %broadcast.splatinsert17, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %wide.load = load <2 x double>, ptr %17, align 8, !alias.scope !22, !noalias !24
  %wide.load14 = load <2 x double>, ptr %22, align 8, !alias.scope !22, !noalias !24
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %wide.load15 = load <2 x double>, ptr %18, align 8, !alias.scope !26
  %wide.load16 = load <2 x double>, ptr %23, align 8, !alias.scope !26
  %24 = fmul <2 x double> %broadcast.splat, %wide.load15
  %25 = fmul <2 x double> %broadcast.splat, %wide.load16
  %26 = fmul <2 x double> %24, %broadcast.splat18
  %27 = fmul <2 x double> %25, %broadcast.splat18
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load, <2 x double> %26)
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load14, <2 x double> %27)
  %30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %28)
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %29)
  store <2 x double> %30, ptr %17, align 8, !alias.scope !22, !noalias !24
  store <2 x double> %31, ptr %22, align 8, !alias.scope !22, !noalias !24
  %32 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %17, i64 48
  %wide.load.1 = load <2 x double>, ptr %32, align 8, !alias.scope !22, !noalias !24
  %wide.load14.1 = load <2 x double>, ptr %33, align 8, !alias.scope !22, !noalias !24
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %35 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %wide.load15.1 = load <2 x double>, ptr %34, align 8, !alias.scope !26
  %wide.load16.1 = load <2 x double>, ptr %35, align 8, !alias.scope !26
  %36 = fmul <2 x double> %broadcast.splat, %wide.load15.1
  %37 = fmul <2 x double> %broadcast.splat, %wide.load16.1
  %38 = fmul <2 x double> %36, %broadcast.splat18
  %39 = fmul <2 x double> %37, %broadcast.splat18
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load.1, <2 x double> %38)
  %41 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load14.1, <2 x double> %39)
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %40)
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %41)
  store <2 x double> %42, ptr %32, align 8, !alias.scope !22, !noalias !24
  store <2 x double> %43, ptr %33, align 8, !alias.scope !22, !noalias !24
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 64
  %45 = getelementptr inbounds nuw i8, ptr %17, i64 80
  %wide.load.2 = load <2 x double>, ptr %44, align 8, !alias.scope !22, !noalias !24
  %wide.load14.2 = load <2 x double>, ptr %45, align 8, !alias.scope !22, !noalias !24
  %46 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 80
  %wide.load15.2 = load <2 x double>, ptr %46, align 8, !alias.scope !26
  %wide.load16.2 = load <2 x double>, ptr %47, align 8, !alias.scope !26
  %48 = fmul <2 x double> %broadcast.splat, %wide.load15.2
  %49 = fmul <2 x double> %broadcast.splat, %wide.load16.2
  %50 = fmul <2 x double> %48, %broadcast.splat18
  %51 = fmul <2 x double> %49, %broadcast.splat18
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load.2, <2 x double> %50)
  %53 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load14.2, <2 x double> %51)
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %52)
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %53)
  store <2 x double> %54, ptr %44, align 8, !alias.scope !22, !noalias !24
  store <2 x double> %55, ptr %45, align 8, !alias.scope !22, !noalias !24
  %56 = getelementptr inbounds nuw i8, ptr %17, i64 96
  %57 = getelementptr inbounds nuw i8, ptr %17, i64 112
  %wide.load.3 = load <2 x double>, ptr %56, align 8, !alias.scope !22, !noalias !24
  %wide.load14.3 = load <2 x double>, ptr %57, align 8, !alias.scope !22, !noalias !24
  %58 = getelementptr inbounds nuw i8, ptr %18, i64 96
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 112
  %wide.load15.3 = load <2 x double>, ptr %58, align 8, !alias.scope !26
  %wide.load16.3 = load <2 x double>, ptr %59, align 8, !alias.scope !26
  %60 = fmul <2 x double> %broadcast.splat, %wide.load15.3
  %61 = fmul <2 x double> %broadcast.splat, %wide.load16.3
  %62 = fmul <2 x double> %60, %broadcast.splat18
  %63 = fmul <2 x double> %61, %broadcast.splat18
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load.3, <2 x double> %62)
  %65 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load14.3, <2 x double> %63)
  %66 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %64)
  %67 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %65)
  store <2 x double> %66, ptr %56, align 8, !alias.scope !22, !noalias !24
  store <2 x double> %67, ptr %57, align 8, !alias.scope !22, !noalias !24
  %68 = getelementptr inbounds nuw i8, ptr %17, i64 128
  %69 = getelementptr inbounds nuw i8, ptr %17, i64 144
  %wide.load.4 = load <2 x double>, ptr %68, align 8, !alias.scope !22, !noalias !24
  %wide.load14.4 = load <2 x double>, ptr %69, align 8, !alias.scope !22, !noalias !24
  %70 = getelementptr inbounds nuw i8, ptr %18, i64 128
  %71 = getelementptr inbounds nuw i8, ptr %18, i64 144
  %wide.load15.4 = load <2 x double>, ptr %70, align 8, !alias.scope !26
  %wide.load16.4 = load <2 x double>, ptr %71, align 8, !alias.scope !26
  %72 = fmul <2 x double> %broadcast.splat, %wide.load15.4
  %73 = fmul <2 x double> %broadcast.splat, %wide.load16.4
  %74 = fmul <2 x double> %72, %broadcast.splat18
  %75 = fmul <2 x double> %73, %broadcast.splat18
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load.4, <2 x double> %74)
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load14.4, <2 x double> %75)
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %76)
  %79 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %77)
  store <2 x double> %78, ptr %68, align 8, !alias.scope !22, !noalias !24
  store <2 x double> %79, ptr %69, align 8, !alias.scope !22, !noalias !24
  %80 = getelementptr inbounds nuw i8, ptr %17, i64 160
  %81 = getelementptr inbounds nuw i8, ptr %17, i64 176
  %wide.load.5 = load <2 x double>, ptr %80, align 8, !alias.scope !22, !noalias !24
  %wide.load14.5 = load <2 x double>, ptr %81, align 8, !alias.scope !22, !noalias !24
  %82 = getelementptr inbounds nuw i8, ptr %18, i64 160
  %83 = getelementptr inbounds nuw i8, ptr %18, i64 176
  %wide.load15.5 = load <2 x double>, ptr %82, align 8, !alias.scope !26
  %wide.load16.5 = load <2 x double>, ptr %83, align 8, !alias.scope !26
  %84 = fmul <2 x double> %broadcast.splat, %wide.load15.5
  %85 = fmul <2 x double> %broadcast.splat, %wide.load16.5
  %86 = fmul <2 x double> %84, %broadcast.splat18
  %87 = fmul <2 x double> %85, %broadcast.splat18
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load.5, <2 x double> %86)
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load14.5, <2 x double> %87)
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %88)
  %91 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %89)
  store <2 x double> %90, ptr %80, align 8, !alias.scope !22, !noalias !24
  store <2 x double> %91, ptr %81, align 8, !alias.scope !22, !noalias !24
  %92 = getelementptr inbounds nuw i8, ptr %17, i64 192
  %93 = getelementptr inbounds nuw i8, ptr %17, i64 208
  %wide.load.6 = load <2 x double>, ptr %92, align 8, !alias.scope !22, !noalias !24
  %wide.load14.6 = load <2 x double>, ptr %93, align 8, !alias.scope !22, !noalias !24
  %94 = getelementptr inbounds nuw i8, ptr %18, i64 192
  %95 = getelementptr inbounds nuw i8, ptr %18, i64 208
  %wide.load15.6 = load <2 x double>, ptr %94, align 8, !alias.scope !26
  %wide.load16.6 = load <2 x double>, ptr %95, align 8, !alias.scope !26
  %96 = fmul <2 x double> %broadcast.splat, %wide.load15.6
  %97 = fmul <2 x double> %broadcast.splat, %wide.load16.6
  %98 = fmul <2 x double> %96, %broadcast.splat18
  %99 = fmul <2 x double> %97, %broadcast.splat18
  %100 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load.6, <2 x double> %98)
  %101 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load14.6, <2 x double> %99)
  %102 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %100)
  %103 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> zeroinitializer, <2 x double> %101)
  store <2 x double> %102, ptr %92, align 8, !alias.scope !22, !noalias !24
  store <2 x double> %103, ptr %93, align 8, !alias.scope !22, !noalias !24
  br label %.preheader.preheader

.preheader.us:                                    ; preds = %.preheader42, %._crit_edge.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %._crit_edge.us ], [ 0, %.preheader42 ]
  %104 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv51
  %invariant.gep.us = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv51
  %invariant.gep45.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv51
  br label %105

105:                                              ; preds = %.preheader.us, %105
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %105 ]
  %.044.us = phi double [ 0.000000e+00, %.preheader.us ], [ %114, %105 ]
  %106 = load double, ptr %104, align 8
  %107 = fmul double %0, %106
  %108 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv
  %109 = load double, ptr %108, align 8
  %gep.us = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep.us, i64 %indvars.iv
  %110 = load double, ptr %gep.us, align 8
  %111 = tail call double @llvm.fmuladd.f64(double %107, double %109, double %110)
  store double %111, ptr %gep.us, align 8
  %gep46.us = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep45.us, i64 %indvars.iv
  %112 = load double, ptr %gep46.us, align 8
  %113 = load double, ptr %108, align 8
  %114 = tail call double @llvm.fmuladd.f64(double %112, double %113, double %.044.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv59
  br i1 %exitcond.not, label %._crit_edge.us, label %105, !llvm.loop !27

._crit_edge.us:                                   ; preds = %105
  %115 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv51
  %116 = load double, ptr %115, align 8
  %117 = load double, ptr %104, align 8
  %118 = fmul double %0, %117
  %119 = load double, ptr %20, align 8
  %120 = fmul double %118, %119
  %121 = tail call double @llvm.fmuladd.f64(double %1, double %116, double %120)
  %122 = tail call double @llvm.fmuladd.f64(double %0, double %114, double %121)
  store double %122, ptr %115, align 8
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 30
  br i1 %exitcond54.not, label %.split.us, label %.preheader.us, !llvm.loop !28

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %indvars.iv55 = phi i64 [ %indvars.iv55.ph, %.preheader.preheader ], [ %indvars.iv.next56.1, %.preheader ]
  %123 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv55
  %124 = load double, ptr %123, align 8
  %125 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv55
  %126 = load double, ptr %125, align 8
  %127 = fmul double %0, %126
  %128 = load double, ptr %20, align 8
  %129 = fmul double %127, %128
  %130 = tail call double @llvm.fmuladd.f64(double %1, double %124, double %129)
  %131 = tail call double @llvm.fmuladd.f64(double %0, double 0.000000e+00, double %130)
  store double %131, ptr %123, align 8
  %indvars.iv.next56 = or disjoint i64 %indvars.iv55, 1
  %132 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv.next56
  %133 = load double, ptr %132, align 8
  %134 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next56
  %135 = load double, ptr %134, align 8
  %136 = fmul double %0, %135
  %137 = load double, ptr %20, align 8
  %138 = fmul double %136, %137
  %139 = tail call double @llvm.fmuladd.f64(double %1, double %133, double %138)
  %140 = tail call double @llvm.fmuladd.f64(double %0, double 0.000000e+00, double %139)
  store double %140, ptr %132, align 8
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2
  %exitcond58.not.1 = icmp eq i64 %indvars.iv.next56.1, 30
  br i1 %exitcond58.not.1, label %.split.us, label %.preheader, !llvm.loop !29

.split.us:                                        ; preds = %._crit_edge.us, %.preheader
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 20
  br i1 %exitcond62.not, label %141, label %.preheader42, !llvm.loop !30

141:                                              ; preds = %.split.us
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
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !31

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 20
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !32

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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\symm\\symm.c", directory: "C:\\work\\llvm-profitability-research")
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
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8, !9, !14, !15}
!14 = !{!"llvm.loop.vectorize.body", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !8, !15, !9, !10}
!17 = distinct !{!17, !8, !9, !14, !15}
!18 = distinct !{!18, !8, !15, !9, !10}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = !{!25, !20}
!25 = distinct !{!25, !21}
!26 = !{!25}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8, !9, !10}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
