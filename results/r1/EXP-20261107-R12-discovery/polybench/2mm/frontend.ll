; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\kernels\2mm\2mm.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\2mm\\2mm.c"
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

$"??_C@_01CKDDGHAB@D?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01CKDDGHAB@D?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"D\00", comdat, align 4
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
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 16, ptr %6, align 4
  store i32 18, ptr %7, align 4
  store i32 22, ptr %8, align 4
  store i32 24, ptr %9, align 4
  %17 = call ptr @polybench_alloc_data(i64 noundef 288, i32 noundef 8)
  store ptr %17, ptr %12, align 8
  %18 = call ptr @polybench_alloc_data(i64 noundef 352, i32 noundef 8)
  store ptr %18, ptr %13, align 8
  %19 = call ptr @polybench_alloc_data(i64 noundef 396, i32 noundef 8)
  store ptr %19, ptr %14, align 8
  %20 = call ptr @polybench_alloc_data(i64 noundef 432, i32 noundef 8)
  store ptr %20, ptr %15, align 8
  %21 = call ptr @polybench_alloc_data(i64 noundef 384, i32 noundef 8)
  store ptr %21, ptr %16, align 8
  %22 = load ptr, ptr %16, align 8
  %23 = getelementptr inbounds [16 x [24 x double]], ptr %22, i64 0, i64 0
  %24 = load ptr, ptr %15, align 8
  %25 = getelementptr inbounds [18 x [24 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr inbounds [22 x [18 x double]], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds [16 x [22 x double]], ptr %28, i64 0, i64 0
  %30 = load i32, ptr %9, align 4
  %31 = load i32, ptr %8, align 4
  %32 = load i32, ptr %7, align 4
  %33 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %33, i32 noundef %32, i32 noundef %31, i32 noundef %30, ptr noundef %10, ptr noundef %11, ptr noundef %29, ptr noundef %27, ptr noundef %25, ptr noundef %23)
  %34 = load ptr, ptr %16, align 8
  %35 = getelementptr inbounds [16 x [24 x double]], ptr %34, i64 0, i64 0
  %36 = load ptr, ptr %15, align 8
  %37 = getelementptr inbounds [18 x [24 x double]], ptr %36, i64 0, i64 0
  %38 = load ptr, ptr %14, align 8
  %39 = getelementptr inbounds [22 x [18 x double]], ptr %38, i64 0, i64 0
  %40 = load ptr, ptr %13, align 8
  %41 = getelementptr inbounds [16 x [22 x double]], ptr %40, i64 0, i64 0
  %42 = load ptr, ptr %12, align 8
  %43 = getelementptr inbounds [16 x [18 x double]], ptr %42, i64 0, i64 0
  %44 = load double, ptr %11, align 8
  %45 = load double, ptr %10, align 8
  %46 = load i32, ptr %9, align 4
  %47 = load i32, ptr %8, align 4
  %48 = load i32, ptr %7, align 4
  %49 = load i32, ptr %6, align 4
  call void @kernel_2mm(i32 noundef %49, i32 noundef %48, i32 noundef %47, i32 noundef %46, double noundef %45, double noundef %44, ptr noundef %43, ptr noundef %41, ptr noundef %39, ptr noundef %37, ptr noundef %35)
  %50 = load i32, ptr %5, align 4
  %51 = icmp sgt i32 %50, 42
  br i1 %51, label %52, label %63

52:                                               ; preds = %2
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds ptr, ptr %53, i64 0
  %55 = load ptr, ptr %54, align 8
  %56 = call i32 @strcmp(ptr noundef %55, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %16, align 8
  %60 = getelementptr inbounds [16 x [24 x double]], ptr %59, i64 0, i64 0
  %61 = load i32, ptr %9, align 4
  %62 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %62, i32 noundef %61, ptr noundef %60)
  br label %63

63:                                               ; preds = %58, %52, %2
  %64 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %64)
  %65 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %65)
  %66 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %66)
  %67 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %67)
  %68 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %68)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %9, ptr %11, align 8
  store ptr %8, ptr %12, align 8
  store ptr %7, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  store ptr %5, ptr %15, align 8
  store ptr %4, ptr %16, align 8
  store i32 %3, ptr %17, align 4
  store i32 %2, ptr %18, align 4
  store i32 %1, ptr %19, align 4
  store i32 %0, ptr %20, align 4
  %23 = load ptr, ptr %16, align 8
  store double 1.500000e+00, ptr %23, align 8
  %24 = load ptr, ptr %15, align 8
  store double 1.200000e+00, ptr %24, align 8
  store i32 0, ptr %21, align 4
  br label %25

