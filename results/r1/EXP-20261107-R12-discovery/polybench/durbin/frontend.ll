; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\solvers\durbin\durbin.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\durbin\\durbin.c"
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

$"??_C@_01EANLCPLP@y?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01EANLCPLP@y?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"y\00", comdat, align 4
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
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 40, ptr %6, align 4
  %9 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %9, ptr %7, align 8
  %10 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %10, ptr %8, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr inbounds [40 x double], ptr %11, i64 0, i64 0
  %13 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %13, ptr noundef %12)
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds [40 x double], ptr %14, i64 0, i64 0
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds [40 x double], ptr %16, i64 0, i64 0
  %18 = load i32, ptr %6, align 4
  call void @kernel_durbin(i32 noundef %18, ptr noundef %17, ptr noundef %15)
  %19 = load i32, ptr %5, align 4
  %20 = icmp sgt i32 %19, 42
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds ptr, ptr %22, i64 0
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr inbounds [40 x double], ptr %28, i64 0, i64 0
  %30 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %30, ptr noundef %29)
  br label %31

31:                                               ; preds = %27, %21, %2
  %32 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %32)
  %33 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %33)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store i32 %0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = add i32 %12, 1
  %14 = load i32, ptr %5, align 4
  %15 = sub i32 %13, %14
  %16 = sitofp i32 %15 to double
  %17 = load ptr, ptr %3, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %17, i64 %19
  store double %16, ptr %20, align 8
  br label %21

21:                                               ; preds = %11
  %22 = load i32, ptr %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %5, align 4
  br label %7, !llvm.loop !7

24:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_durbin(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [40 x double], align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %0, ptr %6, align 4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds double, ptr %13, i64 0
  %15 = load double, ptr %14, align 8
  %16 = fneg double %15
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 0
  store double %16, ptr %18, align 8
  store double 1.000000e+00, ptr %9, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 0
  %21 = load double, ptr %20, align 8
  %22 = fneg double %21
  store double %22, ptr %8, align 8
  store i32 1, ptr %12, align 4
  br label %23

23:                                               ; preds = %116, %3
  %24 = load i32, ptr %12, align 4
  %25 = icmp slt i32 %24, 40
  br i1 %25, label %26, label %119

26:                                               ; preds = %23
  %27 = load double, ptr %8, align 8
  %28 = load double, ptr %8, align 8
  %29 = fneg double %27
  %30 = call double @llvm.fmuladd.f64(double %29, double %28, double 1.000000e+00)
  %31 = load double, ptr %9, align 8
  %32 = fmul double %30, %31
  store double %32, ptr %9, align 8
  store double 0.000000e+00, ptr %10, align 8
  store i32 0, ptr %11, align 4
  br label %33

33:                                               ; preds = %53, %26
  %34 = load i32, ptr %11, align 4
  %35 = load i32, ptr %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 8
  %39 = load i32, ptr %12, align 4
  %40 = load i32, ptr %11, align 4
  %41 = sub i32 %39, %40
  %42 = sub i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %38, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = load ptr, ptr %4, align 8
  %47 = load i32, ptr %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %46, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = load double, ptr %10, align 8
  %52 = call double @llvm.fmuladd.f64(double %45, double %50, double %51)
  store double %52, ptr %10, align 8
  br label %53

53:                                               ; preds = %37
  %54 = load i32, ptr %11, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %11, align 4
  br label %33, !llvm.loop !9

56:                                               ; preds = %33
  %57 = load ptr, ptr %5, align 8
  %58 = load i32, ptr %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %57, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = load double, ptr %10, align 8
  %63 = fadd double %61, %62
  %64 = fneg double %63
  %65 = load double, ptr %9, align 8
  %66 = fdiv double %64, %65
  store double %66, ptr %8, align 8
  store i32 0, ptr %11, align 4
  br label %67

67:                                               ; preds = %90, %56
  %68 = load i32, ptr %11, align 4
  %69 = load i32, ptr %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %67
  %72 = load ptr, ptr %4, align 8
  %73 = load i32, ptr %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %72, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = load double, ptr %8, align 8
  %78 = load ptr, ptr %4, align 8
  %79 = load i32, ptr %12, align 4
  %80 = load i32, ptr %11, align 4
  %81 = sub i32 %79, %80
  %82 = sub i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %78, i64 %83
  %85 = load double, ptr %84, align 8
  %86 = call double @llvm.fmuladd.f64(double %77, double %85, double %76)
  %87 = load i32, ptr %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [40 x double], ptr %7, i64 0, i64 %88
  store double %86, ptr %89, align 8
  br label %90

90:                                               ; preds = %71
  %91 = load i32, ptr %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %11, align 4
  br label %67, !llvm.loop !10

93:                                               ; preds = %67
  store i32 0, ptr %11, align 4
  br label %94

94:                                               ; preds = %107, %93
  %95 = load i32, ptr %11, align 4
  %96 = load i32, ptr %12, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, ptr %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [40 x double], ptr %7, i64 0, i64 %100
  %102 = load double, ptr %101, align 8
  %103 = load ptr, ptr %4, align 8
  %104 = load i32, ptr %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, ptr %103, i64 %105
  store double %102, ptr %106, align 8
  br label %107

107:                                              ; preds = %98
  %108 = load i32, ptr %11, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %11, align 4
  br label %94, !llvm.loop !11

110:                                              ; preds = %94
  %111 = load double, ptr %8, align 8
  %112 = load ptr, ptr %4, align 8
  %113 = load i32, ptr %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, ptr %112, i64 %114
  store double %111, ptr %115, align 8
  br label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %12, align 4
  br label %23, !llvm.loop !12

119:                                              ; preds = %23
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store i32 %0, ptr %4, align 4
  %6 = call ptr @__acrt_iob_func(i32 noundef 2)
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %8 = call ptr @__acrt_iob_func(i32 noundef 2)
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01EANLCPLP@y?$AA@") #5
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4
  %16 = srem i32 %15, 20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call ptr @__acrt_iob_func(i32 noundef 2)
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %22, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = call ptr @__acrt_iob_func(i32 noundef 2)
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %26) #5
  br label %29

29:                                               ; preds = %21
  %30 = load i32, ptr %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %5, align 4
  br label %10, !llvm.loop !13

32:                                               ; preds = %10
  %33 = call ptr @__acrt_iob_func(i32 noundef 2)
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01EANLCPLP@y?$AA@") #5
  %35 = call ptr @__acrt_iob_func(i32 noundef 2)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\durbin\\durbin.c", directory: "C:\\work\\llvm-profitability-research")
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
