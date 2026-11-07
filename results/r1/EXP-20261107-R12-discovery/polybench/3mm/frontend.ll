; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\kernels\3mm\3mm.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\3mm\\3mm.c"
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

$"??_C@_01BBODEMC@G?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01BBODEMC@G?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"G\00", comdat, align 4
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
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 16, ptr %6, align 4
  store i32 18, ptr %7, align 4
  store i32 20, ptr %8, align 4
  store i32 22, ptr %9, align 4
  store i32 24, ptr %10, align 4
  %18 = call ptr @polybench_alloc_data(i64 noundef 288, i32 noundef 8)
  store ptr %18, ptr %11, align 8
  %19 = call ptr @polybench_alloc_data(i64 noundef 320, i32 noundef 8)
  store ptr %19, ptr %12, align 8
  %20 = call ptr @polybench_alloc_data(i64 noundef 360, i32 noundef 8)
  store ptr %20, ptr %13, align 8
  %21 = call ptr @polybench_alloc_data(i64 noundef 396, i32 noundef 8)
  store ptr %21, ptr %14, align 8
  %22 = call ptr @polybench_alloc_data(i64 noundef 432, i32 noundef 8)
  store ptr %22, ptr %15, align 8
  %23 = call ptr @polybench_alloc_data(i64 noundef 528, i32 noundef 8)
  store ptr %23, ptr %16, align 8
  %24 = call ptr @polybench_alloc_data(i64 noundef 352, i32 noundef 8)
  store ptr %24, ptr %17, align 8
  %25 = load ptr, ptr %16, align 8
  %26 = getelementptr inbounds [24 x [22 x double]], ptr %25, i64 0, i64 0
  %27 = load ptr, ptr %15, align 8
  %28 = getelementptr inbounds [18 x [24 x double]], ptr %27, i64 0, i64 0
  %29 = load ptr, ptr %13, align 8
  %30 = getelementptr inbounds [20 x [18 x double]], ptr %29, i64 0, i64 0
  %31 = load ptr, ptr %12, align 8
  %32 = getelementptr inbounds [16 x [20 x double]], ptr %31, i64 0, i64 0
  %33 = load i32, ptr %10, align 4
  %34 = load i32, ptr %9, align 4
  %35 = load i32, ptr %8, align 4
  %36 = load i32, ptr %7, align 4
  %37 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %37, i32 noundef %36, i32 noundef %35, i32 noundef %34, i32 noundef %33, ptr noundef %32, ptr noundef %30, ptr noundef %28, ptr noundef %26)
  %38 = load ptr, ptr %17, align 8
  %39 = getelementptr inbounds [16 x [22 x double]], ptr %38, i64 0, i64 0
  %40 = load ptr, ptr %16, align 8
  %41 = getelementptr inbounds [24 x [22 x double]], ptr %40, i64 0, i64 0
  %42 = load ptr, ptr %15, align 8
  %43 = getelementptr inbounds [18 x [24 x double]], ptr %42, i64 0, i64 0
  %44 = load ptr, ptr %14, align 8
  %45 = getelementptr inbounds [18 x [22 x double]], ptr %44, i64 0, i64 0
  %46 = load ptr, ptr %13, align 8
  %47 = getelementptr inbounds [20 x [18 x double]], ptr %46, i64 0, i64 0
  %48 = load ptr, ptr %12, align 8
  %49 = getelementptr inbounds [16 x [20 x double]], ptr %48, i64 0, i64 0
  %50 = load ptr, ptr %11, align 8
  %51 = getelementptr inbounds [16 x [18 x double]], ptr %50, i64 0, i64 0
  %52 = load i32, ptr %10, align 4
  %53 = load i32, ptr %9, align 4
  %54 = load i32, ptr %8, align 4
  %55 = load i32, ptr %7, align 4
  %56 = load i32, ptr %6, align 4
  call void @kernel_3mm(i32 noundef %56, i32 noundef %55, i32 noundef %54, i32 noundef %53, i32 noundef %52, ptr noundef %51, ptr noundef %49, ptr noundef %47, ptr noundef %45, ptr noundef %43, ptr noundef %41, ptr noundef %39)
  %57 = load i32, ptr %5, align 4
  %58 = icmp sgt i32 %57, 42
  br i1 %58, label %59, label %70

59:                                               ; preds = %2
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds ptr, ptr %60, i64 0
  %62 = load ptr, ptr %61, align 8
  %63 = call i32 @strcmp(ptr noundef %62, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %17, align 8
  %67 = getelementptr inbounds [16 x [22 x double]], ptr %66, i64 0, i64 0
  %68 = load i32, ptr %9, align 4
  %69 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %69, i32 noundef %68, ptr noundef %67)
  br label %70

