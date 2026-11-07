; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\solvers\gramschmidt\gramschmidt.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\gramschmidt\\gramschmidt.c"
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

$"??_C@_01DGKLNCNG@R?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_01BNIGIBBF@Q?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01DGKLNCNG@R?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"R\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_01BNIGIBBF@Q?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"Q\00", comdat, align 4
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
  %10 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 20, ptr %6, align 4
  store i32 30, ptr %7, align 4
  %11 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %11, ptr %8, align 8
  %12 = call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8)
  store ptr %12, ptr %9, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %13, ptr %10, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr inbounds [20 x [30 x double]], ptr %14, i64 0, i64 0
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds [30 x [30 x double]], ptr %16, i64 0, i64 0
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds [20 x [30 x double]], ptr %18, i64 0, i64 0
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %21, i32 noundef %20, ptr noundef %19, ptr noundef %17, ptr noundef %15)
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds [20 x [30 x double]], ptr %22, i64 0, i64 0
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds [30 x [30 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds [20 x [30 x double]], ptr %26, i64 0, i64 0
  %28 = load i32, ptr %7, align 4
  %29 = load i32, ptr %6, align 4
  call void @kernel_gramschmidt(i32 noundef %29, i32 noundef %28, ptr noundef %27, ptr noundef %25, ptr noundef %23)
  %30 = load i32, ptr %5, align 4
  %31 = icmp sgt i32 %30, 42
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds ptr, ptr %33, i64 0
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @strcmp(ptr noundef %35, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %10, align 8
  %40 = getelementptr inbounds [20 x [30 x double]], ptr %39, i64 0, i64 0
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr inbounds [30 x [30 x double]], ptr %41, i64 0, i64 0
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds [20 x [30 x double]], ptr %43, i64 0, i64 0
  %45 = load i32, ptr %7, align 4
  %46 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %46, i32 noundef %45, ptr noundef %44, ptr noundef %42, ptr noundef %40)
  br label %47

47:                                               ; preds = %38, %32, %2
  %48 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %48)
  %49 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %49)
  %50 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %50)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %13

13:                                               ; preds = %51, %5
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  store i32 0, ptr %12, align 4
  br label %18

18:                                               ; preds = %47, %17
  %19 = load i32, ptr %12, align 4
  %20 = load i32, ptr %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load i32, ptr %11, align 4
  %24 = load i32, ptr %12, align 4
  %25 = mul i32 %23, %24
  %26 = load i32, ptr %10, align 4
  %27 = srem i32 %25, %26
  %28 = sitofp i32 %27 to double
  %29 = load i32, ptr %10, align 4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %28, %30
  %32 = call double @llvm.fmuladd.f64(double %31, double 1.000000e+02, double 1.000000e+01)
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [30 x double], ptr %33, i64 %35
  %37 = load i32, ptr %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [30 x double], ptr %36, i64 0, i64 %38
  store double %32, ptr %39, align 8
  %40 = load ptr, ptr %6, align 8
  %41 = load i32, ptr %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [30 x double], ptr %40, i64 %42
  %44 = load i32, ptr %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [30 x double], ptr %43, i64 0, i64 %45
  store double 0.000000e+00, ptr %46, align 8
  br label %47

47:                                               ; preds = %22
  %48 = load i32, ptr %12, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %12, align 4
  br label %18, !llvm.loop !7

50:                                               ; preds = %18
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %11, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %11, align 4
  br label %13, !llvm.loop !9

54:                                               ; preds = %13
  store i32 0, ptr %11, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, ptr %11, align 4
  %57 = load i32, ptr %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  store i32 0, ptr %12, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, ptr %12, align 4
  %62 = load i32, ptr %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 8
  %66 = load i32, ptr %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [30 x double], ptr %65, i64 %67
  %69 = load i32, ptr %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [30 x double], ptr %68, i64 0, i64 %70
  store double 0.000000e+00, ptr %71, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, ptr %12, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %12, align 4
  br label %60, !llvm.loop !10

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %11, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %11, align 4
  br label %55, !llvm.loop !11

