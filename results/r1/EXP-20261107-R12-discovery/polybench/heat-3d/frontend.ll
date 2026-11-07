; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\stencils\heat-3d\heat-3d.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\heat-3d\\heat-3d.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_00CNPNBAHC@?$AA@" = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01FHEEJDEE@A?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01FHEEJDEE@A?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"A\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start.p0(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vsprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end.p0(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @_vsnprintf_l(ptr noundef %9, i64 noundef -1, ptr noundef %8, ptr noundef null, ptr noundef %7)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.va_start.p0(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsnprintf(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end.p0(ptr %8)
  %14 = load i32, ptr %7, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 10, ptr %6, align 4
  store i32 20, ptr %7, align 4
  %10 = call ptr @polybench_alloc_data(i64 noundef 1000, i32 noundef 8)
  store ptr %10, ptr %8, align 8
  %11 = call ptr @polybench_alloc_data(i64 noundef 1000, i32 noundef 8)
  store ptr %11, ptr %9, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds [10 x [10 x [10 x double]]], ptr %12, i64 0, i64 0
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds [10 x [10 x [10 x double]]], ptr %14, i64 0, i64 0
  %16 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %16, ptr noundef %15, ptr noundef %13)
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds [10 x [10 x [10 x double]]], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds [10 x [10 x [10 x double]]], ptr %19, i64 0, i64 0
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %7, align 4
  call void @kernel_heat_3d(i32 noundef %22, i32 noundef %21, ptr noundef %20, ptr noundef %18)
  %23 = load i32, ptr %5, align 4
  %24 = icmp sgt i32 %23, 42
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @strcmp(ptr noundef %28, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds [10 x [10 x [10 x double]]], ptr %32, i64 0, i64 0
  %34 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %34, ptr noundef %33)
  br label %35

35:                                               ; preds = %31, %25, %2
  %36 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %36)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %65, %3
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %10
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %61, %14
  %16 = load i32, ptr %8, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  store i32 0, ptr %9, align 4
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i32, ptr %7, align 4
  %26 = load i32, ptr %8, align 4
  %27 = add i32 %25, %26
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %9, align 4
  %30 = sub i32 %28, %29
  %31 = add i32 %27, %30
  %32 = sitofp i32 %31 to double
  %33 = fmul double %32, 1.000000e+01
  %34 = load i32, ptr %6, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %33, %35
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x [10 x double]], ptr %37, i64 %39
  %41 = load i32, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x [10 x double]], ptr %40, i64 0, i64 %42
  %44 = load i32, ptr %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10 x double], ptr %43, i64 0, i64 %45
  store double %36, ptr %46, align 8
  %47 = load ptr, ptr %5, align 8
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x [10 x double]], ptr %47, i64 %49
  %51 = load i32, ptr %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x [10 x double]], ptr %50, i64 0, i64 %52
  %54 = load i32, ptr %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x double], ptr %53, i64 0, i64 %55
  store double %36, ptr %56, align 8
  br label %57

57:                                               ; preds = %24
  %58 = load i32, ptr %9, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %9, align 4
  br label %20, !llvm.loop !7

60:                                               ; preds = %20
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %8, align 4
  br label %15, !llvm.loop !9

64:                                               ; preds = %15
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %7, align 4
  br label %10, !llvm.loop !10

68:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %0, ptr %8, align 4
  store i32 1, ptr %9, align 4
  br label %13

13:                                               ; preds = %337, %4
  %14 = load i32, ptr %9, align 4
  %15 = icmp sle i32 %14, 20
  br i1 %15, label %16, label %340

16:                                               ; preds = %13
  store i32 1, ptr %10, align 4
  br label %17

17:                                               ; preds = %173, %16
  %18 = load i32, ptr %10, align 4
  %19 = icmp slt i32 %18, 9
  br i1 %19, label %20, label %176

20:                                               ; preds = %17
  store i32 1, ptr %11, align 4
  br label %21

21:                                               ; preds = %169, %20
  %22 = load i32, ptr %11, align 4
  %23 = icmp slt i32 %22, 9
  br i1 %23, label %24, label %172

24:                                               ; preds = %21
  store i32 1, ptr %12, align 4
  br label %25

