; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\deriche\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\medley\\deriche\\deriche.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_06DJNLMAEM@imgOut?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_06GGBADGI@?$CF0?42f?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_06DJNLMAEM@imgOut?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c"imgOut\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_06GGBADGI@?$CF0?42f?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c"%0.2f \00", comdat, align 4
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 4096, i32 noundef 4) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 4096, i32 noundef 4) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 4096, i32 noundef 4) #8
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 4096, i32 noundef 4) #8
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  %8 = load float, ptr %3, align 4
  tail call fastcc void @kernel_deriche(float noundef %8, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #2 {
  store float 2.500000e-01, ptr %0, align 4
  br label %.preheader

.preheader:                                       ; preds = %2, %middle.block
  %indvars.iv4 = phi i64 [ 0, %2 ], [ %indvars.iv.next5, %middle.block ]
  %3 = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %indvars.iv4
  %4 = mul nuw nsw i64 %indvars.iv4, 313
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader ], [ %vec.ind.next, %vector.body ]
  %5 = mul nuw nsw <4 x i64> %vec.ind, splat (i64 991)
  %6 = add nuw nsw <4 x i64> %5, %broadcast.splat
  %7 = trunc nuw nsw <4 x i64> %6 to <4 x i32>
  %8 = and <4 x i32> %7, splat (i32 65535)
  %9 = uitofp nneg <4 x i32> %8 to <4 x float>
  %10 = fdiv <4 x float> %9, splat (float 6.553500e+04)
  %11 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x float> %10, ptr %11, align 4
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %12 = icmp eq i64 %index.next, 64
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7.not = icmp eq i64 %indvars.iv.next5, 64
  br i1 %exitcond7.not, label %13, label %.preheader, !llvm.loop !12

13:                                               ; preds = %middle.block
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @kernel_deriche(float noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
  %6 = ptrtoaddr ptr %3 to i64
  %7 = ptrtoaddr ptr %4 to i64
  %8 = ptrtoaddr ptr %2 to i64
  %9 = fneg float %0
  %10 = tail call float @expf(float noundef %9) #8
  %11 = fsub float 1.000000e+00, %10
  %12 = fmul float %11, %11
  %13 = fmul float %0, 2.000000e+00
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %10, float 1.000000e+00)
  %15 = tail call float @expf(float noundef %13) #8
  %16 = fsub float %14, %15
  %17 = fdiv float %12, %16
  %18 = tail call float @expf(float noundef %9) #8
  %19 = fmul float %18, %17
  %20 = fadd float %0, -1.000000e+00
  %21 = fmul float %20, %19
  %22 = fmul float %0, -2.000000e+00
  %23 = tail call float @expf(float noundef %22) #8
  %exp2f = tail call float @exp2f(float %9) #8
  %24 = tail call float @expf(float noundef %22) #8
  %25 = fneg float %24
  br label %.preheader166

.preheader166:                                    ; preds = %5, %45
  %indvars.iv200 = phi i64 [ 0, %5 ], [ %indvars.iv.next201, %45 ]
  %26 = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %indvars.iv200
  %27 = getelementptr inbounds nuw [256 x i8], ptr %3, i64 %indvars.iv200
  br label %28

28:                                               ; preds = %28, %.preheader166
  %indvars.iv = phi i64 [ 0, %.preheader166 ], [ %indvars.iv.next.1, %28 ]
  %.0143169 = phi float [ 0.000000e+00, %.preheader166 ], [ %44, %28 ]
  %.0145168 = phi float [ 0.000000e+00, %.preheader166 ], [ %42, %28 ]
  %.0147167 = phi float [ 0.000000e+00, %.preheader166 ], [ %34, %28 ]
  %29 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv
  %30 = load float, ptr %29, align 4
  %31 = fmul float %21, %.0143169
  %32 = tail call float @llvm.fmuladd.f32(float %17, float %30, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %exp2f, float %.0145168, float %32)
  %34 = tail call float @llvm.fmuladd.f32(float %25, float %.0147167, float %33)
  %35 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %indvars.iv
  store float %34, ptr %35, align 4
  %36 = load float, ptr %29, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %37 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.next
  %38 = load float, ptr %37, align 4
  %39 = fmul float %21, %36
  %40 = tail call float @llvm.fmuladd.f32(float %17, float %38, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %exp2f, float %34, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %25, float %.0145168, float %41)
  %43 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %indvars.iv.next
  store float %42, ptr %43, align 4
  %44 = load float, ptr %37, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %45, label %28, !llvm.loop !13

