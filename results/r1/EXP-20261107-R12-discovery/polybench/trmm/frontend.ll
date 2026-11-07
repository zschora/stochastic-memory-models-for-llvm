; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\blas\trmm\trmm.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\trmm\\trmm.c"
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

$"??_C@_01HMGJMAIH@B?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01HMGJMAIH@B?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"B\00", comdat, align 4
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
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 20, ptr %6, align 4
  store i32 30, ptr %7, align 4
  %11 = call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8)
  store ptr %11, ptr %9, align 8
  %12 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %12, ptr %10, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds [20 x [30 x double]], ptr %13, i64 0, i64 0
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds [20 x [20 x double]], ptr %15, i64 0, i64 0
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %18, i32 noundef %17, ptr noundef %8, ptr noundef %16, ptr noundef %14)
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds [20 x [30 x double]], ptr %19, i64 0, i64 0
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds [20 x [20 x double]], ptr %21, i64 0, i64 0
  %23 = load double, ptr %8, align 8
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %6, align 4
  call void @kernel_trmm(i32 noundef %25, i32 noundef %24, double noundef %23, ptr noundef %22, ptr noundef %20)
  %26 = load i32, ptr %5, align 4
  %27 = icmp sgt i32 %26, 42
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds ptr, ptr %29, i64 0
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @strcmp(ptr noundef %31, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %10, align 8
  %36 = getelementptr inbounds [20 x [30 x double]], ptr %35, i64 0, i64 0
  %37 = load i32, ptr %7, align 4
  %38 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %38, i32 noundef %37, ptr noundef %36)
  br label %39

39:                                               ; preds = %34, %28, %2
  %40 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %40)
  %41 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %41)
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
  %13 = load ptr, ptr %8, align 8
  store double 1.500000e+00, ptr %13, align 8
  store i32 0, ptr %11, align 4
  br label %14

14:                                               ; preds = %78, %5
  %15 = load i32, ptr %11, align 4
  %16 = load i32, ptr %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %14
  store i32 0, ptr %12, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, ptr %12, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32, ptr %11, align 4
  %25 = load i32, ptr %12, align 4
  %26 = add i32 %24, %25
  %27 = load i32, ptr %10, align 4
  %28 = srem i32 %26, %27
  %29 = sitofp i32 %28 to double
  %30 = load i32, ptr %10, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %29, %31
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [20 x double], ptr %33, i64 %35
  %37 = load i32, ptr %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x double], ptr %36, i64 0, i64 %38
  store double %32, ptr %39, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i32, ptr %12, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %12, align 4
  br label %19, !llvm.loop !7

43:                                               ; preds = %19
  %44 = load ptr, ptr %7, align 8
  %45 = load i32, ptr %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x double], ptr %44, i64 %46
  %48 = load i32, ptr %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x double], ptr %47, i64 0, i64 %49
  store double 1.000000e+00, ptr %50, align 8
  store i32 0, ptr %12, align 4
  br label %51

51:                                               ; preds = %74, %43
  %52 = load i32, ptr %12, align 4
  %53 = load i32, ptr %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i32, ptr %9, align 4
  %57 = load i32, ptr %11, align 4
  %58 = load i32, ptr %12, align 4
  %59 = sub i32 %57, %58
  %60 = add i32 %56, %59
  %61 = load i32, ptr %9, align 4
  %62 = srem i32 %60, %61
  %63 = sitofp i32 %62 to double
  %64 = load i32, ptr %9, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %63, %65
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [30 x double], ptr %67, i64 %69
  %71 = load i32, ptr %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [30 x double], ptr %70, i64 0, i64 %72
  store double %66, ptr %73, align 8
  br label %74

74:                                               ; preds = %55
  %75 = load i32, ptr %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %12, align 4
  br label %51, !llvm.loop !9

77:                                               ; preds = %51
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %11, align 4
  br label %14, !llvm.loop !10

81:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store double %2, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %14

14:                                               ; preds = %78, %5
  %15 = load i32, ptr %11, align 4
  %16 = icmp slt i32 %15, 20
  br i1 %16, label %17, label %81

17:                                               ; preds = %14
  store i32 0, ptr %12, align 4
  br label %18

18:                                               ; preds = %74, %17
  %19 = load i32, ptr %12, align 4
  %20 = icmp slt i32 %19, 30
  br i1 %20, label %21, label %77

21:                                               ; preds = %18
  %22 = load i32, ptr %11, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %13, align 4
  br label %24

24:                                               ; preds = %53, %21
  %25 = load i32, ptr %13, align 4
  %26 = icmp slt i32 %25, 20
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8
  %29 = load i32, ptr %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [20 x double], ptr %28, i64 %30
  %32 = load i32, ptr %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [20 x double], ptr %31, i64 0, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [30 x double], ptr %36, i64 %38
  %40 = load i32, ptr %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [30 x double], ptr %39, i64 0, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = load ptr, ptr %6, align 8
  %45 = load i32, ptr %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [30 x double], ptr %44, i64 %46
  %48 = load i32, ptr %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [30 x double], ptr %47, i64 0, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fmuladd.f64(double %35, double %43, double %51)
  store double %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %27
  %54 = load i32, ptr %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %13, align 4
  br label %24, !llvm.loop !11

56:                                               ; preds = %24
  %57 = load double, ptr %8, align 8
  %58 = load ptr, ptr %6, align 8
  %59 = load i32, ptr %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [30 x double], ptr %58, i64 %60
  %62 = load i32, ptr %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [30 x double], ptr %61, i64 0, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = fmul double %57, %65
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [30 x double], ptr %67, i64 %69
  %71 = load i32, ptr %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [30 x double], ptr %70, i64 0, i64 %72
  store double %66, ptr %73, align 8
  br label %74

74:                                               ; preds = %56
  %75 = load i32, ptr %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %12, align 4
  br label %18, !llvm.loop !12

77:                                               ; preds = %18
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %11, align 4
  br label %14, !llvm.loop !13

81:                                               ; preds = %14
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
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01HMGJMAIH@B?$AA@") #5
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
  br label %18, !llvm.loop !14

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %13, !llvm.loop !15

51:                                               ; preds = %13
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01HMGJMAIH@B?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\trmm\\trmm.c", directory: "C:\\work\\llvm-profitability-research")
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