70:                                               ; preds = %65, %59, %2
  %71 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %71)
  %72 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %72)
  %73 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %73)
  %74 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %74)
  %75 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %75)
  %76 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %76)
  %77 = load ptr, ptr %17, align 8
  call void @free(ptr noundef %77)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %8, ptr %10, align 8
  store ptr %7, ptr %11, align 8
  store ptr %6, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store i32 %4, ptr %14, align 4
  store i32 %3, ptr %15, align 4
  store i32 %2, ptr %16, align 4
  store i32 %1, ptr %17, align 4
  store i32 %0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  br label %21

21:                                               ; preds = %53, %9
  %22 = load i32, ptr %19, align 4
  %23 = load i32, ptr %18, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  store i32 0, ptr %20, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, ptr %20, align 4
  %28 = load i32, ptr %16, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32, ptr %19, align 4
  %32 = load i32, ptr %20, align 4
  %33 = mul i32 %31, %32
  %34 = add i32 %33, 1
  %35 = load i32, ptr %18, align 4
  %36 = srem i32 %34, %35
  %37 = sitofp i32 %36 to double
  %38 = load i32, ptr %18, align 4
  %39 = mul i32 5, %38
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %37, %40
  %42 = load ptr, ptr %13, align 8
  %43 = load i32, ptr %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [20 x double], ptr %42, i64 %44
  %46 = load i32, ptr %20, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [20 x double], ptr %45, i64 0, i64 %47
  store double %41, ptr %48, align 8
  br label %49

49:                                               ; preds = %30
  %50 = load i32, ptr %20, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %20, align 4
  br label %26, !llvm.loop !7

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %19, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %19, align 4
  br label %21, !llvm.loop !9

56:                                               ; preds = %21
  store i32 0, ptr %19, align 4
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, ptr %19, align 4
  %59 = load i32, ptr %16, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  store i32 0, ptr %20, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, ptr %20, align 4
  %64 = load i32, ptr %17, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load i32, ptr %19, align 4
  %68 = load i32, ptr %20, align 4
  %69 = add i32 %68, 1
  %70 = mul i32 %67, %69
  %71 = add i32 %70, 2
  %72 = load i32, ptr %17, align 4
  %73 = srem i32 %71, %72
  %74 = sitofp i32 %73 to double
  %75 = load i32, ptr %17, align 4
  %76 = mul i32 5, %75
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %74, %77
  %79 = load ptr, ptr %12, align 8
  %80 = load i32, ptr %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [18 x double], ptr %79, i64 %81
  %83 = load i32, ptr %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [18 x double], ptr %82, i64 0, i64 %84
  store double %78, ptr %85, align 8
  br label %86

86:                                               ; preds = %66
  %87 = load i32, ptr %20, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %20, align 4
  br label %62, !llvm.loop !10

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %19, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %19, align 4
  br label %57, !llvm.loop !11

93:                                               ; preds = %57
  store i32 0, ptr %19, align 4
  br label %94

94:                                               ; preds = %126, %93
  %95 = load i32, ptr %19, align 4
  %96 = load i32, ptr %17, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  store i32 0, ptr %20, align 4
  br label %99

99:                                               ; preds = %122, %98
  %100 = load i32, ptr %20, align 4
  %101 = load i32, ptr %14, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load i32, ptr %19, align 4
  %105 = load i32, ptr %20, align 4
  %106 = add i32 %105, 3
  %107 = mul i32 %104, %106
  %108 = load i32, ptr %15, align 4
  %109 = srem i32 %107, %108
  %110 = sitofp i32 %109 to double
  %111 = load i32, ptr %15, align 4
  %112 = mul i32 5, %111
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %110, %113
  %115 = load ptr, ptr %11, align 8
  %116 = load i32, ptr %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [24 x double], ptr %115, i64 %117
  %119 = load i32, ptr %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [24 x double], ptr %118, i64 0, i64 %120
  store double %114, ptr %121, align 8
  br label %122

122:                                              ; preds = %103
  %123 = load i32, ptr %20, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %20, align 4
  br label %99, !llvm.loop !12

125:                                              ; preds = %99
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %19, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %19, align 4
  br label %94, !llvm.loop !13

129:                                              ; preds = %94
  store i32 0, ptr %19, align 4
  br label %130

130:                                              ; preds = %163, %129
  %131 = load i32, ptr %19, align 4
  %132 = load i32, ptr %14, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %130
  store i32 0, ptr %20, align 4
  br label %135

