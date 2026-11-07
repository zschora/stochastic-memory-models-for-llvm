; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\medley\nussinov\nussinov.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\medley\\nussinov\\nussinov.c"
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

$"??_C@_05LCLENNFI@table?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_03JDANDILB@?$CFd?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_05LCLENNFI@table?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"table\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_03JDANDILB@?$CFd?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%d \00", comdat, align 4
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
  store i32 60, ptr %6, align 4
  %9 = call ptr @polybench_alloc_data(i64 noundef 60, i32 noundef 1)
  store ptr %9, ptr %7, align 8
  %10 = call ptr @polybench_alloc_data(i64 noundef 3600, i32 noundef 4)
  store ptr %10, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr inbounds [60 x [60 x i32]], ptr %11, i64 0, i64 0
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds [60 x i8], ptr %13, i64 0, i64 0
  %15 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %15, ptr noundef %14, ptr noundef %12)
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds [60 x [60 x i32]], ptr %16, i64 0, i64 0
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds [60 x i8], ptr %18, i64 0, i64 0
  %20 = load i32, ptr %6, align 4
  call void @kernel_nussinov(i32 noundef %20, ptr noundef %19, ptr noundef %17)
  %21 = load i32, ptr %5, align 4
  %22 = icmp sgt i32 %21, 42
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 0
  %26 = load ptr, ptr %25, align 8
  %27 = call i32 @strcmp(ptr noundef %26, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds [60 x [60 x i32]], ptr %30, i64 0, i64 0
  %32 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %32, ptr noundef %31)
  br label %33

33:                                               ; preds = %29, %23, %2
  %34 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %34)
  %35 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %35)
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
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %22, %3
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 1
  %16 = srem i32 %15, 4
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  store i8 %17, ptr %21, align 1
  br label %22

22:                                               ; preds = %13
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %7, align 4
  br label %9, !llvm.loop !7

25:                                               ; preds = %9
  store i32 0, ptr %7, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  store i32 0, ptr %8, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [60 x i32], ptr %36, i64 %38
  %40 = load i32, ptr %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [60 x i32], ptr %39, i64 0, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, ptr %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %8, align 4
  br label %31, !llvm.loop !9

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %7, align 4
  br label %26, !llvm.loop !10

50:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_nussinov(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %0, ptr %6, align 4
  store i32 59, ptr %7, align 4
  br label %10

10:                                               ; preds = %347, %3
  %11 = load i32, ptr %7, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %350

13:                                               ; preds = %10
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %8, align 4
  br label %16

16:                                               ; preds = %343, %13
  %17 = load i32, ptr %8, align 4
  %18 = icmp slt i32 %17, 60
  br i1 %18, label %19, label %346

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4
  %21 = sub i32 %20, 1
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [60 x i32], ptr %24, i64 %26
  %28 = load i32, ptr %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [60 x i32], ptr %27, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [60 x i32], ptr %32, i64 %34
  %36 = load i32, ptr %8, align 4
  %37 = sub i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [60 x i32], ptr %35, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp sge i32 %31, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %23
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [60 x i32], ptr %43, i64 %45
  %47 = load i32, ptr %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [60 x i32], ptr %46, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  br label %61

51:                                               ; preds = %23
  %52 = load ptr, ptr %4, align 8
  %53 = load i32, ptr %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [60 x i32], ptr %52, i64 %54
  %56 = load i32, ptr %8, align 4
  %57 = sub i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [60 x i32], ptr %55, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %51, %42
  %62 = phi i32 [ %50, %42 ], [ %60, %51 ]
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [60 x i32], ptr %63, i64 %65
  %67 = load i32, ptr %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [60 x i32], ptr %66, i64 0, i64 %68
  store i32 %62, ptr %69, align 4
  br label %70

70:                                               ; preds = %61, %19
  %71 = load i32, ptr %7, align 4
  %72 = add i32 %71, 1
  %73 = icmp slt i32 %72, 60
  br i1 %73, label %74, label %121

74:                                               ; preds = %70
  %75 = load ptr, ptr %4, align 8
  %76 = load i32, ptr %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [60 x i32], ptr %75, i64 %77
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [60 x i32], ptr %78, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = load i32, ptr %7, align 4
  %85 = add i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [60 x i32], ptr %83, i64 %86
  %88 = load i32, ptr %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [60 x i32], ptr %87, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4
  %92 = icmp sge i32 %82, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %74
  %94 = load ptr, ptr %4, align 8
  %95 = load i32, ptr %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [60 x i32], ptr %94, i64 %96
  %98 = load i32, ptr %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [60 x i32], ptr %97, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4
  br label %112

102:                                              ; preds = %74
  %103 = load ptr, ptr %4, align 8
  %104 = load i32, ptr %7, align 4
  %105 = add i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [60 x i32], ptr %103, i64 %106
  %108 = load i32, ptr %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [60 x i32], ptr %107, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %102, %93
  %113 = phi i32 [ %101, %93 ], [ %111, %102 ]
  %114 = load ptr, ptr %4, align 8
  %115 = load i32, ptr %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [60 x i32], ptr %114, i64 %116
  %118 = load i32, ptr %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [60 x i32], ptr %117, i64 0, i64 %119
  store i32 %113, ptr %120, align 4
  br label %121

121:                                              ; preds = %112, %70
  %122 = load i32, ptr %8, align 4
  %123 = sub i32 %122, 1
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %267

125:                                              ; preds = %121
  %126 = load i32, ptr %7, align 4
  %127 = add i32 %126, 1
  %128 = icmp slt i32 %127, 60
  br i1 %128, label %129, label %267

129:                                              ; preds = %125
  %130 = load i32, ptr %7, align 4
  %131 = load i32, ptr %8, align 4
  %132 = sub i32 %131, 1
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %217

134:                                              ; preds = %129
  %135 = load ptr, ptr %4, align 8
  %136 = load i32, ptr %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [60 x i32], ptr %135, i64 %137
  %139 = load i32, ptr %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [60 x i32], ptr %138, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %4, align 8
  %144 = load i32, ptr %7, align 4
  %145 = add i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [60 x i32], ptr %143, i64 %146
  %148 = load i32, ptr %8, align 4
  %149 = sub i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [60 x i32], ptr %147, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4
  %153 = load ptr, ptr %5, align 8
  %154 = load i32, ptr %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %153, i64 %155
  %157 = load i8, ptr %156, align 1
  %158 = sext i8 %157 to i32
  %159 = load ptr, ptr %5, align 8
  %160 = load i32, ptr %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %159, i64 %161
  %163 = load i8, ptr %162, align 1
  %164 = sext i8 %163 to i32
  %165 = add i32 %158, %164
  %166 = icmp eq i32 %165, 3
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = add i32 %152, %168
  %170 = icmp sge i32 %142, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %134
  %172 = load ptr, ptr %4, align 8
  %173 = load i32, ptr %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [60 x i32], ptr %172, i64 %174
  %176 = load i32, ptr %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [60 x i32], ptr %175, i64 0, i64 %177
  %179 = load i32, ptr %178, align 4
  br label %208

180:                                              ; preds = %134
  %181 = load ptr, ptr %4, align 8
  %182 = load i32, ptr %7, align 4
  %183 = add i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [60 x i32], ptr %181, i64 %184
  %186 = load i32, ptr %8, align 4
  %187 = sub i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [60 x i32], ptr %185, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4
  %191 = load ptr, ptr %5, align 8
  %192 = load i32, ptr %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %191, i64 %193
  %195 = load i8, ptr %194, align 1
  %196 = sext i8 %195 to i32
  %197 = load ptr, ptr %5, align 8
  %198 = load i32, ptr %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, ptr %197, i64 %199
  %201 = load i8, ptr %200, align 1
  %202 = sext i8 %201 to i32
  %203 = add i32 %196, %202
  %204 = icmp eq i32 %203, 3
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1, i32 0
  %207 = add i32 %190, %206
  br label %208

208:                                              ; preds = %180, %171
  %209 = phi i32 [ %179, %171 ], [ %207, %180 ]
  %210 = load ptr, ptr %4, align 8
  %211 = load i32, ptr %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [60 x i32], ptr %210, i64 %212
  %214 = load i32, ptr %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [60 x i32], ptr %213, i64 0, i64 %215
  store i32 %209, ptr %216, align 4
  br label %266

217:                                              ; preds = %129
  %218 = load ptr, ptr %4, align 8
  %219 = load i32, ptr %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [60 x i32], ptr %218, i64 %220
  %222 = load i32, ptr %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [60 x i32], ptr %221, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4
  %226 = load ptr, ptr %4, align 8
  %227 = load i32, ptr %7, align 4
  %228 = add i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [60 x i32], ptr %226, i64 %229
  %231 = load i32, ptr %8, align 4
  %232 = sub i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [60 x i32], ptr %230, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4
  %236 = icmp sge i32 %225, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %217
  %238 = load ptr, ptr %4, align 8
  %239 = load i32, ptr %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [60 x i32], ptr %238, i64 %240
  %242 = load i32, ptr %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [60 x i32], ptr %241, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4
  br label %257

246:                                              ; preds = %217
  %247 = load ptr, ptr %4, align 8
  %248 = load i32, ptr %7, align 4
  %249 = add i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [60 x i32], ptr %247, i64 %250
  %252 = load i32, ptr %8, align 4
  %253 = sub i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [60 x i32], ptr %251, i64 0, i64 %254
  %256 = load i32, ptr %255, align 4
  br label %257

257:                                              ; preds = %246, %237
  %258 = phi i32 [ %245, %237 ], [ %256, %246 ]
  %259 = load ptr, ptr %4, align 8
  %260 = load i32, ptr %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [60 x i32], ptr %259, i64 %261
  %263 = load i32, ptr %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [60 x i32], ptr %262, i64 0, i64 %264
  store i32 %258, ptr %265, align 4
  br label %266

266:                                              ; preds = %257, %208
  br label %267

267:                                              ; preds = %266, %125, %121
  %268 = load i32, ptr %7, align 4
  %269 = add i32 %268, 1
  store i32 %269, ptr %9, align 4
  br label %270

270:                                              ; preds = %339, %267
  %271 = load i32, ptr %9, align 4
  %272 = load i32, ptr %8, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %342

274:                                              ; preds = %270
  %275 = load ptr, ptr %4, align 8
  %276 = load i32, ptr %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [60 x i32], ptr %275, i64 %277
  %279 = load i32, ptr %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [60 x i32], ptr %278, i64 0, i64 %280
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %4, align 8
  %284 = load i32, ptr %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [60 x i32], ptr %283, i64 %285
  %287 = load i32, ptr %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [60 x i32], ptr %286, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4
  %291 = load ptr, ptr %4, align 8
  %292 = load i32, ptr %9, align 4
  %293 = add i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [60 x i32], ptr %291, i64 %294
  %296 = load i32, ptr %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [60 x i32], ptr %295, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4
  %300 = add i32 %290, %299
  %301 = icmp sge i32 %282, %300
  br i1 %301, label %302, label %311

302:                                              ; preds = %274
  %303 = load ptr, ptr %4, align 8
  %304 = load i32, ptr %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [60 x i32], ptr %303, i64 %305
  %307 = load i32, ptr %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [60 x i32], ptr %306, i64 0, i64 %308
  %310 = load i32, ptr %309, align 4
  br label %330

311:                                              ; preds = %274
  %312 = load ptr, ptr %4, align 8
  %313 = load i32, ptr %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [60 x i32], ptr %312, i64 %314
  %316 = load i32, ptr %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [60 x i32], ptr %315, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4
  %320 = load ptr, ptr %4, align 8
  %321 = load i32, ptr %9, align 4
  %322 = add i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [60 x i32], ptr %320, i64 %323
  %325 = load i32, ptr %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [60 x i32], ptr %324, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4
  %329 = add i32 %319, %328
  br label %330

330:                                              ; preds = %311, %302
  %331 = phi i32 [ %310, %302 ], [ %329, %311 ]
  %332 = load ptr, ptr %4, align 8
  %333 = load i32, ptr %7, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [60 x i32], ptr %332, i64 %334
  %336 = load i32, ptr %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [60 x i32], ptr %335, i64 0, i64 %337
  store i32 %331, ptr %338, align 4
  br label %339

339:                                              ; preds = %330
  %340 = load i32, ptr %9, align 4
  %341 = add i32 %340, 1
  store i32 %341, ptr %9, align 4
  br label %270, !llvm.loop !11

342:                                              ; preds = %270
  br label %343

343:                                              ; preds = %342
  %344 = load i32, ptr %8, align 4
  %345 = add i32 %344, 1
  store i32 %345, ptr %8, align 4
  br label %16, !llvm.loop !12

346:                                              ; preds = %16
  br label %347

347:                                              ; preds = %346
  %348 = load i32, ptr %7, align 4
  %349 = add i32 %348, -1
  store i32 %349, ptr %7, align 4
  br label %10, !llvm.loop !13

350:                                              ; preds = %10
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
  store i32 0, ptr %7, align 4
  %8 = call ptr @__acrt_iob_func(i32 noundef 2)
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #4
  %10 = call ptr @__acrt_iob_func(i32 noundef 2)
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_05LCLENNFI@table?$AA@") #4
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %46, %2
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load i32, ptr %5, align 4
  store i32 %17, ptr %6, align 4
  br label %18

18:                                               ; preds = %42, %16
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  %24 = srem i32 %23, 20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call ptr @__acrt_iob_func(i32 noundef 2)
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load ptr, ptr %3, align 8
  %31 = load i32, ptr %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [60 x i32], ptr %30, i64 %32
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [60 x i32], ptr %33, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = call ptr @__acrt_iob_func(i32 noundef 2)
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %37) #4
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %7, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %18, !llvm.loop !14

45:                                               ; preds = %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %12, !llvm.loop !15

49:                                               ; preds = %12
  %50 = call ptr @__acrt_iob_func(i32 noundef 2)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_05LCLENNFI@table?$AA@") #4
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #4
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
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\medley\\nussinov\\nussinov.c", directory: "C:\\work\\llvm-profitability-research")
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