25:                                               ; preds = %165, %24
  %26 = load i32, ptr %12, align 4
  %27 = icmp slt i32 %26, 9
  br i1 %27, label %28, label %168

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8
  %30 = load i32, ptr %10, align 4
  %31 = add i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x [10 x double]], ptr %29, i64 %32
  %34 = load i32, ptr %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x [10 x double]], ptr %33, i64 0, i64 %35
  %37 = load i32, ptr %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x double], ptr %36, i64 0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i32, ptr %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x [10 x double]], ptr %41, i64 %43
  %45 = load i32, ptr %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x [10 x double]], ptr %44, i64 0, i64 %46
  %48 = load i32, ptr %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x double], ptr %47, i64 0, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %51, double %40)
  %53 = load ptr, ptr %6, align 8
  %54 = load i32, ptr %10, align 4
  %55 = sub i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x [10 x double]], ptr %53, i64 %56
  %58 = load i32, ptr %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x [10 x double]], ptr %57, i64 0, i64 %59
  %61 = load i32, ptr %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x double], ptr %60, i64 0, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = fadd double %52, %64
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [10 x [10 x double]], ptr %66, i64 %68
  %70 = load i32, ptr %11, align 4
  %71 = add i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x [10 x double]], ptr %69, i64 0, i64 %72
  %74 = load i32, ptr %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x double], ptr %73, i64 0, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = load ptr, ptr %6, align 8
  %79 = load i32, ptr %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x [10 x double]], ptr %78, i64 %80
  %82 = load i32, ptr %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10 x [10 x double]], ptr %81, i64 0, i64 %83
  %85 = load i32, ptr %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x double], ptr %84, i64 0, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %88, double %77)
  %90 = load ptr, ptr %6, align 8
  %91 = load i32, ptr %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x [10 x double]], ptr %90, i64 %92
  %94 = load i32, ptr %11, align 4
  %95 = sub i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [10 x [10 x double]], ptr %93, i64 0, i64 %96
  %98 = load i32, ptr %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [10 x double], ptr %97, i64 0, i64 %99
  %101 = load double, ptr %100, align 8
  %102 = fadd double %89, %101
  %103 = fmul double 1.250000e-01, %102
  %104 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %65, double %103)
  %105 = load ptr, ptr %6, align 8
  %106 = load i32, ptr %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10 x [10 x double]], ptr %105, i64 %107
  %109 = load i32, ptr %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x [10 x double]], ptr %108, i64 0, i64 %110
  %112 = load i32, ptr %12, align 4
  %113 = add i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x double], ptr %111, i64 0, i64 %114
  %116 = load double, ptr %115, align 8
  %117 = load ptr, ptr %6, align 8
  %118 = load i32, ptr %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10 x [10 x double]], ptr %117, i64 %119
  %121 = load i32, ptr %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [10 x [10 x double]], ptr %120, i64 0, i64 %122
  %124 = load i32, ptr %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [10 x double], ptr %123, i64 0, i64 %125
  %127 = load double, ptr %126, align 8
  %128 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %127, double %116)
  %129 = load ptr, ptr %6, align 8
  %130 = load i32, ptr %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [10 x [10 x double]], ptr %129, i64 %131
  %133 = load i32, ptr %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x [10 x double]], ptr %132, i64 0, i64 %134
  %136 = load i32, ptr %12, align 4
  %137 = sub i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x double], ptr %135, i64 0, i64 %138
  %140 = load double, ptr %139, align 8
  %141 = fadd double %128, %140
  %142 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %141, double %104)
  %143 = load ptr, ptr %6, align 8
  %144 = load i32, ptr %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x [10 x double]], ptr %143, i64 %145
  %147 = load i32, ptr %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [10 x [10 x double]], ptr %146, i64 0, i64 %148
  %150 = load i32, ptr %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [10 x double], ptr %149, i64 0, i64 %151
  %153 = load double, ptr %152, align 8
  %154 = fadd double %142, %153
  %155 = load ptr, ptr %5, align 8
  %156 = load i32, ptr %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [10 x [10 x double]], ptr %155, i64 %157
  %159 = load i32, ptr %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [10 x [10 x double]], ptr %158, i64 0, i64 %160
  %162 = load i32, ptr %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [10 x double], ptr %161, i64 0, i64 %163
  store double %154, ptr %164, align 8
  br label %165

165:                                              ; preds = %28
  %166 = load i32, ptr %12, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %12, align 4
  br label %25, !llvm.loop !11

168:                                              ; preds = %25
  br label %169

169:                                              ; preds = %168
  %170 = load i32, ptr %11, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr %11, align 4
  br label %21, !llvm.loop !12

172:                                              ; preds = %21
  br label %173