79:                                               ; preds = %55
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gramschmidt(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %0, ptr %10, align 4
  store i32 0, ptr %13, align 4
  br label %15

15:                                               ; preds = %177, %5
  %16 = load i32, ptr %13, align 4
  %17 = icmp slt i32 %16, 30
  br i1 %17, label %18, label %180

18:                                               ; preds = %15
  store double 0.000000e+00, ptr %14, align 8
  store i32 0, ptr %11, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i32, ptr %11, align 4
  %21 = icmp slt i32 %20, 20
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load ptr, ptr %8, align 8
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [30 x double], ptr %23, i64 %25
  %27 = load i32, ptr %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [30 x double], ptr %26, i64 0, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = load ptr, ptr %8, align 8
  %32 = load i32, ptr %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [30 x double], ptr %31, i64 %33
  %35 = load i32, ptr %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [30 x double], ptr %34, i64 0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = load double, ptr %14, align 8
  %40 = call double @llvm.fmuladd.f64(double %30, double %38, double %39)
  store double %40, ptr %14, align 8
  br label %41

41:                                               ; preds = %22
  %42 = load i32, ptr %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %11, align 4
  br label %19, !llvm.loop !12

44:                                               ; preds = %19
  %45 = load double, ptr %14, align 8
  %46 = call double @sqrt(double noundef %45) #5
  %47 = load ptr, ptr %7, align 8
  %48 = load i32, ptr %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [30 x double], ptr %47, i64 %49
  %51 = load i32, ptr %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [30 x double], ptr %50, i64 0, i64 %52
  store double %46, ptr %53, align 8
  store i32 0, ptr %11, align 4
  br label %54

54:                                               ; preds = %82, %44
  %55 = load i32, ptr %11, align 4
  %56 = icmp slt i32 %55, 20
  br i1 %56, label %57, label %85

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 8
  %59 = load i32, ptr %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [30 x double], ptr %58, i64 %60
  %62 = load i32, ptr %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [30 x double], ptr %61, i64 0, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = load ptr, ptr %7, align 8
  %67 = load i32, ptr %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [30 x double], ptr %66, i64 %68
  %70 = load i32, ptr %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [30 x double], ptr %69, i64 0, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = fdiv double %65, %73
  %75 = load ptr, ptr %6, align 8
  %76 = load i32, ptr %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [30 x double], ptr %75, i64 %77
  %79 = load i32, ptr %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [30 x double], ptr %78, i64 0, i64 %80
  store double %74, ptr %81, align 8
  br label %82

82:                                               ; preds = %57
  %83 = load i32, ptr %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %11, align 4
  br label %54, !llvm.loop !13

85:                                               ; preds = %54
  %86 = load i32, ptr %13, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %12, align 4
  br label %88

88:                                               ; preds = %173, %85
  %89 = load i32, ptr %12, align 4
  %90 = icmp slt i32 %89, 30
  br i1 %90, label %91, label %176

91:                                               ; preds = %88
  %92 = load ptr, ptr %7, align 8
  %93 = load i32, ptr %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [30 x double], ptr %92, i64 %94
  %96 = load i32, ptr %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [30 x double], ptr %95, i64 0, i64 %97
  store double 0.000000e+00, ptr %98, align 8
  store i32 0, ptr %11, align 4
  br label %99

99:                                               ; preds = %128, %91
  %100 = load i32, ptr %11, align 4
  %101 = icmp slt i32 %100, 20
  br i1 %101, label %102, label %131

102:                                              ; preds = %99
  %103 = load ptr, ptr %6, align 8
  %104 = load i32, ptr %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [30 x double], ptr %103, i64 %105
  %107 = load i32, ptr %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [30 x double], ptr %106, i64 0, i64 %108
  %110 = load double, ptr %109, align 8
  %111 = load ptr, ptr %8, align 8
  %112 = load i32, ptr %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [30 x double], ptr %111, i64 %113
  %115 = load i32, ptr %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [30 x double], ptr %114, i64 0, i64 %116
  %118 = load double, ptr %117, align 8
  %119 = load ptr, ptr %7, align 8
  %120 = load i32, ptr %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [30 x double], ptr %119, i64 %121
  %123 = load i32, ptr %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [30 x double], ptr %122, i64 0, i64 %124
  %126 = load double, ptr %125, align 8
  %127 = call double @llvm.fmuladd.f64(double %110, double %118, double %126)
  store double %127, ptr %125, align 8
  br label %128

128:                                              ; preds = %102
  %129 = load i32, ptr %11, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %11, align 4
  br label %99, !llvm.loop !14

131:                                              ; preds = %99
  store i32 0, ptr %11, align 4
  br label %132

132:                                              ; preds = %169, %131
  %133 = load i32, ptr %11, align 4
  %134 = icmp slt i32 %133, 20
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  %136 = load ptr, ptr %8, align 8
  %137 = load i32, ptr %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [30 x double], ptr %136, i64 %138
  %140 = load i32, ptr %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [30 x double], ptr %139, i64 0, i64 %141
  %143 = load double, ptr %142, align 8
  %144 = load ptr, ptr %6, align 8
  %145 = load i32, ptr %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [30 x double], ptr %144, i64 %146
  %148 = load i32, ptr %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [30 x double], ptr %147, i64 0, i64 %149
  %151 = load double, ptr %150, align 8
  %152 = load ptr, ptr %7, align 8
  %153 = load i32, ptr %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [30 x double], ptr %152, i64 %154
  %156 = load i32, ptr %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [30 x double], ptr %155, i64 0, i64 %157
  %159 = load double, ptr %158, align 8
  %160 = fneg double %151
  %161 = call double @llvm.fmuladd.f64(double %160, double %159, double %143)
  %162 = load ptr, ptr %8, align 8
  %163 = load i32, ptr %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [30 x double], ptr %162, i64 %164
  %166 = load i32, ptr %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [30 x double], ptr %165, i64 0, i64 %167
  store double %161, ptr %168, align 8
  br label %169

169:                                              ; preds = %135
  %170 = load i32, ptr %11, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr %11, align 4
  br label %132, !llvm.loop !15

172:                                              ; preds = %132
  br label %173

173:                                              ; preds = %172
  %174 = load i32, ptr %12, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %12, align 4
  br label %88, !llvm.loop !16

176:                                              ; preds = %88
  br label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %13, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %13, align 4
  br label %15, !llvm.loop !17

180:                                              ; preds = %15
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %0, ptr %10, align 4
  %13 = call ptr @__acrt_iob_func(i32 noundef 2)
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %15 = call ptr @__acrt_iob_func(i32 noundef 2)
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01DGKLNCNG@R?$AA@") #5
  store i32 0, ptr %11, align 4
  br label %17

17:                                               ; preds = %52, %5
  %18 = load i32, ptr %11, align 4
  %19 = load i32, ptr %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  store i32 0, ptr %12, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, ptr %12, align 4
  %24 = load i32, ptr %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32, ptr %11, align 4
  %28 = load i32, ptr %9, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, ptr %12, align 4
  %31 = add i32 %29, %30
  %32 = srem i32 %31, 20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = call ptr @__acrt_iob_func(i32 noundef 2)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %37

37:                                               ; preds = %34, %26
  %38 = load ptr, ptr %7, align 8
  %39 = load i32, ptr %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [30 x double], ptr %38, i64 %40
  %42 = load i32, ptr %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [30 x double], ptr %41, i64 0, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call ptr @__acrt_iob_func(i32 noundef 2)
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %45) #5
  br label %48

