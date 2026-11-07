; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\blas\symm\symm.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\symm\\symm.c"
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

$"??_C@_01GFHCPBMG@C?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01GFHCPBMG@C?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"C\00", comdat, align 4
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
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 20, ptr %6, align 4
  store i32 30, ptr %7, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %13, ptr %10, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8)
  store ptr %14, ptr %11, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %15, ptr %12, align 8
  %16 = load ptr, ptr %12, align 8
  %17 = getelementptr inbounds [20 x [30 x double]], ptr %16, i64 0, i64 0
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds [20 x [20 x double]], ptr %18, i64 0, i64 0
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds [20 x [30 x double]], ptr %20, i64 0, i64 0
  %22 = load i32, ptr %7, align 4
  %23 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %23, i32 noundef %22, ptr noundef %8, ptr noundef %9, ptr noundef %21, ptr noundef %19, ptr noundef %17)
  %24 = load ptr, ptr %12, align 8
  %25 = getelementptr inbounds [20 x [30 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds [20 x [20 x double]], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds [20 x [30 x double]], ptr %28, i64 0, i64 0
  %30 = load double, ptr %9, align 8
  %31 = load double, ptr %8, align 8
  %32 = load i32, ptr %7, align 4
  %33 = load i32, ptr %6, align 4
  call void @kernel_symm(i32 noundef %33, i32 noundef %32, double noundef %31, double noundef %30, ptr noundef %29, ptr noundef %27, ptr noundef %25)
  %34 = load i32, ptr %5, align 4
  %35 = icmp sgt i32 %34, 42
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 0
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @strcmp(ptr noundef %39, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %10, align 8
  %44 = getelementptr inbounds [20 x [30 x double]], ptr %43, i64 0, i64 0
  %45 = load i32, ptr %7, align 4
  %46 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %46, i32 noundef %45, ptr noundef %44)
  br label %47

47:                                               ; preds = %42, %36, %2
  %48 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %48)
  %49 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %49)
  %50 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %50)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %6, ptr %8, align 8
  store ptr %5, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %2, ptr %12, align 8
  store i32 %1, ptr %13, align 4
  store i32 %0, ptr %14, align 4
  %17 = load ptr, ptr %12, align 8
  store double 1.500000e+00, ptr %17, align 8
  %18 = load ptr, ptr %11, align 8
  store double 1.200000e+00, ptr %18, align 8
  store i32 0, ptr %15, align 4
  br label %19

19:                                               ; preds = %65, %7
  %20 = load i32, ptr %15, align 4
  %21 = load i32, ptr %14, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  store i32 0, ptr %16, align 4
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i32, ptr %16, align 4
  %26 = load i32, ptr %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load i32, ptr %15, align 4
  %30 = load i32, ptr %16, align 4
  %31 = add i32 %29, %30
  %32 = srem i32 %31, 100
  %33 = sitofp i32 %32 to double
  %34 = load i32, ptr %14, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %33, %35
  %37 = load ptr, ptr %10, align 8
  %38 = load i32, ptr %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [30 x double], ptr %37, i64 %39
  %41 = load i32, ptr %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [30 x double], ptr %40, i64 0, i64 %42
  store double %36, ptr %43, align 8
  %44 = load i32, ptr %13, align 4
  %45 = load i32, ptr %15, align 4
  %46 = add i32 %44, %45
  %47 = load i32, ptr %16, align 4
  %48 = sub i32 %46, %47
  %49 = srem i32 %48, 100
  %50 = sitofp i32 %49 to double
  %51 = load i32, ptr %14, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %50, %52
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [30 x double], ptr %54, i64 %56
  %58 = load i32, ptr %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [30 x double], ptr %57, i64 0, i64 %59
  store double %53, ptr %60, align 8
  br label %61

61:                                               ; preds = %28
  %62 = load i32, ptr %16, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %16, align 4
  br label %24, !llvm.loop !7

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %15, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %15, align 4
  br label %19, !llvm.loop !9

68:                                               ; preds = %19
  store i32 0, ptr %15, align 4
  br label %69

69:                                               ; preds = %116, %68
  %70 = load i32, ptr %15, align 4
  %71 = load i32, ptr %14, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %69
  store i32 0, ptr %16, align 4
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i32, ptr %16, align 4
  %76 = load i32, ptr %15, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load i32, ptr %15, align 4
  %80 = load i32, ptr %16, align 4
  %81 = add i32 %79, %80
  %82 = srem i32 %81, 100
  %83 = sitofp i32 %82 to double
  %84 = load i32, ptr %14, align 4
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %83, %85
  %87 = load ptr, ptr %9, align 8
  %88 = load i32, ptr %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [20 x double], ptr %87, i64 %89
  %91 = load i32, ptr %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [20 x double], ptr %90, i64 0, i64 %92
  store double %86, ptr %93, align 8
  br label %94

94:                                               ; preds = %78
  %95 = load i32, ptr %16, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %16, align 4
  br label %74, !llvm.loop !10

97:                                               ; preds = %74
  %98 = load i32, ptr %15, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %16, align 4
  br label %100

100:                                              ; preds = %112, %97
  %101 = load i32, ptr %16, align 4
  %102 = load i32, ptr %14, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load ptr, ptr %9, align 8
  %106 = load i32, ptr %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [20 x double], ptr %105, i64 %107
  %109 = load i32, ptr %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [20 x double], ptr %108, i64 0, i64 %110
  store double -9.990000e+02, ptr %111, align 8
  br label %112