173:                                              ; preds = %172
  %174 = load i32, ptr %10, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %10, align 4
  br label %17, !llvm.loop !13

176:                                              ; preds = %17
  store i32 1, ptr %10, align 4
  br label %177

177:                                              ; preds = %333, %176
  %178 = load i32, ptr %10, align 4
  %179 = icmp slt i32 %178, 9
  br i1 %179, label %180, label %336

180:                                              ; preds = %177
  store i32 1, ptr %11, align 4
  br label %181

181:                                              ; preds = %329, %180
  %182 = load i32, ptr %11, align 4
  %183 = icmp slt i32 %182, 9
  br i1 %183, label %184, label %332

184:                                              ; preds = %181
  store i32 1, ptr %12, align 4
  br label %185

185:                                              ; preds = %325, %184
  %186 = load i32, ptr %12, align 4
  %187 = icmp slt i32 %186, 9
  br i1 %187, label %188, label %328

188:                                              ; preds = %185
  %189 = load ptr, ptr %5, align 8
  %190 = load i32, ptr %10, align 4
  %191 = add i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [10 x [10 x double]], ptr %189, i64 %192
  %194 = load i32, ptr %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [10 x [10 x double]], ptr %193, i64 0, i64 %195
  %197 = load i32, ptr %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [10 x double], ptr %196, i64 0, i64 %198
  %200 = load double, ptr %199, align 8
  %201 = load ptr, ptr %5, align 8
  %202 = load i32, ptr %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [10 x [10 x double]], ptr %201, i64 %203
  %205 = load i32, ptr %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [10 x [10 x double]], ptr %204, i64 0, i64 %206
  %208 = load i32, ptr %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [10 x double], ptr %207, i64 0, i64 %209
  %211 = load double, ptr %210, align 8
  %212 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %211, double %200)
  %213 = load ptr, ptr %5, align 8
  %214 = load i32, ptr %10, align 4
  %215 = sub i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [10 x [10 x double]], ptr %213, i64 %216
  %218 = load i32, ptr %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [10 x [10 x double]], ptr %217, i64 0, i64 %219
  %221 = load i32, ptr %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [10 x double], ptr %220, i64 0, i64 %222
  %224 = load double, ptr %223, align 8
  %225 = fadd double %212, %224
  %226 = load ptr, ptr %5, align 8
  %227 = load i32, ptr %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [10 x [10 x double]], ptr %226, i64 %228
  %230 = load i32, ptr %11, align 4
  %231 = add i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [10 x [10 x double]], ptr %229, i64 0, i64 %232
  %234 = load i32, ptr %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [10 x double], ptr %233, i64 0, i64 %235
  %237 = load double, ptr %236, align 8
  %238 = load ptr, ptr %5, align 8
  %239 = load i32, ptr %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [10 x [10 x double]], ptr %238, i64 %240
  %242 = load i32, ptr %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [10 x [10 x double]], ptr %241, i64 0, i64 %243
  %245 = load i32, ptr %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [10 x double], ptr %244, i64 0, i64 %246
  %248 = load double, ptr %247, align 8
  %249 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %248, double %237)
  %250 = load ptr, ptr %5, align 8
  %251 = load i32, ptr %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [10 x [10 x double]], ptr %250, i64 %252
  %254 = load i32, ptr %11, align 4
  %255 = sub i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [10 x [10 x double]], ptr %253, i64 0, i64 %256
  %258 = load i32, ptr %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [10 x double], ptr %257, i64 0, i64 %259
  %261 = load double, ptr %260, align 8
  %262 = fadd double %249, %261
  %263 = fmul double 1.250000e-01, %262
  %264 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %225, double %263)
  %265 = load ptr, ptr %5, align 8
  %266 = load i32, ptr %10, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [10 x [10 x double]], ptr %265, i64 %267
  %269 = load i32, ptr %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [10 x [10 x double]], ptr %268, i64 0, i64 %270
  %272 = load i32, ptr %12, align 4
  %273 = add i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [10 x double], ptr %271, i64 0, i64 %274
  %276 = load double, ptr %275, align 8
  %277 = load ptr, ptr %5, align 8
  %278 = load i32, ptr %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [10 x [10 x double]], ptr %277, i64 %279
  %281 = load i32, ptr %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [10 x [10 x double]], ptr %280, i64 0, i64 %282
  %284 = load i32, ptr %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [10 x double], ptr %283, i64 0, i64 %285
  %287 = load double, ptr %286, align 8
  %288 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %287, double %276)
  %289 = load ptr, ptr %5, align 8
  %290 = load i32, ptr %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [10 x [10 x double]], ptr %289, i64 %291
  %293 = load i32, ptr %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [10 x [10 x double]], ptr %292, i64 0, i64 %294
  %296 = load i32, ptr %12, align 4
  %297 = sub i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [10 x double], ptr %295, i64 0, i64 %298
  %300 = load double, ptr %299, align 8
  %301 = fadd double %288, %300
  %302 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %301, double %264)
  %303 = load ptr, ptr %5, align 8
  %304 = load i32, ptr %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [10 x [10 x double]], ptr %303, i64 %305
  %307 = load i32, ptr %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [10 x [10 x double]], ptr %306, i64 0, i64 %308
  %310 = load i32, ptr %12, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [10 x double], ptr %309, i64 0, i64 %311
  %313 = load double, ptr %312, align 8
  %314 = fadd double %302, %313
  %315 = load ptr, ptr %6, align 8
  %316 = load i32, ptr %10, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [10 x [10 x double]], ptr %315, i64 %317
  %319 = load i32, ptr %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [10 x [10 x double]], ptr %318, i64 0, i64 %320
  %322 = load i32, ptr %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [10 x double], ptr %321, i64 0, i64 %323
  store double %314, ptr %324, align 8
  br label %325