48:                                               ; preds = %37
  %49 = load i32, ptr %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %12, align 4
  br label %22, !llvm.loop !18

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %11, align 4
  br label %17, !llvm.loop !19

55:                                               ; preds = %17
  %56 = call ptr @__acrt_iob_func(i32 noundef 2)
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01DGKLNCNG@R?$AA@") #5
  %58 = call ptr @__acrt_iob_func(i32 noundef 2)
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01BNIGIBBF@Q?$AA@") #5
  store i32 0, ptr %11, align 4
  br label %60

60:                                               ; preds = %95, %55
  %61 = load i32, ptr %11, align 4
  %62 = load i32, ptr %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  store i32 0, ptr %12, align 4
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i32, ptr %12, align 4
  %67 = load i32, ptr %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load i32, ptr %11, align 4
  %71 = load i32, ptr %9, align 4
  %72 = mul i32 %70, %71
  %73 = load i32, ptr %12, align 4
  %74 = add i32 %72, %73
  %75 = srem i32 %74, 20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = call ptr @__acrt_iob_func(i32 noundef 2)
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %80

80:                                               ; preds = %77, %69
  %81 = load ptr, ptr %6, align 8
  %82 = load i32, ptr %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [30 x double], ptr %81, i64 %83
  %85 = load i32, ptr %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [30 x double], ptr %84, i64 0, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = call ptr @__acrt_iob_func(i32 noundef 2)
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %88) #5
  br label %91

91:                                               ; preds = %80
  %92 = load i32, ptr %12, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %12, align 4
  br label %65, !llvm.loop !20

94:                                               ; preds = %65
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %11, align 4
  br label %60, !llvm.loop !21

98:                                               ; preds = %60
  %99 = call ptr @__acrt_iob_func(i32 noundef 2)
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01BNIGIBBF@Q?$AA@") #5
  %101 = call ptr @__acrt_iob_func(i32 noundef 2)
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\gramschmidt\\gramschmidt.c", directory: "C:\\work\\llvm-profitability-research")
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
!21 = distinct !{!21, !8}