135:                                              ; preds = %159, %134
  %136 = load i32, ptr %20, align 4
  %137 = load i32, ptr %15, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %135
  %140 = load i32, ptr %19, align 4
  %141 = load i32, ptr %20, align 4
  %142 = add i32 %141, 2
  %143 = mul i32 %140, %142
  %144 = add i32 %143, 2
  %145 = load i32, ptr %16, align 4
  %146 = srem i32 %144, %145
  %147 = sitofp i32 %146 to double
  %148 = load i32, ptr %16, align 4
  %149 = mul i32 5, %148
  %150 = sitofp i32 %149 to double
  %151 = fdiv double %147, %150
  %152 = load ptr, ptr %10, align 8
  %153 = load i32, ptr %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [22 x double], ptr %152, i64 %154
  %156 = load i32, ptr %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [22 x double], ptr %155, i64 0, i64 %157
  store double %151, ptr %158, align 8
  br label %159

159:                                              ; preds = %139
  %160 = load i32, ptr %20, align 4
  %161 = add i32 %160, 1
  store i32 %161, ptr %20, align 4
  br label %135, !llvm.loop !14

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162
  %164 = load i32, ptr %19, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %19, align 4
  br label %130, !llvm.loop !15

166:                                              ; preds = %130
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store ptr %11, ptr %13, align 8
  store ptr %10, ptr %14, align 8
  store ptr %9, ptr %15, align 8
  store ptr %8, ptr %16, align 8
  store ptr %7, ptr %17, align 8
  store ptr %6, ptr %18, align 8
  store ptr %5, ptr %19, align 8
  store i32 %4, ptr %20, align 4
  store i32 %3, ptr %21, align 4
  store i32 %2, ptr %22, align 4
  store i32 %1, ptr %23, align 4
  store i32 %0, ptr %24, align 4
  store i32 0, ptr %25, align 4
  br label %28

28:                                               ; preds = %80, %12
  %29 = load i32, ptr %25, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %83

31:                                               ; preds = %28
  store i32 0, ptr %26, align 4
  br label %32

32:                                               ; preds = %76, %31
  %33 = load i32, ptr %26, align 4
  %34 = icmp slt i32 %33, 18
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = load ptr, ptr %19, align 8
  %37 = load i32, ptr %25, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [18 x double], ptr %36, i64 %38
  %40 = load i32, ptr %26, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [18 x double], ptr %39, i64 0, i64 %41
  store double 0.000000e+00, ptr %42, align 8
  store i32 0, ptr %27, align 4
  br label %43

43:                                               ; preds = %72, %35
  %44 = load i32, ptr %27, align 4
  %45 = icmp slt i32 %44, 20
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = load ptr, ptr %18, align 8
  %48 = load i32, ptr %25, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x double], ptr %47, i64 %49
  %51 = load i32, ptr %27, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [20 x double], ptr %50, i64 0, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = load ptr, ptr %17, align 8
  %56 = load i32, ptr %27, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [18 x double], ptr %55, i64 %57
  %59 = load i32, ptr %26, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [18 x double], ptr %58, i64 0, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = load ptr, ptr %19, align 8
  %64 = load i32, ptr %25, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [18 x double], ptr %63, i64 %65
  %67 = load i32, ptr %26, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [18 x double], ptr %66, i64 0, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = call double @llvm.fmuladd.f64(double %54, double %62, double %70)
  store double %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %46
  %73 = load i32, ptr %27, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %27, align 4
  br label %43, !llvm.loop !16

75:                                               ; preds = %43
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %26, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %26, align 4
  br label %32, !llvm.loop !17

79:                                               ; preds = %32
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %25, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %25, align 4
  br label %28, !llvm.loop !18

83:                                               ; preds = %28
  store i32 0, ptr %25, align 4
  br label %84

84:                                               ; preds = %136, %83
  %85 = load i32, ptr %25, align 4
  %86 = icmp slt i32 %85, 18
  br i1 %86, label %87, label %139

87:                                               ; preds = %84
  store i32 0, ptr %26, align 4
  br label %88

88:                                               ; preds = %132, %87
  %89 = load i32, ptr %26, align 4
  %90 = icmp slt i32 %89, 22
  br i1 %90, label %91, label %135

91:                                               ; preds = %88
  %92 = load ptr, ptr %16, align 8
  %93 = load i32, ptr %25, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [22 x double], ptr %92, i64 %94
  %96 = load i32, ptr %26, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [22 x double], ptr %95, i64 0, i64 %97
  store double 0.000000e+00, ptr %98, align 8
  store i32 0, ptr %27, align 4
  br label %99

99:                                               ; preds = %128, %91
  %100 = load i32, ptr %27, align 4
  %101 = icmp slt i32 %100, 24
  br i1 %101, label %102, label %131

