; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\nussinov\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\medley\\nussinov\\nussinov.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_05LCLENNFI@table?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_03JDANDILB@?$CFd?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_05LCLENNFI@table?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"table\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_03JDANDILB@?$CFd?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%d \00", comdat, align 4
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 60, i32 noundef 1) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 3600, i32 noundef 4) #9
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  tail call fastcc void @kernel_nussinov(ptr noundef %3, ptr noundef %4)
  %5 = icmp sgt i32 %0, 42
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %7, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %6
  tail call fastcc void @print_array(ptr noundef %4)
  br label %9

9:                                                ; preds = %8, %6, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) initializes((0, 60)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 14400)) %1) unnamed_addr #2 {
.preheader.preheader:
  store <16 x i8> <i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0>, ptr %0, align 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> <i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0>, ptr %2, align 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <16 x i8> <i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0>, ptr %3, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i8> <i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3, i8 0>, ptr %4, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i8> <i8 1, i8 2, i8 3, i8 0>, ptr %5, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14400) %1, i8 0, i64 14400, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_nussinov(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 {
  br label %3

3:                                                ; preds = %2, %._crit_edge135
  %indvars.iv144 = phi i64 [ 59, %2 ], [ %indvars.iv.next145, %._crit_edge135 ]
  %indvars.iv = phi i64 [ 60, %2 ], [ %indvars.iv.next, %._crit_edge135 ]
  %4 = add nuw nsw i64 %indvars.iv144, 1
  %5 = icmp samesign ult i64 %indvars.iv144, 59
  br i1 %5, label %.lr.ph134, label %._crit_edge135

.lr.ph134:                                        ; preds = %3
  %6 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv144
  %7 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv144
  %9 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %indvars.iv.next138.prol = add nuw nsw i64 %indvars.iv, 1
  br label %10

10:                                               ; preds = %.lr.ph134, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph134 ], [ %indvar.next, %._crit_edge ]
  %indvars.iv140 = phi i64 [ %indvars.iv, %.lr.ph134 ], [ %indvars.iv.next141, %._crit_edge ]
  %11 = add nsw i64 %indvars.iv140, -1
  %12 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv140
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %11
  %15 = load i32, ptr %14, align 4
  %. = tail call i32 @llvm.smax.i32(i32 %13, i32 %15)
  %16 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv140
  %17 = load i32, ptr %16, align 4
  %.122 = tail call i32 @llvm.smax.i32(i32 %., i32 %17)
  store i32 %.122, ptr %12, align 4
  %18 = icmp samesign ult i64 %indvars.iv144, %11
  %19 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %11
  %20 = load i32, ptr %19, align 4
  br i1 %18, label %21, label %.thread

21:                                               ; preds = %10
  %22 = load i8, ptr %8, align 1
  %23 = sext i8 %22 to i32
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv140
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %26, %23
  %28 = icmp eq i32 %27, 3
  %29 = zext i1 %28 to i32
  %30 = add i32 %20, %29
  br label %.thread

.thread:                                          ; preds = %10, %21
  %.sink = phi i32 [ %30, %21 ], [ %20, %10 ]
  %.125 = tail call i32 @llvm.smax.i32(i32 %.122, i32 %.sink)
  store i32 %.125, ptr %12, align 4
  %31 = icmp samesign ult i64 %4, %indvars.iv140
  br i1 %31, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv140
  %xtraiter = and i64 %indvar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %32 = load i32, ptr %9, align 4
  %gep.prol = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep, i64 %indvars.iv.next138.prol
  %33 = load i32, ptr %gep.prol, align 4
  %34 = add i32 %33, %32
  %.127.prol = tail call i32 @llvm.smax.i32(i32 %.125, i32 %34)
  store i32 %.127.prol, ptr %12, align 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv137.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next138.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %.125, %.lr.ph ], [ %.127.prol, %.prol.loopexit.unr-lcssa ]
  %35 = icmp eq i64 %indvar, 1
  br i1 %35, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.1, %.lr.ph.new ], [ %indvars.iv137.unr, %.prol.loopexit ]
  %36 = phi i32 [ %.127.1, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %37 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv137
  %38 = load i32, ptr %37, align 4
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %gep = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep, i64 %indvars.iv.next138
  %39 = load i32, ptr %gep, align 4
  %40 = add i32 %39, %38
  %.127 = tail call i32 @llvm.smax.i32(i32 %36, i32 %40)
  store i32 %.127, ptr %12, align 4
  %41 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next138
  %42 = load i32, ptr %41, align 4
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2
  %gep.1 = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep, i64 %indvars.iv.next138.1
  %43 = load i32, ptr %gep.1, align 4
  %44 = add i32 %43, %42
  %.127.1 = tail call i32 @llvm.smax.i32(i32 %.127, i32 %44)
  store i32 %.127.1, ptr %12, align 4
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next138.1, %indvars.iv140
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !7

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.thread
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, 60
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond143.not, label %._crit_edge135, label %10, !llvm.loop !9

._crit_edge135:                                   ; preds = %._crit_edge, %3
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, -1
  %.not = icmp eq i64 %indvars.iv144, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not, label %45, label %3, !llvm.loop !10

45:                                               ; preds = %._crit_edge135
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_05LCLENNFI@table?$AA@") #9
  br label %.preheader

.preheader:                                       ; preds = %1, %17
  %indvars.iv22 = phi i32 [ 60, %1 ], [ %indvars.iv.next23, %17 ]
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %17 ]
  %.019 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %5 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv
  br label %6

6:                                                ; preds = %.preheader, %11
  %indvars.iv20 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next21, %11 ]
  %.117 = phi i32 [ %.019, %.preheader ], [ %16, %11 ]
  %7 = srem i32 %.117, 20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %10)
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv20
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %13) #9
  %16 = add i32 %.117, 1
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next21, 60
  br i1 %exitcond.not, label %17, label %6, !llvm.loop !11

17:                                               ; preds = %11
  %18 = add i32 %.019, %indvars.iv22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next23 = add nsw i32 %indvars.iv22, -1
  %exitcond26.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond26.not, label %19, label %.preheader, !llvm.loop !12

19:                                               ; preds = %17
  %20 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_05LCLENNFI@table?$AA@") #9
  %22 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite14 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %22)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