45:                                               ; preds = %28
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  %exitcond203.not = icmp eq i64 %indvars.iv.next201, 64
  br i1 %exitcond203.not, label %.preheader164.preheader, label %.preheader166, !llvm.loop !14

.preheader164.preheader:                          ; preds = %45
  %46 = fadd float %0, 1.000000e+00
  %47 = fmul float %46, %19
  %48 = fneg float %17
  %49 = fmul float %23, %48
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.preheader, %67
  %indvars.iv207 = phi i64 [ 0, %.preheader164.preheader ], [ %indvars.iv.next208, %67 ]
  %50 = getelementptr inbounds nuw [256 x i8], ptr %4, i64 %indvars.iv207
  %51 = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %indvars.iv207
  br label %52

52:                                               ; preds = %52, %.preheader164
  %indvars.iv204 = phi i64 [ 63, %.preheader164 ], [ %indvars.iv.next205.1, %52 ]
  %.0149175 = phi float [ 0.000000e+00, %.preheader164 ], [ %66, %52 ]
  %.0150174 = phi float [ 0.000000e+00, %.preheader164 ], [ %59, %52 ]
  %.0153173 = phi float [ 0.000000e+00, %.preheader164 ], [ %63, %52 ]
  %.0155172 = phi float [ 0.000000e+00, %.preheader164 ], [ %56, %52 ]
  %53 = fmul float %49, %.0150174
  %54 = tail call float @llvm.fmuladd.f32(float %47, float %.0149175, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %exp2f, float %.0153173, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %25, float %.0155172, float %55)
  %57 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %indvars.iv204
  store float %56, ptr %57, align 4
  %58 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %indvars.iv204
  %59 = load float, ptr %58, align 4
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -1
  %60 = fmul float %49, %.0149175
  %61 = tail call float @llvm.fmuladd.f32(float %47, float %59, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %exp2f, float %56, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %25, float %.0153173, float %62)
  %64 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %indvars.iv.next205
  store float %63, ptr %64, align 4
  %65 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %indvars.iv.next205
  %66 = load float, ptr %65, align 4
  %indvars.iv.next205.1 = add nsw i64 %indvars.iv204, -2
  %.not.1 = icmp eq i64 %indvars.iv.next205, 0
  br i1 %.not.1, label %67, label %52, !llvm.loop !15

67:                                               ; preds = %52
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  %exitcond210.not = icmp eq i64 %indvars.iv.next208, 64
  br i1 %exitcond210.not, label %.preheader162.preheader, label %.preheader164, !llvm.loop !16

