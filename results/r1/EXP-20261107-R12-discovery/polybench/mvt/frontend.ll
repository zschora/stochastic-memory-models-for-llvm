; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\kernels\mvt\mvt.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\mvt\\mvt.c"
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

$"??_C@_02JMABBILH@x1?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_02LHCMELHE@x2?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_02JMABBILH@x1?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"x1\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_02LHCMELHE@x2?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"x2\00", comdat, align 4
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
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 40, ptr %6, align 4
  %12 = call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8)
  store ptr %12, ptr %7, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %13, ptr %8, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %14, ptr %9, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %15, ptr %10, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %16, ptr %11, align 8
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr inbounds [40 x [40 x double]], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds [40 x double], ptr %19, i64 0, i64 0
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds [40 x double], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds [40 x double], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds [40 x double], ptr %25, i64 0, i64 0
  %27 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %27, ptr noundef %26, ptr noundef %24, ptr noundef %22, ptr noundef %20, ptr noundef %18)
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds [40 x [40 x double]], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %11, align 8
  %31 = getelementptr inbounds [40 x double], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds [40 x double], ptr %32, i64 0, i64 0
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds [40 x double], ptr %34, i64 0, i64 0
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds [40 x double], ptr %36, i64 0, i64 0
  %38 = load i32, ptr %6, align 4
  call void @kernel_mvt(i32 noundef %38, ptr noundef %37, ptr noundef %35, ptr noundef %33, ptr noundef %31, ptr noundef %29)
  %39 = load i32, ptr %5, align 4
  %40 = icmp sgt i32 %39, 42
  br i1 %40, label %41, label %53

41:                                               ; preds = %2
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds ptr, ptr %42, i64 0
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 @strcmp(ptr noundef %44, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds [40 x double], ptr %48, i64 0, i64 0
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds [40 x double], ptr %50, i64 0, i64 0
  %52 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %52, ptr noundef %51, ptr noundef %49)
  br label %53

53:                                               ; preds = %47, %41, %2
  %54 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %54)
  %55 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %55)
  %56 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %56)
  %57 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %57)
  %58 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %58)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store i32 %0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  br label %15

15:                                               ; preds = %92, %6
  %16 = load i32, ptr %13, align 4
  %17 = load i32, ptr %12, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 4
  %21 = load i32, ptr %12, align 4
  %22 = srem i32 %20, %21
  %23 = sitofp i32 %22 to double
  %24 = load i32, ptr %12, align 4
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %23, %25
  %27 = load ptr, ptr %11, align 8
  %28 = load i32, ptr %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %27, i64 %29
  store double %26, ptr %30, align 8
  %31 = load i32, ptr %13, align 4
  %32 = add i32 %31, 1
  %33 = load i32, ptr %12, align 4
  %34 = srem i32 %32, %33
  %35 = sitofp i32 %34 to double
  %36 = load i32, ptr %12, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %35, %37
  %39 = load ptr, ptr %10, align 8
  %40 = load i32, ptr %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %39, i64 %41
  store double %38, ptr %42, align 8
  %43 = load i32, ptr %13, align 4
  %44 = add i32 %43, 3
  %45 = load i32, ptr %12, align 4
  %46 = srem i32 %44, %45
  %47 = sitofp i32 %46 to double
  %48 = load i32, ptr %12, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %47, %49
  %51 = load ptr, ptr %9, align 8
  %52 = load i32, ptr %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %51, i64 %53
  store double %50, ptr %54, align 8
  %55 = load i32, ptr %13, align 4
  %56 = add i32 %55, 4
  %57 = load i32, ptr %12, align 4
  %58 = srem i32 %56, %57
  %59 = sitofp i32 %58 to double
  %60 = load i32, ptr %12, align 4
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %59, %61
  %63 = load ptr, ptr %8, align 8
  %64 = load i32, ptr %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %63, i64 %65
  store double %62, ptr %66, align 8
  store i32 0, ptr %14, align 4
  br label %67

67:                                               ; preds = %88, %19
  %68 = load i32, ptr %14, align 4
  %69 = load i32, ptr %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32, ptr %13, align 4
  %73 = load i32, ptr %14, align 4
  %74 = mul i32 %72, %73
  %75 = load i32, ptr %12, align 4
  %76 = srem i32 %74, %75
  %77 = sitofp i32 %76 to double
  %78 = load i32, ptr %12, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %77, %79
  %81 = load ptr, ptr %7, align 8
  %82 = load i32, ptr %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [40 x double], ptr %81, i64 %83
  %85 = load i32, ptr %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [40 x double], ptr %84, i64 0, i64 %86
  store double %80, ptr %87, align 8
  br label %88