25:                                               ; preds = %56, %10
  %26 = load i32, ptr %21, align 4
  %27 = load i32, ptr %20, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  store i32 0, ptr %22, align 4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, ptr %22, align 4
  %32 = load i32, ptr %18, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load i32, ptr %21, align 4
  %36 = load i32, ptr %22, align 4
  %37 = mul i32 %35, %36
  %38 = add i32 %37, 1
  %39 = load i32, ptr %20, align 4
  %40 = srem i32 %38, %39
  %41 = sitofp i32 %40 to double
  %42 = load i32, ptr %20, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %41, %43
  %45 = load ptr, ptr %14, align 8
  %46 = load i32, ptr %21, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [22 x double], ptr %45, i64 %47
  %49 = load i32, ptr %22, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [22 x double], ptr %48, i64 0, i64 %50
  store double %44, ptr %51, align 8
  br label %52

52:                                               ; preds = %34
  %53 = load i32, ptr %22, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %22, align 4
  br label %30, !llvm.loop !7

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %21, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %21, align 4
  br label %25, !llvm.loop !9

59:                                               ; preds = %25
  store i32 0, ptr %21, align 4
  br label %60

60:                                               ; preds = %91, %59
  %61 = load i32, ptr %21, align 4
  %62 = load i32, ptr %18, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  store i32 0, ptr %22, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, ptr %22, align 4
  %67 = load i32, ptr %19, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i32, ptr %21, align 4
  %71 = load i32, ptr %22, align 4
  %72 = add i32 %71, 1
  %73 = mul i32 %70, %72
  %74 = load i32, ptr %19, align 4
  %75 = srem i32 %73, %74
  %76 = sitofp i32 %75 to double
  %77 = load i32, ptr %19, align 4
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %76, %78
  %80 = load ptr, ptr %13, align 8
  %81 = load i32, ptr %21, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [18 x double], ptr %80, i64 %82
  %84 = load i32, ptr %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [18 x double], ptr %83, i64 0, i64 %85
  store double %79, ptr %86, align 8
  br label %87

87:                                               ; preds = %69
  %88 = load i32, ptr %22, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %22, align 4
  br label %65, !llvm.loop !10

90:                                               ; preds = %65
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %21, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %21, align 4
  br label %60, !llvm.loop !11

94:                                               ; preds = %60
  store i32 0, ptr %21, align 4
  br label %95

95:                                               ; preds = %127, %94
  %96 = load i32, ptr %21, align 4
  %97 = load i32, ptr %19, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  store i32 0, ptr %22, align 4
  br label %100

100:                                              ; preds = %123, %99
  %101 = load i32, ptr %22, align 4
  %102 = load i32, ptr %17, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %100
  %105 = load i32, ptr %21, align 4
  %106 = load i32, ptr %22, align 4
  %107 = add i32 %106, 3
  %108 = mul i32 %105, %107
  %109 = add i32 %108, 1
  %110 = load i32, ptr %17, align 4
  %111 = srem i32 %109, %110
  %112 = sitofp i32 %111 to double
  %113 = load i32, ptr %17, align 4
  %114 = sitofp i32 %113 to double
  %115 = fdiv double %112, %114
  %116 = load ptr, ptr %12, align 8
  %117 = load i32, ptr %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [24 x double], ptr %116, i64 %118
  %120 = load i32, ptr %22, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [24 x double], ptr %119, i64 0, i64 %121
  store double %115, ptr %122, align 8
  br label %123