.preheader162.preheader:                          ; preds = %67
  %68 = sub i64 %6, %8
  %diff.check = icmp ugt i64 %68, -32
  %69 = sub i64 %7, %8
  %diff.check2 = icmp ugt i64 %69, -32
  %conflict.rdx = or i1 %diff.check, %diff.check2
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.preheader, %middle.block
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %middle.block ], [ 0, %.preheader162.preheader ]
  %70 = getelementptr inbounds nuw [256 x i8], ptr %3, i64 %indvars.iv215
  %71 = getelementptr inbounds nuw [256 x i8], ptr %4, i64 %indvars.iv215
  %72 = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv215
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader162
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 16
  %wide.load = load <4 x float>, ptr %70, align 4
  %wide.load3 = load <4 x float>, ptr %73, align 4
  %74 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %wide.load4 = load <4 x float>, ptr %71, align 4
  %wide.load5 = load <4 x float>, ptr %74, align 4
  %75 = fadd <4 x float> %wide.load, %wide.load4
  %76 = fadd <4 x float> %wide.load3, %wide.load5
  %77 = getelementptr inbounds nuw i8, ptr %72, i64 16
  store <4 x float> %75, ptr %72, align 4
  store <4 x float> %76, ptr %77, align 4
  %78 = getelementptr inbounds nuw i8, ptr %70, i64 32
  %79 = getelementptr inbounds nuw i8, ptr %70, i64 48
  %wide.load.1 = load <4 x float>, ptr %78, align 4
  %wide.load3.1 = load <4 x float>, ptr %79, align 4
  %80 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %71, i64 48
  %wide.load4.1 = load <4 x float>, ptr %80, align 4
  %wide.load5.1 = load <4 x float>, ptr %81, align 4
  %82 = fadd <4 x float> %wide.load.1, %wide.load4.1
  %83 = fadd <4 x float> %wide.load3.1, %wide.load5.1
  %84 = getelementptr inbounds nuw i8, ptr %72, i64 32
  %85 = getelementptr inbounds nuw i8, ptr %72, i64 48
  store <4 x float> %82, ptr %84, align 4
  store <4 x float> %83, ptr %85, align 4
  %86 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %87 = getelementptr inbounds nuw i8, ptr %70, i64 80
  %wide.load.2 = load <4 x float>, ptr %86, align 4
  %wide.load3.2 = load <4 x float>, ptr %87, align 4
  %88 = getelementptr inbounds nuw i8, ptr %71, i64 64
  %89 = getelementptr inbounds nuw i8, ptr %71, i64 80
  %wide.load4.2 = load <4 x float>, ptr %88, align 4
  %wide.load5.2 = load <4 x float>, ptr %89, align 4
  %90 = fadd <4 x float> %wide.load.2, %wide.load4.2
  %91 = fadd <4 x float> %wide.load3.2, %wide.load5.2
  %92 = getelementptr inbounds nuw i8, ptr %72, i64 64
  %93 = getelementptr inbounds nuw i8, ptr %72, i64 80
  store <4 x float> %90, ptr %92, align 4
  store <4 x float> %91, ptr %93, align 4
  %94 = getelementptr inbounds nuw i8, ptr %70, i64 96
  %95 = getelementptr inbounds nuw i8, ptr %70, i64 112
  %wide.load.3 = load <4 x float>, ptr %94, align 4
  %wide.load3.3 = load <4 x float>, ptr %95, align 4
  %96 = getelementptr inbounds nuw i8, ptr %71, i64 96
  %97 = getelementptr inbounds nuw i8, ptr %71, i64 112
  %wide.load4.3 = load <4 x float>, ptr %96, align 4
  %wide.load5.3 = load <4 x float>, ptr %97, align 4
  %98 = fadd <4 x float> %wide.load.3, %wide.load4.3
  %99 = fadd <4 x float> %wide.load3.3, %wide.load5.3
  %100 = getelementptr inbounds nuw i8, ptr %72, i64 96
  %101 = getelementptr inbounds nuw i8, ptr %72, i64 112
  store <4 x float> %98, ptr %100, align 4
  store <4 x float> %99, ptr %101, align 4
  %102 = getelementptr inbounds nuw i8, ptr %70, i64 128
  %103 = getelementptr inbounds nuw i8, ptr %70, i64 144
  %wide.load.4 = load <4 x float>, ptr %102, align 4
  %wide.load3.4 = load <4 x float>, ptr %103, align 4
  %104 = getelementptr inbounds nuw i8, ptr %71, i64 128
  %105 = getelementptr inbounds nuw i8, ptr %71, i64 144
  %wide.load4.4 = load <4 x float>, ptr %104, align 4
  %wide.load5.4 = load <4 x float>, ptr %105, align 4
  %106 = fadd <4 x float> %wide.load.4, %wide.load4.4
  %107 = fadd <4 x float> %wide.load3.4, %wide.load5.4
  %108 = getelementptr inbounds nuw i8, ptr %72, i64 128
  %109 = getelementptr inbounds nuw i8, ptr %72, i64 144
  store <4 x float> %106, ptr %108, align 4
  store <4 x float> %107, ptr %109, align 4
  %110 = getelementptr inbounds nuw i8, ptr %70, i64 160
  %111 = getelementptr inbounds nuw i8, ptr %70, i64 176
  %wide.load.5 = load <4 x float>, ptr %110, align 4
  %wide.load3.5 = load <4 x float>, ptr %111, align 4
  %112 = getelementptr inbounds nuw i8, ptr %71, i64 160
  %113 = getelementptr inbounds nuw i8, ptr %71, i64 176
  %wide.load4.5 = load <4 x float>, ptr %112, align 4
  %wide.load5.5 = load <4 x float>, ptr %113, align 4
  %114 = fadd <4 x float> %wide.load.5, %wide.load4.5
  %115 = fadd <4 x float> %wide.load3.5, %wide.load5.5
  %116 = getelementptr inbounds nuw i8, ptr %72, i64 160
  %117 = getelementptr inbounds nuw i8, ptr %72, i64 176
  store <4 x float> %114, ptr %116, align 4
  store <4 x float> %115, ptr %117, align 4
  %118 = getelementptr inbounds nuw i8, ptr %70, i64 192
  %119 = getelementptr inbounds nuw i8, ptr %70, i64 208
  %wide.load.6 = load <4 x float>, ptr %118, align 4
  %wide.load3.6 = load <4 x float>, ptr %119, align 4
  %120 = getelementptr inbounds nuw i8, ptr %71, i64 192
  %121 = getelementptr inbounds nuw i8, ptr %71, i64 208
  %wide.load4.6 = load <4 x float>, ptr %120, align 4
  %wide.load5.6 = load <4 x float>, ptr %121, align 4
  %122 = fadd <4 x float> %wide.load.6, %wide.load4.6
  %123 = fadd <4 x float> %wide.load3.6, %wide.load5.6
  %124 = getelementptr inbounds nuw i8, ptr %72, i64 192
  %125 = getelementptr inbounds nuw i8, ptr %72, i64 208
  store <4 x float> %122, ptr %124, align 4
  store <4 x float> %123, ptr %125, align 4
  %126 = getelementptr inbounds nuw i8, ptr %70, i64 224
  %127 = getelementptr inbounds nuw i8, ptr %70, i64 240
  %wide.load.7 = load <4 x float>, ptr %126, align 4
  %wide.load3.7 = load <4 x float>, ptr %127, align 4
  %128 = getelementptr inbounds nuw i8, ptr %71, i64 224
  %129 = getelementptr inbounds nuw i8, ptr %71, i64 240
  %wide.load4.7 = load <4 x float>, ptr %128, align 4
  %wide.load5.7 = load <4 x float>, ptr %129, align 4
  %130 = fadd <4 x float> %wide.load.7, %wide.load4.7
  %131 = fadd <4 x float> %wide.load3.7, %wide.load5.7
  %132 = getelementptr inbounds nuw i8, ptr %72, i64 224
  %133 = getelementptr inbounds nuw i8, ptr %72, i64 240
  store <4 x float> %130, ptr %132, align 4
  store <4 x float> %131, ptr %133, align 4
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader162, %scalar.ph
  %indvars.iv211 = phi i64 [ %indvars.iv.next212.3, %scalar.ph ], [ 0, %.preheader162 ]
  %134 = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %indvars.iv211
  %135 = load float, ptr %134, align 4
  %136 = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %indvars.iv211
  %137 = load float, ptr %136, align 4
  %138 = fadd float %135, %137
  %139 = getelementptr inbounds nuw [4 x i8], ptr %72, i64 %indvars.iv211
  store float %138, ptr %139, align 4
  %indvars.iv.next212 = or disjoint i64 %indvars.iv211, 1
  %140 = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %indvars.iv.next212
  %141 = load float, ptr %140, align 4
  %142 = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %indvars.iv.next212
  %143 = load float, ptr %142, align 4
  %144 = fadd float %141, %143
  %145 = getelementptr inbounds nuw [4 x i8], ptr %72, i64 %indvars.iv.next212
  store float %144, ptr %145, align 4
  %indvars.iv.next212.1 = or disjoint i64 %indvars.iv211, 2
  %146 = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %indvars.iv.next212.1
  %147 = load float, ptr %146, align 4
  %148 = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %indvars.iv.next212.1
  %149 = load float, ptr %148, align 4
  %150 = fadd float %147, %149
  %151 = getelementptr inbounds nuw [4 x i8], ptr %72, i64 %indvars.iv.next212.1
  store float %150, ptr %151, align 4
  %indvars.iv.next212.2 = or disjoint i64 %indvars.iv211, 3
  %152 = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %indvars.iv.next212.2
  %153 = load float, ptr %152, align 4
  %154 = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %indvars.iv.next212.2
  %155 = load float, ptr %154, align 4
  %156 = fadd float %153, %155
  %157 = getelementptr inbounds nuw [4 x i8], ptr %72, i64 %indvars.iv.next212.2
  store float %156, ptr %157, align 4
  %indvars.iv.next212.3 = add nuw nsw i64 %indvars.iv211, 4
  %exitcond214.not.3 = icmp eq i64 %indvars.iv.next212.3, 64
  br i1 %exitcond214.not.3, label %middle.block, label %scalar.ph, !llvm.loop !17

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, 64
  br i1 %exitcond218.not, label %.preheader160, label %.preheader162, !llvm.loop !19