88:                                               ; preds = %71
  %89 = load i32, ptr %14, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %14, align 4
  br label %67, !llvm.loop !7

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %13, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %13, align 4
  br label %15, !llvm.loop !9

95:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store i32 %0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  br label %15

15:                                               ; preds = %50, %6
  %16 = load i32, ptr %13, align 4
  %17 = icmp slt i32 %16, 40
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  store i32 0, ptr %14, align 4
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i32, ptr %14, align 4
  %21 = icmp slt i32 %20, 40
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load ptr, ptr %11, align 8
  %24 = load i32, ptr %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %23, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load i32, ptr %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [40 x double], ptr %28, i64 %30
  %32 = load i32, ptr %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [40 x double], ptr %31, i64 0, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = load i32, ptr %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %36, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %35, double %40, double %27)
  %42 = load ptr, ptr %11, align 8
  %43 = load i32, ptr %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, ptr %42, i64 %44
  store double %41, ptr %45, align 8
  br label %46

46:                                               ; preds = %22
  %47 = load i32, ptr %14, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %14, align 4
  br label %19, !llvm.loop !10

49:                                               ; preds = %19
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %13, align 4
  br label %15, !llvm.loop !11

53:                                               ; preds = %15
  store i32 0, ptr %13, align 4
  br label %54

54:                                               ; preds = %89, %53
  %55 = load i32, ptr %13, align 4
  %56 = icmp slt i32 %55, 40
  br i1 %56, label %57, label %92

57:                                               ; preds = %54
  store i32 0, ptr %14, align 4
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, ptr %14, align 4
  %60 = icmp slt i32 %59, 40
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 8
  %63 = load i32, ptr %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %62, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = load ptr, ptr %7, align 8
  %68 = load i32, ptr %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [40 x double], ptr %67, i64 %69
  %71 = load i32, ptr %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [40 x double], ptr %70, i64 0, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = load ptr, ptr %8, align 8
  %76 = load i32, ptr %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr %75, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = call double @llvm.fmuladd.f64(double %74, double %79, double %66)
  %81 = load ptr, ptr %10, align 8
  %82 = load i32, ptr %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %81, i64 %83
  store double %80, ptr %84, align 8
  br label %85

85:                                               ; preds = %61
  %86 = load i32, ptr %14, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %14, align 4
  br label %58, !llvm.loop !12

88:                                               ; preds = %58
  br label %89

89:                                               ; preds = %88
  %90 = load i32, ptr %13, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %13, align 4
  br label %54, !llvm.loop !13

92:                                               ; preds = %54
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %0, ptr %6, align 4
  %8 = call ptr @__acrt_iob_func(i32 noundef 2)
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %10 = call ptr @__acrt_iob_func(i32 noundef 2)
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_02JMABBILH@x1?$AA@") #5
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %31, %3
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4
  %18 = srem i32 %17, 20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call ptr @__acrt_iob_func(i32 noundef 2)
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %23

23:                                               ; preds = %20, %16
  %24 = load ptr, ptr %5, align 8
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %24, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call ptr @__acrt_iob_func(i32 noundef 2)
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %28) #5
  br label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %7, align 4
  br label %12, !llvm.loop !14

34:                                               ; preds = %12
  %35 = call ptr @__acrt_iob_func(i32 noundef 2)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_02JMABBILH@x1?$AA@") #5
  %37 = call ptr @__acrt_iob_func(i32 noundef 2)
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_02LHCMELHE@x2?$AA@") #5
  store i32 0, ptr %7, align 4
  br label %39

39:                                               ; preds = %58, %34
  %40 = load i32, ptr %7, align 4
  %41 = load i32, ptr %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i32, ptr %7, align 4
  %45 = srem i32 %44, 20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call ptr @__acrt_iob_func(i32 noundef 2)
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %50

50:                                               ; preds = %47, %43
  %51 = load ptr, ptr %4, align 8
  %52 = load i32, ptr %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %51, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = call ptr @__acrt_iob_func(i32 noundef 2)
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %55) #5
  br label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %7, align 4
  br label %39, !llvm.loop !15

61:                                               ; preds = %39
  %62 = call ptr @__acrt_iob_func(i32 noundef 2)
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_02LHCMELHE@x2?$AA@") #5
  %64 = call ptr @__acrt_iob_func(i32 noundef 2)
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\mvt\\mvt.c", directory: "C:\\work\\llvm-profitability-research")
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