325:                                              ; preds = %188
  %326 = load i32, ptr %12, align 4
  %327 = add i32 %326, 1
  store i32 %327, ptr %12, align 4
  br label %185, !llvm.loop !14

328:                                              ; preds = %185
  br label %329

329:                                              ; preds = %328
  %330 = load i32, ptr %11, align 4
  %331 = add i32 %330, 1
  store i32 %331, ptr %11, align 4
  br label %181, !llvm.loop !15

332:                                              ; preds = %181
  br label %333

333:                                              ; preds = %332
  %334 = load i32, ptr %10, align 4
  %335 = add i32 %334, 1
  store i32 %335, ptr %10, align 4
  br label %177, !llvm.loop !16

336:                                              ; preds = %177
  br label %337

337:                                              ; preds = %336
  %338 = load i32, ptr %9, align 4
  %339 = add i32 %338, 1
  store i32 %339, ptr %9, align 4
  br label %13, !llvm.loop !17

340:                                              ; preds = %13
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store i32 %0, ptr %4, align 4
  %8 = call ptr @__acrt_iob_func(i32 noundef 2)
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %10 = call ptr @__acrt_iob_func(i32 noundef 2)
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01FHEEJDEE@A?$AA@") #5
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %65, %2
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %61, %16
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  store i32 0, ptr %7, align 4
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32, ptr %5, align 4
  %28 = load i32, ptr %4, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, ptr %4, align 4
  %31 = mul i32 %29, %30
  %32 = load i32, ptr %6, align 4
  %33 = load i32, ptr %4, align 4
  %34 = mul i32 %32, %33
  %35 = add i32 %31, %34
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %35, %36
  %38 = srem i32 %37, 20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = call ptr @__acrt_iob_func(i32 noundef 2)
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %43

43:                                               ; preds = %40, %26
  %44 = load ptr, ptr %3, align 8
  %45 = load i32, ptr %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x [10 x double]], ptr %44, i64 %46
  %48 = load i32, ptr %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x [10 x double]], ptr %47, i64 0, i64 %49
  %51 = load i32, ptr %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x double], ptr %50, i64 0, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = call ptr @__acrt_iob_func(i32 noundef 2)
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %54) #5
  br label %57

57:                                               ; preds = %43
  %58 = load i32, ptr %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %7, align 4
  br label %22, !llvm.loop !18

60:                                               ; preds = %22
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %6, align 4
  br label %17, !llvm.loop !19

64:                                               ; preds = %17
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %5, align 4
  br label %12, !llvm.loop !20

68:                                               ; preds = %12
  %69 = call ptr @__acrt_iob_func(i32 noundef 2)
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01FHEEJDEE@A?$AA@") #5
  %71 = call ptr @__acrt_iob_func(i32 noundef 2)
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  ret void
}

declare dso_local void @free(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef -1, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @__local_stdio_printf_options()
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 1
  %20 = call i32 @__stdio_common_vsprintf(i64 noundef %19, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %20, ptr %11, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %26

24:                                               ; preds = %5
  %25 = load i32, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ -1, %23 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start.p0(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vfprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end.p0(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_printf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfprintf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\heat-3d\\heat-3d.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