.preheader160:                                    ; preds = %middle.block, %165
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %165 ], [ 0, %middle.block ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv223
  %invariant.gep180 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv223
  br label %158

158:                                              ; preds = %.preheader160, %158
  %indvars.iv219 = phi i64 [ 0, %.preheader160 ], [ %indvars.iv.next220, %158 ]
  %.0144184 = phi float [ 0.000000e+00, %.preheader160 ], [ %164, %158 ]
  %.1146183 = phi float [ 0.000000e+00, %.preheader160 ], [ %163, %158 ]
  %.1148182 = phi float [ 0.000000e+00, %.preheader160 ], [ %.1146183, %158 ]
  %gep = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %159 = load float, ptr %gep, align 4
  %160 = fmul float %21, %.0144184
  %161 = tail call float @llvm.fmuladd.f32(float %17, float %159, float %160)
  %162 = tail call float @llvm.fmuladd.f32(float %exp2f, float %.1146183, float %161)
  %163 = tail call float @llvm.fmuladd.f32(float %25, float %.1148182, float %162)
  %gep181 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep180, i64 %indvars.iv219
  store float %163, ptr %gep181, align 4
  %164 = load float, ptr %gep, align 4
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 64
  br i1 %exitcond222.not, label %165, label %158, !llvm.loop !20

165:                                              ; preds = %158
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  %exitcond226.not = icmp eq i64 %indvars.iv.next224, 64
  br i1 %exitcond226.not, label %.preheader158, label %.preheader160, !llvm.loop !21

.preheader158:                                    ; preds = %165, %177
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %177 ], [ 0, %165 ]
  %invariant.gep187 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv230
  %invariant.gep189 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv230
  br label %166

