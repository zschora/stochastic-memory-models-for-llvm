; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\stencils\adi\adi.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\adi\\adi.c"
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

$"??_C@_01OMGOGALD@u?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01OMGOGALD@u?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"u\00", comdat, align 4
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
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 20, ptr %6, align 4
  store i32 20, ptr %7, align 4
  %12 = call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8)
  store ptr %12, ptr %8, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8)
  store ptr %13, ptr %9, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8)
  store ptr %14, ptr %10, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8)
  store ptr %15, ptr %11, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds [20 x [20 x double]], ptr %16, i64 0, i64 0
  %18 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %18, ptr noundef %17)
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds [20 x [20 x double]], ptr %19, i64 0, i64 0
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds [20 x [20 x double]], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds [20 x [20 x double]], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds [20 x [20 x double]], ptr %25, i64 0, i64 0
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr %7, align 4
  call void @kernel_adi(i32 noundef %28, i32 noundef %27, ptr noundef %26, ptr noundef %24, ptr noundef %22, ptr noundef %20)
  %29 = load i32, ptr %5, align 4
  %30 = icmp sgt i32 %29, 42
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds ptr, ptr %32, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = call i32 @strcmp(ptr noundef %34, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds [20 x [20 x double]], ptr %38, i64 0, i64 0
  %40 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %40, ptr noundef %39)
  br label %41

41:                                               ; preds = %37, %31, %2
  %42 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %42)
  %43 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %43)
  %44 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %44)
  %45 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %45)
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

7:                                                ; preds = %37, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i32, ptr %5, align 4
  %18 = load i32, ptr %4, align 4
  %19 = add i32 %17, %18
  %20 = load i32, ptr %6, align 4
  %21 = sub i32 %19, %20
  %22 = sitofp i32 %21 to double
  %23 = load i32, ptr %4, align 4
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %22, %24
  %26 = load ptr, ptr %3, align 8
  %27 = load i32, ptr %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [20 x double], ptr %26, i64 %28
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x double], ptr %29, i64 0, i64 %31
  store double %25, ptr %32, align 8
  br label %33

33:                                               ; preds = %16
  %34 = load i32, ptr %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %6, align 4
  br label %12, !llvm.loop !7

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %5, align 4
  br label %7, !llvm.loop !9

40:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_adi(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store ptr %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i32 %1, ptr %11, align 4
  store i32 %0, ptr %12, align 4
  store double 5.000000e-02, ptr %16, align 8
  store double 5.000000e-02, ptr %17, align 8
  store double 5.000000e-02, ptr %18, align 8
  store double 2.000000e+00, ptr %19, align 8
  store double 1.000000e+00, ptr %20, align 8
  %29 = load double, ptr %19, align 8
  %30 = load double, ptr %18, align 8
  %31 = fmul double %29, %30
  %32 = load double, ptr %16, align 8
  %33 = load double, ptr %16, align 8
  %34 = fmul double %32, %33
  %35 = fdiv double %31, %34
  store double %35, ptr %21, align 8
  %36 = load double, ptr %20, align 8
  %37 = load double, ptr %18, align 8
  %38 = fmul double %36, %37
  %39 = load double, ptr %17, align 8
  %40 = load double, ptr %17, align 8
  %41 = fmul double %39, %40
  %42 = fdiv double %38, %41
  store double %42, ptr %22, align 8
  %43 = load double, ptr %21, align 8
  %44 = fneg double %43
  %45 = fdiv double %44, 2.000000e+00
  store double %45, ptr %23, align 8
  %46 = load double, ptr %21, align 8
  %47 = fadd double 1.000000e+00, %46
  store double %47, ptr %24, align 8
  %48 = load double, ptr %23, align 8
  store double %48, ptr %25, align 8
  %49 = load double, ptr %22, align 8
  %50 = fneg double %49
  %51 = fdiv double %50, 2.000000e+00
  store double %51, ptr %26, align 8
  %52 = load double, ptr %22, align 8
  %53 = fadd double 1.000000e+00, %52
  store double %53, ptr %27, align 8
  %54 = load double, ptr %26, align 8
  store double %54, ptr %28, align 8
  store i32 1, ptr %13, align 4
  br label %55

55:                                               ; preds = %403, %6
  %56 = load i32, ptr %13, align 4
  %57 = icmp sle i32 %56, 20
  br i1 %57, label %58, label %406

58:                                               ; preds = %55
  store i32 1, ptr %14, align 4
  br label %59

59:                                               ; preds = %227, %58
  %60 = load i32, ptr %14, align 4
  %61 = icmp slt i32 %60, 19
  br i1 %61, label %62, label %230

62:                                               ; preds = %59
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds [20 x double], ptr %63, i64 0
  %65 = load i32, ptr %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [20 x double], ptr %64, i64 0, i64 %66
  store double 1.000000e+00, ptr %67, align 8
  %68 = load ptr, ptr %8, align 8
  %69 = load i32, ptr %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [20 x double], ptr %68, i64 %70
  %72 = getelementptr inbounds [20 x double], ptr %71, i64 0, i64 0
  store double 0.000000e+00, ptr %72, align 8
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds [20 x double], ptr %73, i64 0
  %75 = load i32, ptr %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [20 x double], ptr %74, i64 0, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = load ptr, ptr %7, align 8
  %80 = load i32, ptr %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [20 x double], ptr %79, i64 %81
  %83 = getelementptr inbounds [20 x double], ptr %82, i64 0, i64 0
  store double %78, ptr %83, align 8
  store i32 1, ptr %15, align 4
  br label %84

84:                                               ; preds = %177, %62
  %85 = load i32, ptr %15, align 4
  %86 = icmp slt i32 %85, 19
  br i1 %86, label %87, label %180

87:                                               ; preds = %84
  %88 = load double, ptr %25, align 8
  %89 = fneg double %88
  %90 = load double, ptr %23, align 8
  %91 = load ptr, ptr %8, align 8
  %92 = load i32, ptr %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [20 x double], ptr %91, i64 %93
  %95 = load i32, ptr %15, align 4
  %96 = sub i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [20 x double], ptr %94, i64 0, i64 %97
  %99 = load double, ptr %98, align 8
  %100 = load double, ptr %24, align 8
  %101 = call double @llvm.fmuladd.f64(double %90, double %99, double %100)
  %102 = fdiv double %89, %101
  %103 = load ptr, ptr %8, align 8
  %104 = load i32, ptr %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [20 x double], ptr %103, i64 %105
  %107 = load i32, ptr %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [20 x double], ptr %106, i64 0, i64 %108
  store double %102, ptr %109, align 8
  %110 = load double, ptr %26, align 8
  %111 = fneg double %110
  %112 = load ptr, ptr %10, align 8
  %113 = load i32, ptr %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [20 x double], ptr %112, i64 %114
  %116 = load i32, ptr %14, align 4
  %117 = sub i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [20 x double], ptr %115, i64 0, i64 %118
  %120 = load double, ptr %119, align 8
  %121 = load double, ptr %26, align 8
  %122 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %121, double 1.000000e+00)
  %123 = load ptr, ptr %10, align 8
  %124 = load i32, ptr %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [20 x double], ptr %123, i64 %125
  %127 = load i32, ptr %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [20 x double], ptr %126, i64 0, i64 %128
  %130 = load double, ptr %129, align 8
  %131 = fmul double %122, %130
  %132 = call double @llvm.fmuladd.f64(double %111, double %120, double %131)
  %133 = load double, ptr %28, align 8
  %134 = load ptr, ptr %10, align 8
  %135 = load i32, ptr %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [20 x double], ptr %134, i64 %136
  %138 = load i32, ptr %14, align 4
  %139 = add i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [20 x double], ptr %137, i64 0, i64 %140
  %142 = load double, ptr %141, align 8
  %143 = fneg double %133
  %144 = call double @llvm.fmuladd.f64(double %143, double %142, double %132)
  %145 = load double, ptr %23, align 8
  %146 = load ptr, ptr %7, align 8
  %147 = load i32, ptr %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [20 x double], ptr %146, i64 %148
  %150 = load i32, ptr %15, align 4
  %151 = sub i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [20 x double], ptr %149, i64 0, i64 %152
  %154 = load double, ptr %153, align 8
  %155 = fneg double %145
  %156 = call double @llvm.fmuladd.f64(double %155, double %154, double %144)
  %157 = load double, ptr %23, align 8
  %158 = load ptr, ptr %8, align 8
  %159 = load i32, ptr %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [20 x double], ptr %158, i64 %160
  %162 = load i32, ptr %15, align 4
  %163 = sub i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [20 x double], ptr %161, i64 0, i64 %164
  %166 = load double, ptr %165, align 8
  %167 = load double, ptr %24, align 8
  %168 = call double @llvm.fmuladd.f64(double %157, double %166, double %167)
  %169 = fdiv double %156, %168
  %170 = load ptr, ptr %7, align 8
  %171 = load i32, ptr %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [20 x double], ptr %170, i64 %172
  %174 = load i32, ptr %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [20 x double], ptr %173, i64 0, i64 %175
  store double %169, ptr %176, align 8
  br label %177