102:                                              ; preds = %99
  %103 = load ptr, ptr %15, align 8
  %104 = load i32, ptr %25, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [24 x double], ptr %103, i64 %105
  %107 = load i32, ptr %27, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [24 x double], ptr %106, i64 0, i64 %108
  %110 = load double, ptr %109, align 8
  %111 = load ptr, ptr %14, align 8
  %112 = load i32, ptr %27, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [22 x double], ptr %111, i64 %113
  %115 = load i32, ptr %26, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [22 x double], ptr %114, i64 0, i64 %116
  %118 = load double, ptr %117, align 8
  %119 = load ptr, ptr %16, align 8
  %120 = load i32, ptr %25, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [22 x double], ptr %119, i64 %121
  %123 = load i32, ptr %26, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [22 x double], ptr %122, i64 0, i64 %124
  %126 = load double, ptr %125, align 8
  %127 = call double @llvm.fmuladd.f64(double %110, double %118, double %126)
  store double %127, ptr %125, align 8
  br label %128

128:                                              ; preds = %102
  %129 = load i32, ptr %27, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %27, align 4
  br label %99, !llvm.loop !19

131:                                              ; preds = %99
  br label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %26, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %26, align 4
  br label %88, !llvm.loop !20

135:                                              ; preds = %88
  br label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %25, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %25, align 4
  br label %84, !llvm.loop !21

139:                                              ; preds = %84
  store i32 0, ptr %25, align 4
  br label %140

140:                                              ; preds = %192, %139
  %141 = load i32, ptr %25, align 4
  %142 = icmp slt i32 %141, 16
  br i1 %142, label %143, label %195

143:                                              ; preds = %140
  store i32 0, ptr %26, align 4
  br label %144

144:                                              ; preds = %188, %143
  %145 = load i32, ptr %26, align 4
  %146 = icmp slt i32 %145, 22
  br i1 %146, label %147, label %191

147:                                              ; preds = %144
  %148 = load ptr, ptr %13, align 8
  %149 = load i32, ptr %25, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [22 x double], ptr %148, i64 %150
  %152 = load i32, ptr %26, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [22 x double], ptr %151, i64 0, i64 %153
  store double 0.000000e+00, ptr %154, align 8
  store i32 0, ptr %27, align 4
  br label %155

155:                                              ; preds = %184, %147
  %156 = load i32, ptr %27, align 4
  %157 = icmp slt i32 %156, 18
  br i1 %157, label %158, label %187

158:                                              ; preds = %155
  %159 = load ptr, ptr %19, align 8
  %160 = load i32, ptr %25, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [18 x double], ptr %159, i64 %161
  %163 = load i32, ptr %27, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [18 x double], ptr %162, i64 0, i64 %164
  %166 = load double, ptr %165, align 8
  %167 = load ptr, ptr %16, align 8
  %168 = load i32, ptr %27, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [22 x double], ptr %167, i64 %169
  %171 = load i32, ptr %26, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [22 x double], ptr %170, i64 0, i64 %172
  %174 = load double, ptr %173, align 8
  %175 = load ptr, ptr %13, align 8
  %176 = load i32, ptr %25, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [22 x double], ptr %175, i64 %177
  %179 = load i32, ptr %26, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [22 x double], ptr %178, i64 0, i64 %180
  %182 = load double, ptr %181, align 8
  %183 = call double @llvm.fmuladd.f64(double %166, double %174, double %182)
  store double %183, ptr %181, align 8
  br label %184

184:                                              ; preds = %158
  %185 = load i32, ptr %27, align 4
  %186 = add i32 %185, 1
  store i32 %186, ptr %27, align 4
  br label %155, !llvm.loop !22

187:                                              ; preds = %155
  br label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %26, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %26, align 4
  br label %144, !llvm.loop !23

191:                                              ; preds = %144
  br label %192

192:                                              ; preds = %191
  %193 = load i32, ptr %25, align 4
  %194 = add i32 %193, 1
  store i32 %194, ptr %25, align 4
  br label %140, !llvm.loop !24

195:                                              ; preds = %140
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
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01BBODEMC@G?$AA@") #5
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
  %37 = getelementptr inbounds [22 x double], ptr %34, i64 %36
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [22 x double], ptr %37, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call ptr @__acrt_iob_func(i32 noundef 2)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %41) #5
  br label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %8, align 4
  br label %18, !llvm.loop !25

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %13, !llvm.loop !26

51:                                               ; preds = %13
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01BBODEMC@G?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\3mm\\3mm.c", directory: "C:\\work\\llvm-profitability-research")
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
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