166:                                              ; preds = %166, %.preheader158
  %indvars.iv227 = phi i64 [ 63, %.preheader158 ], [ %indvars.iv.next228.1, %166 ]
  %.0151194 = phi float [ 0.000000e+00, %.preheader158 ], [ %176, %166 ]
  %.0152193 = phi float [ 0.000000e+00, %.preheader158 ], [ %171, %166 ]
  %.1154192 = phi float [ 0.000000e+00, %.preheader158 ], [ %175, %166 ]
  %.1156191 = phi float [ 0.000000e+00, %.preheader158 ], [ %170, %166 ]
  %167 = fmul float %49, %.0152193
  %168 = tail call float @llvm.fmuladd.f32(float %47, float %.0151194, float %167)
  %169 = tail call float @llvm.fmuladd.f32(float %exp2f, float %.1154192, float %168)
  %170 = tail call float @llvm.fmuladd.f32(float %25, float %.1156191, float %169)
  %gep188 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep187, i64 %indvars.iv227
  store float %170, ptr %gep188, align 4
  %gep190 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep189, i64 %indvars.iv227
  %171 = load float, ptr %gep190, align 4
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, -1
  %172 = fmul float %49, %.0151194
  %173 = tail call float @llvm.fmuladd.f32(float %47, float %171, float %172)
  %174 = tail call float @llvm.fmuladd.f32(float %exp2f, float %170, float %173)
  %175 = tail call float @llvm.fmuladd.f32(float %25, float %.1154192, float %174)
  %gep188.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep187, i64 %indvars.iv.next228
  store float %175, ptr %gep188.1, align 4
  %gep190.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep189, i64 %indvars.iv.next228
  %176 = load float, ptr %gep190.1, align 4
  %indvars.iv.next228.1 = add nsw i64 %indvars.iv227, -2
  %.not242.1 = icmp eq i64 %indvars.iv.next228, 0
  br i1 %.not242.1, label %177, label %166, !llvm.loop !22