123:                                              ; preds = %104
  %124 = load i32, ptr %22, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %22, align 4
  br label %100, !llvm.loop !12

126:                                              ; preds = %100
  br label %127

127:                                              ; preds = %126
  %128 = load i32, ptr %21, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %21, align 4
  br label %95, !llvm.loop !13

130:                                              ; preds = %95
  store i32 0, ptr %21, align 4
  br label %131

131:                                              ; preds = %162, %130
  %132 = load i32, ptr %21, align 4
  %133 = load i32, ptr %20, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  store i32 0, ptr %22, align 4
  br label %136

136:                                              ; preds = %158, %135
  %137 = load i32, ptr %22, align 4
  %138 = load i32, ptr %17, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %136
  %141 = load i32, ptr %21, align 4
  %142 = load i32, ptr %22, align 4
  %143 = add i32 %142, 2
  %144 = mul i32 %141, %143
  %145 = load i32, ptr %18, align 4
  %146 = srem i32 %144, %145
  %147 = sitofp i32 %146 to double
  %148 = load i32, ptr %18, align 4
  %149 = sitofp i32 %148 to double
  %150 = fdiv double %147, %149
  %151 = load ptr, ptr %11, align 8
  %152 = load i32, ptr %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [24 x double], ptr %151, i64 %153
  %155 = load i32, ptr %22, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [24 x double], ptr %154, i64 0, i64 %156
  store double %150, ptr %157, align 8
  br label %158

158:                                              ; preds = %140
  %159 = load i32, ptr %22, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %22, align 4
  br label %136, !llvm.loop !14

161:                                              ; preds = %136
  br label %162

162:                                              ; preds = %161
  %163 = load i32, ptr %21, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %21, align 4
  br label %131, !llvm.loop !15

165:                                              ; preds = %131
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #0 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store ptr %10, ptr %12, align 8
  store ptr %9, ptr %13, align 8
  store ptr %8, ptr %14, align 8
  store ptr %7, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  store double %5, ptr %17, align 8
  store double %4, ptr %18, align 8
  store i32 %3, ptr %19, align 4
  store i32 %2, ptr %20, align 4
  store i32 %1, ptr %21, align 4
  store i32 %0, ptr %22, align 4
  store i32 0, ptr %23, align 4
  br label %26

26:                                               ; preds = %80, %11
  %27 = load i32, ptr %23, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %83

29:                                               ; preds = %26
  store i32 0, ptr %24, align 4
  br label %30

30:                                               ; preds = %76, %29
  %31 = load i32, ptr %24, align 4
  %32 = icmp slt i32 %31, 18
  br i1 %32, label %33, label %79

33:                                               ; preds = %30
  %34 = load ptr, ptr %16, align 8
  %35 = load i32, ptr %23, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [18 x double], ptr %34, i64 %36
  %38 = load i32, ptr %24, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [18 x double], ptr %37, i64 0, i64 %39
  store double 0.000000e+00, ptr %40, align 8
  store i32 0, ptr %25, align 4
  br label %41