177:                                              ; preds = %87
  %178 = load i32, ptr %15, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %15, align 4
  br label %84, !llvm.loop !10

180:                                              ; preds = %84
  %181 = load ptr, ptr %9, align 8
  %182 = getelementptr inbounds [20 x double], ptr %181, i64 19
  %183 = load i32, ptr %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [20 x double], ptr %182, i64 0, i64 %184
  store double 1.000000e+00, ptr %185, align 8
  store i32 18, ptr %15, align 4
  br label %186

186:                                              ; preds = %223, %180
  %187 = load i32, ptr %15, align 4
  %188 = icmp sge i32 %187, 1
  br i1 %188, label %189, label %226

189:                                              ; preds = %186
  %190 = load ptr, ptr %8, align 8
  %191 = load i32, ptr %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [20 x double], ptr %190, i64 %192
  %194 = load i32, ptr %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [20 x double], ptr %193, i64 0, i64 %195
  %197 = load double, ptr %196, align 8
  %198 = load ptr, ptr %9, align 8
  %199 = load i32, ptr %15, align 4
  %200 = add i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [20 x double], ptr %198, i64 %201
  %203 = load i32, ptr %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [20 x double], ptr %202, i64 0, i64 %204
  %206 = load double, ptr %205, align 8
  %207 = load ptr, ptr %7, align 8
  %208 = load i32, ptr %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [20 x double], ptr %207, i64 %209
  %211 = load i32, ptr %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [20 x double], ptr %210, i64 0, i64 %212
  %214 = load double, ptr %213, align 8
  %215 = call double @llvm.fmuladd.f64(double %197, double %206, double %214)
  %216 = load ptr, ptr %9, align 8
  %217 = load i32, ptr %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [20 x double], ptr %216, i64 %218
  %220 = load i32, ptr %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [20 x double], ptr %219, i64 0, i64 %221
  store double %215, ptr %222, align 8
  br label %223

223:                                              ; preds = %189
  %224 = load i32, ptr %15, align 4
  %225 = add i32 %224, -1
  store i32 %225, ptr %15, align 4
  br label %186, !llvm.loop !11

226:                                              ; preds = %186
  br label %227

227:                                              ; preds = %226
  %228 = load i32, ptr %14, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %14, align 4
  br label %59, !llvm.loop !12

230:                                              ; preds = %59
  store i32 1, ptr %14, align 4
  br label %231

231:                                              ; preds = %399, %230
  %232 = load i32, ptr %14, align 4
  %233 = icmp slt i32 %232, 19
  br i1 %233, label %234, label %402