177:                                              ; preds = %166
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1
  %exitcond233.not = icmp eq i64 %indvars.iv.next231, 64
  br i1 %exitcond233.not, label %.preheader.preheader, label %.preheader158, !llvm.loop !23

.preheader.preheader:                             ; preds = %177
  %178 = sub i64 %6, %8
  %diff.check12 = icmp ugt i64 %178, -32
  %179 = sub i64 %7, %8
  %diff.check13 = icmp ugt i64 %179, -32
  %conflict.rdx14 = or i1 %diff.check12, %diff.check13
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block23
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %middle.block23 ], [ 0, %.preheader.preheader ]
  %180 = getelementptr inbounds nuw [256 x i8], ptr %3, i64 %indvars.iv238
  %181 = getelementptr inbounds nuw [256 x i8], ptr %4, i64 %indvars.iv238
  %182 = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv238
  br i1 %conflict.rdx14, label %scalar.ph10, label %vector.body16

vector.body16:                                    ; preds = %.preheader
  %183 = getelementptr inbounds nuw i8, ptr %180, i64 16
  %wide.load18 = load <4 x float>, ptr %180, align 4
  %wide.load19 = load <4 x float>, ptr %183, align 4
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 16
  %wide.load20 = load <4 x float>, ptr %181, align 4
  %wide.load21 = load <4 x float>, ptr %184, align 4
  %185 = fadd <4 x float> %wide.load18, %wide.load20
  %186 = fadd <4 x float> %wide.load19, %wide.load21
  %187 = getelementptr inbounds nuw i8, ptr %182, i64 16
  store <4 x float> %185, ptr %182, align 4
  store <4 x float> %186, ptr %187, align 4
  %188 = getelementptr inbounds nuw i8, ptr %180, i64 32
  %189 = getelementptr inbounds nuw i8, ptr %180, i64 48
  %wide.load18.1 = load <4 x float>, ptr %188, align 4
  %wide.load19.1 = load <4 x float>, ptr %189, align 4
  %190 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %191 = getelementptr inbounds nuw i8, ptr %181, i64 48
  %wide.load20.1 = load <4 x float>, ptr %190, align 4
  %wide.load21.1 = load <4 x float>, ptr %191, align 4
  %192 = fadd <4 x float> %wide.load18.1, %wide.load20.1
  %193 = fadd <4 x float> %wide.load19.1, %wide.load21.1
  %194 = getelementptr inbounds nuw i8, ptr %182, i64 32
  %195 = getelementptr inbounds nuw i8, ptr %182, i64 48
  store <4 x float> %192, ptr %194, align 4
  store <4 x float> %193, ptr %195, align 4
  %196 = getelementptr inbounds nuw i8, ptr %180, i64 64
  %197 = getelementptr inbounds nuw i8, ptr %180, i64 80
  %wide.load18.2 = load <4 x float>, ptr %196, align 4
  %wide.load19.2 = load <4 x float>, ptr %197, align 4
  %198 = getelementptr inbounds nuw i8, ptr %181, i64 64
  %199 = getelementptr inbounds nuw i8, ptr %181, i64 80
  %wide.load20.2 = load <4 x float>, ptr %198, align 4
  %wide.load21.2 = load <4 x float>, ptr %199, align 4
  %200 = fadd <4 x float> %wide.load18.2, %wide.load20.2
  %201 = fadd <4 x float> %wide.load19.2, %wide.load21.2
  %202 = getelementptr inbounds nuw i8, ptr %182, i64 64
  %203 = getelementptr inbounds nuw i8, ptr %182, i64 80
  store <4 x float> %200, ptr %202, align 4
  store <4 x float> %201, ptr %203, align 4
  %204 = getelementptr inbounds nuw i8, ptr %180, i64 96
  %205 = getelementptr inbounds nuw i8, ptr %180, i64 112
  %wide.load18.3 = load <4 x float>, ptr %204, align 4
  %wide.load19.3 = load <4 x float>, ptr %205, align 4
  %206 = getelementptr inbounds nuw i8, ptr %181, i64 96
  %207 = getelementptr inbounds nuw i8, ptr %181, i64 112
  %wide.load20.3 = load <4 x float>, ptr %206, align 4
  %wide.load21.3 = load <4 x float>, ptr %207, align 4
  %208 = fadd <4 x float> %wide.load18.3, %wide.load20.3
  %209 = fadd <4 x float> %wide.load19.3, %wide.load21.3
  %210 = getelementptr inbounds nuw i8, ptr %182, i64 96
  %211 = getelementptr inbounds nuw i8, ptr %182, i64 112
  store <4 x float> %208, ptr %210, align 4
  store <4 x float> %209, ptr %211, align 4
  %212 = getelementptr inbounds nuw i8, ptr %180, i64 128
  %213 = getelementptr inbounds nuw i8, ptr %180, i64 144
  %wide.load18.4 = load <4 x float>, ptr %212, align 4
  %wide.load19.4 = load <4 x float>, ptr %213, align 4
  %214 = getelementptr inbounds nuw i8, ptr %181, i64 128
  %215 = getelementptr inbounds nuw i8, ptr %181, i64 144
  %wide.load20.4 = load <4 x float>, ptr %214, align 4
  %wide.load21.4 = load <4 x float>, ptr %215, align 4
  %216 = fadd <4 x float> %wide.load18.4, %wide.load20.4
  %217 = fadd <4 x float> %wide.load19.4, %wide.load21.4
  %218 = getelementptr inbounds nuw i8, ptr %182, i64 128
  %219 = getelementptr inbounds nuw i8, ptr %182, i64 144
  store <4 x float> %216, ptr %218, align 4
  store <4 x float> %217, ptr %219, align 4
  %220 = getelementptr inbounds nuw i8, ptr %180, i64 160
  %221 = getelementptr inbounds nuw i8, ptr %180, i64 176
  %wide.load18.5 = load <4 x float>, ptr %220, align 4
  %wide.load19.5 = load <4 x float>, ptr %221, align 4
  %222 = getelementptr inbounds nuw i8, ptr %181, i64 160
  %223 = getelementptr inbounds nuw i8, ptr %181, i64 176
  %wide.load20.5 = load <4 x float>, ptr %222, align 4
  %wide.load21.5 = load <4 x float>, ptr %223, align 4
  %224 = fadd <4 x float> %wide.load18.5, %wide.load20.5
  %225 = fadd <4 x float> %wide.load19.5, %wide.load21.5
  %226 = getelementptr inbounds nuw i8, ptr %182, i64 160
  %227 = getelementptr inbounds nuw i8, ptr %182, i64 176
  store <4 x float> %224, ptr %226, align 4
  store <4 x float> %225, ptr %227, align 4
  %228 = getelementptr inbounds nuw i8, ptr %180, i64 192
  %229 = getelementptr inbounds nuw i8, ptr %180, i64 208
  %wide.load18.6 = load <4 x float>, ptr %228, align 4
  %wide.load19.6 = load <4 x float>, ptr %229, align 4
  %230 = getelementptr inbounds nuw i8, ptr %181, i64 192
  %231 = getelementptr inbounds nuw i8, ptr %181, i64 208
  %wide.load20.6 = load <4 x float>, ptr %230, align 4
  %wide.load21.6 = load <4 x float>, ptr %231, align 4
  %232 = fadd <4 x float> %wide.load18.6, %wide.load20.6
  %233 = fadd <4 x float> %wide.load19.6, %wide.load21.6
  %234 = getelementptr inbounds nuw i8, ptr %182, i64 192
  %235 = getelementptr inbounds nuw i8, ptr %182, i64 208
  store <4 x float> %232, ptr %234, align 4
  store <4 x float> %233, ptr %235, align 4
  %236 = getelementptr inbounds nuw i8, ptr %180, i64 224
  %237 = getelementptr inbounds nuw i8, ptr %180, i64 240
  %wide.load18.7 = load <4 x float>, ptr %236, align 4
  %wide.load19.7 = load <4 x float>, ptr %237, align 4
  %238 = getelementptr inbounds nuw i8, ptr %181, i64 224
  %239 = getelementptr inbounds nuw i8, ptr %181, i64 240
  %wide.load20.7 = load <4 x float>, ptr %238, align 4
  %wide.load21.7 = load <4 x float>, ptr %239, align 4
  %240 = fadd <4 x float> %wide.load18.7, %wide.load20.7
  %241 = fadd <4 x float> %wide.load19.7, %wide.load21.7
  %242 = getelementptr inbounds nuw i8, ptr %182, i64 224
  %243 = getelementptr inbounds nuw i8, ptr %182, i64 240
  store <4 x float> %240, ptr %242, align 4
  store <4 x float> %241, ptr %243, align 4
  br label %middle.block23