41:                                               ; preds = %72, %33
  %42 = load i32, ptr %25, align 4
  %43 = icmp slt i32 %42, 22
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load double, ptr %18, align 8
  %46 = load ptr, ptr %15, align 8
  %47 = load i32, ptr %23, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [22 x double], ptr %46, i64 %48
  %50 = load i32, ptr %25, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [22 x double], ptr %49, i64 0, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = fmul double %45, %53
  %55 = load ptr, ptr %14, align 8
  %56 = load i32, ptr %25, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [18 x double], ptr %55, i64 %57
  %59 = load i32, ptr %24, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [18 x double], ptr %58, i64 0, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = load ptr, ptr %16, align 8
  %64 = load i32, ptr %23, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [18 x double], ptr %63, i64 %65
  %67 = load i32, ptr %24, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [18 x double], ptr %66, i64 0, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = call double @llvm.fmuladd.f64(double %54, double %62, double %70)
  store double %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %44
  %73 = load i32, ptr %25, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %25, align 4
  br label %41, !llvm.loop !16

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %24, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %24, align 4
  br label %30, !llvm.loop !17

79:                                               ; preds = %30
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %23, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %23, align 4
  br label %26, !llvm.loop !18

83:                                               ; preds = %26
  store i32 0, ptr %23, align 4
  br label %84

84:                                               ; preds = %139, %83
  %85 = load i32, ptr %23, align 4
  %86 = icmp slt i32 %85, 16
  br i1 %86, label %87, label %142

87:                                               ; preds = %84
  store i32 0, ptr %24, align 4
  br label %88

88:                                               ; preds = %135, %87
  %89 = load i32, ptr %24, align 4
  %90 = icmp slt i32 %89, 24
  br i1 %90, label %91, label %138

91:                                               ; preds = %88
  %92 = load double, ptr %17, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = load i32, ptr %23, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [24 x double], ptr %93, i64 %95
  %97 = load i32, ptr %24, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [24 x double], ptr %96, i64 0, i64 %98
  %100 = load double, ptr %99, align 8
  %101 = fmul double %100, %92
  store double %101, ptr %99, align 8
  store i32 0, ptr %25, align 4
  br label %102

102:                                              ; preds = %131, %91
  %103 = load i32, ptr %25, align 4
  %104 = icmp slt i32 %103, 18
  br i1 %104, label %105, label %134

105:                                              ; preds = %102
  %106 = load ptr, ptr %16, align 8
  %107 = load i32, ptr %23, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [18 x double], ptr %106, i64 %108
  %110 = load i32, ptr %25, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [18 x double], ptr %109, i64 0, i64 %111
  %113 = load double, ptr %112, align 8
  %114 = load ptr, ptr %13, align 8
  %115 = load i32, ptr %25, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [24 x double], ptr %114, i64 %116
  %118 = load i32, ptr %24, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [24 x double], ptr %117, i64 0, i64 %119
  %121 = load double, ptr %120, align 8
  %122 = load ptr, ptr %12, align 8
  %123 = load i32, ptr %23, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [24 x double], ptr %122, i64 %124
  %126 = load i32, ptr %24, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [24 x double], ptr %125, i64 0, i64 %127
  %129 = load double, ptr %128, align 8
  %130 = call double @llvm.fmuladd.f64(double %113, double %121, double %129)
  store double %130, ptr %128, align 8
  br label %131

131:                                              ; preds = %105
  %132 = load i32, ptr %25, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %25, align 4
  br label %102, !llvm.loop !19

134:                                              ; preds = %102
  br label %135

135:                                              ; preds = %134
  %136 = load i32, ptr %24, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %24, align 4
  br label %88, !llvm.loop !20

138:                                              ; preds = %88
  br label %139

139:                                              ; preds = %138
  %140 = load i32, ptr %23, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %23, align 4
  br label %84, !llvm.loop !21

142:                                              ; preds = %84
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
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01CKDDGHAB@D?$AA@") #5
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
  %37 = getelementptr inbounds [24 x double], ptr %34, i64 %36
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [24 x double], ptr %37, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call ptr @__acrt_iob_func(i32 noundef 2)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %41) #5
  br label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %8, align 4
  br label %18, !llvm.loop !22

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %13, !llvm.loop !23

51:                                               ; preds = %13
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01CKDDGHAB@D?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\2mm\\2mm.c", directory: "C:\\work\\llvm-profitability-research")
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
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