112:                                              ; preds = %104
  %113 = load i32, ptr %16, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %16, align 4
  br label %100, !llvm.loop !11

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %15, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %15, align 4
  br label %69, !llvm.loop !12

119:                                              ; preds = %69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store ptr %6, ptr %8, align 8
  store ptr %5, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store double %3, ptr %11, align 8
  store double %2, ptr %12, align 8
  store i32 %1, ptr %13, align 4
  store i32 %0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  br label %19

19:                                               ; preds = %124, %7
  %20 = load i32, ptr %15, align 4
  %21 = icmp slt i32 %20, 20
  br i1 %21, label %22, label %127

22:                                               ; preds = %19
  store i32 0, ptr %16, align 4
  br label %23

23:                                               ; preds = %120, %22
  %24 = load i32, ptr %16, align 4
  %25 = icmp slt i32 %24, 30
  br i1 %25, label %26, label %123

26:                                               ; preds = %23
  store double 0.000000e+00, ptr %18, align 8
  store i32 0, ptr %17, align 4
  br label %27

27:                                               ; preds = %77, %26
  %28 = load i32, ptr %17, align 4
  %29 = load i32, ptr %15, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %27
  %32 = load double, ptr %12, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [30 x double], ptr %33, i64 %35
  %37 = load i32, ptr %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [30 x double], ptr %36, i64 0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = fmul double %32, %40
  %42 = load ptr, ptr %9, align 8
  %43 = load i32, ptr %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [20 x double], ptr %42, i64 %44
  %46 = load i32, ptr %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [20 x double], ptr %45, i64 0, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = load ptr, ptr %10, align 8
  %51 = load i32, ptr %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [30 x double], ptr %50, i64 %52
  %54 = load i32, ptr %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [30 x double], ptr %53, i64 0, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = call double @llvm.fmuladd.f64(double %41, double %49, double %57)
  store double %58, ptr %56, align 8
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [30 x double], ptr %59, i64 %61
  %63 = load i32, ptr %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [30 x double], ptr %62, i64 0, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = load ptr, ptr %9, align 8
  %68 = load i32, ptr %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [20 x double], ptr %67, i64 %69
  %71 = load i32, ptr %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [20 x double], ptr %70, i64 0, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = load double, ptr %18, align 8
  %76 = call double @llvm.fmuladd.f64(double %66, double %74, double %75)
  store double %76, ptr %18, align 8
  br label %77

77:                                               ; preds = %31
  %78 = load i32, ptr %17, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %17, align 4
  br label %27, !llvm.loop !13

80:                                               ; preds = %27
  %81 = load double, ptr %11, align 8
  %82 = load ptr, ptr %10, align 8
  %83 = load i32, ptr %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [30 x double], ptr %82, i64 %84
  %86 = load i32, ptr %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [30 x double], ptr %85, i64 0, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = load double, ptr %12, align 8
  %91 = load ptr, ptr %8, align 8
  %92 = load i32, ptr %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [30 x double], ptr %91, i64 %93
  %95 = load i32, ptr %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [30 x double], ptr %94, i64 0, i64 %96
  %98 = load double, ptr %97, align 8
  %99 = fmul double %90, %98
  %100 = load ptr, ptr %9, align 8
  %101 = load i32, ptr %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [20 x double], ptr %100, i64 %102
  %104 = load i32, ptr %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [20 x double], ptr %103, i64 0, i64 %105
  %107 = load double, ptr %106, align 8
  %108 = fmul double %99, %107
  %109 = call double @llvm.fmuladd.f64(double %81, double %89, double %108)
  %110 = load double, ptr %12, align 8
  %111 = load double, ptr %18, align 8
  %112 = call double @llvm.fmuladd.f64(double %110, double %111, double %109)
  %113 = load ptr, ptr %10, align 8
  %114 = load i32, ptr %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [30 x double], ptr %113, i64 %115
  %117 = load i32, ptr %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [30 x double], ptr %116, i64 0, i64 %118
  store double %112, ptr %119, align 8
  br label %120

120:                                              ; preds = %80
  %121 = load i32, ptr %16, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %16, align 4
  br label %23, !llvm.loop !14

123:                                              ; preds = %23
  br label %124

124:                                              ; preds = %123
  %125 = load i32, ptr %15, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %15, align 4
  br label %19, !llvm.loop !15

127:                                              ; preds = %19
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %0, ptr %6, align 4
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %11 = call ptr @__acrt_iob_func(i32 noundef 2)
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01GFHCPBMG@C?$AA@") #5
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %6, align 4
  %25 = mul i32 %23, %24
  %26 = load i32, ptr %8, align 4
  %27 = add i32 %25, %26
  %28 = srem i32 %27, 20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = call ptr @__acrt_iob_func(i32 noundef 2)
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %33

33:                                               ; preds = %30, %22
  %34 = load ptr, ptr %4, align 8
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [30 x double], ptr %34, i64 %36
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [30 x double], ptr %37, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call ptr @__acrt_iob_func(i32 noundef 2)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %41) #5
  br label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %8, align 4
  br label %18, !llvm.loop !16

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %13, !llvm.loop !17

51:                                               ; preds = %13
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01GFHCPBMG@C?$AA@") #5
  %54 = call ptr @__acrt_iob_func(i32 noundef 2)
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\symm\\symm.c", directory: "C:\\work\\llvm-profitability-research")
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