234:                                              ; preds = %231
  %235 = load ptr, ptr %10, align 8
  %236 = load i32, ptr %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [20 x double], ptr %235, i64 %237
  %239 = getelementptr inbounds [20 x double], ptr %238, i64 0, i64 0
  store double 1.000000e+00, ptr %239, align 8
  %240 = load ptr, ptr %8, align 8
  %241 = load i32, ptr %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [20 x double], ptr %240, i64 %242
  %244 = getelementptr inbounds [20 x double], ptr %243, i64 0, i64 0
  store double 0.000000e+00, ptr %244, align 8
  %245 = load ptr, ptr %10, align 8
  %246 = load i32, ptr %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [20 x double], ptr %245, i64 %247
  %249 = getelementptr inbounds [20 x double], ptr %248, i64 0, i64 0
  %250 = load double, ptr %249, align 8
  %251 = load ptr, ptr %7, align 8
  %252 = load i32, ptr %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [20 x double], ptr %251, i64 %253
  %255 = getelementptr inbounds [20 x double], ptr %254, i64 0, i64 0
  store double %250, ptr %255, align 8
  store i32 1, ptr %15, align 4
  br label %256

256:                                              ; preds = %349, %234
  %257 = load i32, ptr %15, align 4
  %258 = icmp slt i32 %257, 19
  br i1 %258, label %259, label %352

259:                                              ; preds = %256
  %260 = load double, ptr %28, align 8
  %261 = fneg double %260
  %262 = load double, ptr %26, align 8
  %263 = load ptr, ptr %8, align 8
  %264 = load i32, ptr %14, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [20 x double], ptr %263, i64 %265
  %267 = load i32, ptr %15, align 4
  %268 = sub i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [20 x double], ptr %266, i64 0, i64 %269
  %271 = load double, ptr %270, align 8
  %272 = load double, ptr %27, align 8
  %273 = call double @llvm.fmuladd.f64(double %262, double %271, double %272)
  %274 = fdiv double %261, %273
  %275 = load ptr, ptr %8, align 8
  %276 = load i32, ptr %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [20 x double], ptr %275, i64 %277
  %279 = load i32, ptr %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [20 x double], ptr %278, i64 0, i64 %280
  store double %274, ptr %281, align 8
  %282 = load double, ptr %23, align 8
  %283 = fneg double %282
  %284 = load ptr, ptr %9, align 8
  %285 = load i32, ptr %14, align 4
  %286 = sub i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [20 x double], ptr %284, i64 %287
  %289 = load i32, ptr %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [20 x double], ptr %288, i64 0, i64 %290
  %292 = load double, ptr %291, align 8
  %293 = load double, ptr %23, align 8
  %294 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %293, double 1.000000e+00)
  %295 = load ptr, ptr %9, align 8
  %296 = load i32, ptr %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [20 x double], ptr %295, i64 %297
  %299 = load i32, ptr %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [20 x double], ptr %298, i64 0, i64 %300
  %302 = load double, ptr %301, align 8
  %303 = fmul double %294, %302
  %304 = call double @llvm.fmuladd.f64(double %283, double %292, double %303)
  %305 = load double, ptr %25, align 8
  %306 = load ptr, ptr %9, align 8
  %307 = load i32, ptr %14, align 4
  %308 = add i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [20 x double], ptr %306, i64 %309
  %311 = load i32, ptr %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [20 x double], ptr %310, i64 0, i64 %312
  %314 = load double, ptr %313, align 8
  %315 = fneg double %305
  %316 = call double @llvm.fmuladd.f64(double %315, double %314, double %304)
  %317 = load double, ptr %26, align 8
  %318 = load ptr, ptr %7, align 8
  %319 = load i32, ptr %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [20 x double], ptr %318, i64 %320
  %322 = load i32, ptr %15, align 4
  %323 = sub i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [20 x double], ptr %321, i64 0, i64 %324
  %326 = load double, ptr %325, align 8
  %327 = fneg double %317
  %328 = call double @llvm.fmuladd.f64(double %327, double %326, double %316)
  %329 = load double, ptr %26, align 8
  %330 = load ptr, ptr %8, align 8
  %331 = load i32, ptr %14, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [20 x double], ptr %330, i64 %332
  %334 = load i32, ptr %15, align 4
  %335 = sub i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [20 x double], ptr %333, i64 0, i64 %336
  %338 = load double, ptr %337, align 8
  %339 = load double, ptr %27, align 8
  %340 = call double @llvm.fmuladd.f64(double %329, double %338, double %339)
  %341 = fdiv double %328, %340
  %342 = load ptr, ptr %7, align 8
  %343 = load i32, ptr %14, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [20 x double], ptr %342, i64 %344
  %346 = load i32, ptr %15, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [20 x double], ptr %345, i64 0, i64 %347
  store double %341, ptr %348, align 8
  br label %349