scalar.ph10:                                      ; preds = %.preheader, %scalar.ph10
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.3, %scalar.ph10 ], [ 0, %.preheader ]
  %244 = getelementptr inbounds nuw [4 x i8], ptr %180, i64 %indvars.iv234
  %245 = load float, ptr %244, align 4
  %246 = getelementptr inbounds nuw [4 x i8], ptr %181, i64 %indvars.iv234
  %247 = load float, ptr %246, align 4
  %248 = fadd float %245, %247
  %249 = getelementptr inbounds nuw [4 x i8], ptr %182, i64 %indvars.iv234
  store float %248, ptr %249, align 4
  %indvars.iv.next235 = or disjoint i64 %indvars.iv234, 1
  %250 = getelementptr inbounds nuw [4 x i8], ptr %180, i64 %indvars.iv.next235
  %251 = load float, ptr %250, align 4
  %252 = getelementptr inbounds nuw [4 x i8], ptr %181, i64 %indvars.iv.next235
  %253 = load float, ptr %252, align 4
  %254 = fadd float %251, %253
  %255 = getelementptr inbounds nuw [4 x i8], ptr %182, i64 %indvars.iv.next235
  store float %254, ptr %255, align 4
  %indvars.iv.next235.1 = or disjoint i64 %indvars.iv234, 2
  %256 = getelementptr inbounds nuw [4 x i8], ptr %180, i64 %indvars.iv.next235.1
  %257 = load float, ptr %256, align 4
  %258 = getelementptr inbounds nuw [4 x i8], ptr %181, i64 %indvars.iv.next235.1
  %259 = load float, ptr %258, align 4
  %260 = fadd float %257, %259
  %261 = getelementptr inbounds nuw [4 x i8], ptr %182, i64 %indvars.iv.next235.1
  store float %260, ptr %261, align 4
  %indvars.iv.next235.2 = or disjoint i64 %indvars.iv234, 3
  %262 = getelementptr inbounds nuw [4 x i8], ptr %180, i64 %indvars.iv.next235.2
  %263 = load float, ptr %262, align 4
  %264 = getelementptr inbounds nuw [4 x i8], ptr %181, i64 %indvars.iv.next235.2
  %265 = load float, ptr %264, align 4
  %266 = fadd float %263, %265
  %267 = getelementptr inbounds nuw [4 x i8], ptr %182, i64 %indvars.iv.next235.2
  store float %266, ptr %267, align 4
  %indvars.iv.next235.3 = add nuw nsw i64 %indvars.iv234, 4
  %exitcond237.not.3 = icmp eq i64 %indvars.iv.next235.3, 64
  br i1 %exitcond237.not.3, label %middle.block23, label %scalar.ph10, !llvm.loop !24

middle.block23:                                   ; preds = %scalar.ph10, %vector.body16
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  %exitcond241.not = icmp eq i64 %indvars.iv.next239, 64
  br i1 %exitcond241.not, label %268, label %.preheader, !llvm.loop !25

268:                                              ; preds = %middle.block23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_06DJNLMAEM@imgOut?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %20
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %20 ]
  %5 = shl nuw nsw i64 %indvars.iv18, 6
  %6 = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %indvars.iv18
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
  %16 = load float, ptr %15, align 4
  %17 = fpext float %16 to double
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @"??_C@_06GGBADGI@?$CF0?42f?5?$AA@", double noundef %17) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %20, label %7, !llvm.loop !26

20:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 64
  br i1 %exitcond21.not, label %21, label %.preheader, !llvm.loop !27

21:                                               ; preds = %20
  %22 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_06DJNLMAEM@imgOut?$AA@") #8
  %24 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %24)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare dso_local float @expf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

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

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\medley\\deriche\\deriche.c", directory: "C:\\work\\llvm-profitability-research")
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
!17 = distinct !{!17, !8, !9, !18}
!18 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8, !9, !18}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