349:                                              ; preds = %259
  %350 = load i32, ptr %15, align 4
  %351 = add i32 %350, 1
  store i32 %351, ptr %15, align 4
  br label %256, !llvm.loop !13

352:                                              ; preds = %256
  %353 = load ptr, ptr %10, align 8
  %354 = load i32, ptr %14, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [20 x double], ptr %353, i64 %355
  %357 = getelementptr inbounds [20 x double], ptr %356, i64 0, i64 19
  store double 1.000000e+00, ptr %357, align 8
  store i32 18, ptr %15, align 4
  br label %358

358:                                              ; preds = %395, %352
  %359 = load i32, ptr %15, align 4
  %360 = icmp sge i32 %359, 1
  br i1 %360, label %361, label %398

361:                                              ; preds = %358
  %362 = load ptr, ptr %8, align 8
  %363 = load i32, ptr %14, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [20 x double], ptr %362, i64 %364
  %366 = load i32, ptr %15, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [20 x double], ptr %365, i64 0, i64 %367
  %369 = load double, ptr %368, align 8
  %370 = load ptr, ptr %10, align 8
  %371 = load i32, ptr %14, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [20 x double], ptr %370, i64 %372
  %374 = load i32, ptr %15, align 4
  %375 = add i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [20 x double], ptr %373, i64 0, i64 %376
  %378 = load double, ptr %377, align 8
  %379 = load ptr, ptr %7, align 8
  %380 = load i32, ptr %14, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [20 x double], ptr %379, i64 %381
  %383 = load i32, ptr %15, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [20 x double], ptr %382, i64 0, i64 %384
  %386 = load double, ptr %385, align 8
  %387 = call double @llvm.fmuladd.f64(double %369, double %378, double %386)
  %388 = load ptr, ptr %10, align 8
  %389 = load i32, ptr %14, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [20 x double], ptr %388, i64 %390
  %392 = load i32, ptr %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [20 x double], ptr %391, i64 0, i64 %393
  store double %387, ptr %394, align 8
  br label %395

395:                                              ; preds = %361
  %396 = load i32, ptr %15, align 4
  %397 = add i32 %396, -1
  store i32 %397, ptr %15, align 4
  br label %358, !llvm.loop !14

398:                                              ; preds = %358
  br label %399

399:                                              ; preds = %398
  %400 = load i32, ptr %14, align 4
  %401 = add i32 %400, 1
  store i32 %401, ptr %14, align 4
  br label %231, !llvm.loop !15

402:                                              ; preds = %231
  br label %403

403:                                              ; preds = %402
  %404 = load i32, ptr %13, align 4
  %405 = add i32 %404, 1
  store i32 %405, ptr %13, align 4
  br label %55, !llvm.loop !16

406:                                              ; preds = %55
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
  store ptr %1, ptr %3, align 8
  store i32 %0, ptr %4, align 4
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01OMGOGALD@u?$AA@") #5
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  store i32 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 4
  %22 = load i32, ptr %4, align 4
  %23 = mul i32 %21, %22
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %23, %24
  %26 = srem i32 %25, 20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call ptr @__acrt_iob_func(i32 noundef 2)
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %31

31:                                               ; preds = %28, %20
  %32 = load ptr, ptr %3, align 8
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x double], ptr %32, i64 %34
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [20 x double], ptr %35, i64 0, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = call ptr @__acrt_iob_func(i32 noundef 2)
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %39) #5
  br label %42

42:                                               ; preds = %31
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %16, !llvm.loop !17

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %11, !llvm.loop !18

49:                                               ; preds = %11
  %50 = call ptr @__acrt_iob_func(i32 noundef 2)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01OMGOGALD@u?$AA@") #5
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\adi\\adi.c", directory: "C:\\work\\llvm-profitability-research")
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
