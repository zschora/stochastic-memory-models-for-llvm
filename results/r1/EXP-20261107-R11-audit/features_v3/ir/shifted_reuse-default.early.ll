; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R1A\shifted_reuse\shifted_reuse.frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\benchmarks\\shifted_reuse.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

%rtti.TypeDescriptor30 = type { ptr, ptr, [31 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor19 = type { ptr, ptr, [20 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.CompleteObjectLocator = type { i32, i32, i32, i32, i32, i32 }
%rtti.ClassHierarchyDescriptor = type { i32, i32, i32, i32 }
%rtti.BaseClassDescriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%"struct.bench::Args" = type { %"class.std::basic_string", i64, i32, i32 }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { ptr, [8 x i8] }
%class.anon = type { ptr, ptr, ptr, ptr, ptr }
%union._LARGE_INTEGER = type { i64 }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%class.anon.0 = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }

$"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z" = comdat any

$"?aligned_alloc64@bench@@YAPEAX_K@Z" = comdat any

$"?init_f64@bench@@YAXPEAN_K1@Z" = comdat any

$"?close_enough@bench@@YA_NNN@Z" = comdat any

$printf = comdat any

$"?hash_bytes@bench@@YA_KPEBX_K@Z" = comdat any

$"?pin_environment@bench@@YAXXZ" = comdat any

$"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" = comdat any

$"?aligned_free@bench@@YAXPEAX@Z" = comdat any

$"??1Args@bench@@QEAA@XZ" = comdat any

$"??0Args@bench@@QEAA@XZ" = comdat any

$"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z" = comdat any

$"??$_Convert_size@_K_K@std@@YA_K_K@Z" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z" = comdat any

$"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z" = comdat any

$"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$max@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$min@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$_Max_limit@_J@std@@YA_JXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"??$_Get_size_of_n@$00@std@@YA_K_K@Z" = comdat any

$"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" = comdat any

$"?_Throw_bad_array_new_length@std@@YAXXZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@XZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" = comdat any

$"??0bad_alloc@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z" = comdat any

$"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$"?lcg@bench@@YA_KAEA_K@Z" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?qpc_ns_per_tick@bench@@YANXZ" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_02GIPFHKNO@OK?$AA@" = comdat any

$"??_C@_04OOEBCMBF@FAIL?$AA@" = comdat any

$"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = comdat any

$"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = comdat any

$"??_C@_0O@IMKOIIND@shifted_reuse?$AA@" = comdat any

$"??_C@_07CIFAGBMG@unknown?$AA@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA3?AVbad_array_new_length@std@@" = comdat any

$"_TI3?AVbad_array_new_length@std@@" = comdat any

$"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = comdat any

$"??_7bad_array_new_length@std@@6B@" = comdat largest

$"??_R4bad_array_new_length@std@@6B@" = comdat any

$"??_R3bad_array_new_length@std@@8" = comdat any

$"??_R2bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_alloc@std@@8" = comdat any

$"??_R3bad_alloc@std@@8" = comdat any

$"??_R2bad_alloc@std@@8" = comdat any

$"??_R1A@?0A@EA@exception@std@@8" = comdat any

$"??_R3exception@std@@8" = comdat any

$"??_R2exception@std@@8" = comdat any

$"??_7bad_alloc@std@@6B@" = comdat largest

$"??_R4bad_alloc@std@@6B@" = comdat any

$"??_7exception@std@@6B@" = comdat largest

$"??_R4exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

$"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@" = comdat any

$"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

$"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = comdat any

$"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = comdat any

$"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = comdat any

$"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@g_fn = internal global ptr @shift_kernel, align 8
@"??_C@_02GIPFHKNO@OK?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"OK\00", comdat, align 4
@"??_C@_04OOEBCMBF@FAIL?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"FAIL\00", comdat, align 4
@"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"VERIFY %s\0A\00", comdat, align 8
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_0O@IMKOIIND@shifted_reuse?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"shifted_reuse\00", comdat, align 8
@"??_C@_07CIFAGBMG@unknown?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"unknown\00", comdat, align 8
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 8
@"??_7type_info@@6B@" = external constant ptr
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { ptr @"??_7type_info@@6B@", ptr null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 8
@0 = private constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_array_new_length@std@@6B@", ptr @"??_Ebad_array_new_length@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_array_new_length@std@@6B@")
@"??_R4bad_array_new_length@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_array_new_length@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_array_new_length@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_array_new_length@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_array_new_length@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@bad_alloc@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_alloc@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_alloc@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@exception@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3exception@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2exception@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@1 = private constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_alloc@std@@6B@", ptr @"??_Ebad_alloc@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_alloc@std@@6B@")
@"??_R4bad_alloc@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_alloc@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@2 = private constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4exception@std@@6B@", ptr @"??_Eexception@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7exception@std@@6B@")
@"??_R4exception@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4exception@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 8
@"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c"allocation failed (%zu bytes)\0A\00", comdat, align 8
@"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr dso_local global i64 0, comdat, align 8
@"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"warning: SetProcessAffinityMask failed (%lu)\0A\00", comdat, align 8
@"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = linkonce_odr dso_local unnamed_addr constant [40 x i8] c"warning: SetPriorityClass failed (%lu)\0A\00", comdat, align 8
@"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"TRIAL %d %.3f\0A\00", comdat, align 8
@"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@" = linkonce_odr dso_local unnamed_addr constant [48 x i8] c"META case=%s config=%s n=%zu reps=%d trials=%d\0A\00", comdat, align 8

@"??_7bad_array_new_length@std@@6B@" = alias ptr, getelementptr inbounds (i8, ptr @0, i64 8)
@"??_7bad_alloc@std@@6B@" = alias ptr, getelementptr inbounds (i8, ptr @1, i64 8)
@"??_7exception@std@@6B@" = alias ptr, getelementptr inbounds (i8, ptr @2, i64 8)
@"??_Eexception@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gexception@std@@UEAAPEAXI@Z"
@"??_Ebad_alloc@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"
@"??_Ebad_array_new_length@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @shift_kernel(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3) #0 {
  %5 = icmp ult i64 0, %3
  br i1 %5, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %11
  %.012 = phi i64 [ 0, %.lr.ph ], [ %12, %11 ]
  %7 = getelementptr inbounds nuw double, ptr %0, i64 %.012
  %8 = load double, ptr %7, align 8
  %9 = call double @llvm.fmuladd.f64(double %8, double 2.000000e+00, double 1.000000e+00)
  %10 = getelementptr inbounds nuw double, ptr %1, i64 %.012
  store double %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %6
  %12 = add i64 %.012, 1
  %13 = icmp ult i64 %12, %3
  br i1 %13, label %6, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %4
  %15 = icmp ult i64 0, %3
  br i1 %15, label %.lr.ph5, label %25

.lr.ph5:                                          ; preds = %14
  br label %16

16:                                               ; preds = %.lr.ph5, %22
  %.03 = phi i64 [ 0, %.lr.ph5 ], [ %23, %22 ]
  %17 = add i64 %.03, 1
  %18 = getelementptr inbounds nuw double, ptr %0, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = call double @llvm.fmuladd.f64(double %19, double 3.000000e+00, double -1.000000e+00)
  %21 = getelementptr inbounds nuw double, ptr %2, i64 %.03
  store double %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %16
  %23 = add i64 %.03, 1
  %24 = icmp ult i64 %23, %3
  br i1 %24, label %16, label %._crit_edge6, !llvm.loop !19

._crit_edge6:                                     ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge6, %14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca %"struct.bench::Args", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %class.anon, align 8
  call void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind writable sret(%"struct.bench::Args") align 8 %3, i32 noundef %0, ptr noundef %1, i64 noundef 65536, i32 noundef 64, i32 noundef 9)
  %10 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %4, align 8
  %12 = load i64, ptr %4, align 8
  %13 = add i64 %12, 1
  %14 = mul i64 %13, 8
  %15 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %14)
          to label %16 unwind label %125

16:                                               ; preds = %2
  store ptr %15, ptr %5, align 8
  %17 = load i64, ptr %4, align 8
  %18 = mul i64 %17, 8
  %19 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %18)
          to label %20 unwind label %125

20:                                               ; preds = %16
  store ptr %19, ptr %6, align 8
  %21 = load i64, ptr %4, align 8
  %22 = mul i64 %21, 8
  %23 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %22)
          to label %24 unwind label %125

24:                                               ; preds = %20
  store ptr %23, ptr %7, align 8
  %25 = load i64, ptr %4, align 8
  %26 = add i64 %25, 1
  %27 = load ptr, ptr %5, align 8
  invoke void @"?init_f64@bench@@YAXPEAN_K1@Z"(ptr noundef %27, i64 noundef %26, i64 noundef 12345)
          to label %28 unwind label %125

28:                                               ; preds = %24
  %29 = load i64, ptr %4, align 8
  %30 = load ptr, ptr %6, align 8
  invoke void @"?init_f64@bench@@YAXPEAN_K1@Z"(ptr noundef %30, i64 noundef %29, i64 noundef 7)
          to label %31 unwind label %125

31:                                               ; preds = %28
  %32 = load i64, ptr %4, align 8
  %33 = load ptr, ptr %7, align 8
  invoke void @"?init_f64@bench@@YAXPEAN_K1@Z"(ptr noundef %33, i64 noundef %32, i64 noundef 11)
          to label %34 unwind label %125

34:                                               ; preds = %31
  %35 = load atomic volatile ptr, ptr @g_fn acquire, align 8
  store ptr %35, ptr %8, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = load i64, ptr %4, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %6, align 8
  %40 = load ptr, ptr %5, align 8
  invoke void %36(ptr noundef %40, ptr noundef %39, ptr noundef %38, i64 noundef %37)
          to label %41 unwind label %125

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %68, %41
  %.03 = phi i64 [ 0, %41 ], [ %69, %68 ]
  %43 = load i64, ptr %4, align 8
  %44 = icmp ult i64 %.03, %43
  br i1 %44, label %45, label %.loopexit

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds nuw double, ptr %46, i64 %.03
  %48 = load double, ptr %47, align 8
  %49 = call double @llvm.fmuladd.f64(double %48, double 2.000000e+00, double 1.000000e+00)
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds nuw double, ptr %50, i64 %.03
  %52 = load double, ptr %51, align 8
  %53 = invoke noundef zeroext i1 @"?close_enough@bench@@YA_NNN@Z"(double noundef %52, double noundef %49)
          to label %54 unwind label %125

54:                                               ; preds = %45
  br i1 %53, label %55, label %66

55:                                               ; preds = %54
  %56 = load ptr, ptr %5, align 8
  %57 = add i64 %.03, 1
  %58 = getelementptr inbounds nuw double, ptr %56, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = call double @llvm.fmuladd.f64(double %59, double 3.000000e+00, double -1.000000e+00)
  %61 = load ptr, ptr %7, align 8
  %62 = getelementptr inbounds nuw double, ptr %61, i64 %.03
  %63 = load double, ptr %62, align 8
  %64 = invoke noundef zeroext i1 @"?close_enough@bench@@YA_NNN@Z"(double noundef %63, double noundef %60)
          to label %65 unwind label %125

65:                                               ; preds = %55
  br i1 %64, label %67, label %66

66:                                               ; preds = %65, %54
  br label %70

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = add i64 %.03, 1
  br label %42, !llvm.loop !20

.loopexit:                                        ; preds = %42
  br label %70

70:                                               ; preds = %.loopexit, %66
  %.02 = phi i8 [ 0, %66 ], [ 1, %.loopexit ]
  %71 = icmp ne i8 %.02, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, ptr @"??_C@_02GIPFHKNO@OK?$AA@", ptr @"??_C@_04OOEBCMBF@FAIL?$AA@"
  %74 = invoke i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@", ptr noundef %73)
          to label %75 unwind label %125

75:                                               ; preds = %70
  %76 = icmp ne i8 %.02, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  br label %124

78:                                               ; preds = %75
  %79 = load i64, ptr %4, align 8
  %80 = mul i64 %79, 8
  %81 = load ptr, ptr %6, align 8
  %82 = invoke noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %81, i64 noundef %80)
          to label %83 unwind label %125

83:                                               ; preds = %78
  %84 = load i64, ptr %4, align 8
  %85 = mul i64 %84, 8
  %86 = load ptr, ptr %7, align 8
  %87 = invoke noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %86, i64 noundef %85)
          to label %88 unwind label %125

88:                                               ; preds = %83
  %89 = xor i64 %82, %87
  %90 = invoke i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@", i64 noundef %89)
          to label %91 unwind label %125

91:                                               ; preds = %88
  invoke void @"?pin_environment@bench@@YAXXZ"()
          to label %92 unwind label %125

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %102, %92
  %.01 = phi i32 [ 0, %92 ], [ %103, %102 ]
  %94 = icmp slt i32 %.01, 16
  br i1 %94, label %95, label %104

95:                                               ; preds = %93
  %96 = load ptr, ptr %8, align 8
  %97 = load i64, ptr %4, align 8
  %98 = load ptr, ptr %7, align 8
  %99 = load ptr, ptr %6, align 8
  %100 = load ptr, ptr %5, align 8
  invoke void %96(ptr noundef %100, ptr noundef %99, ptr noundef %98, i64 noundef %97)
          to label %101 unwind label %125

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101
  %103 = add i32 %.01, 1
  br label %93, !llvm.loop !21

104:                                              ; preds = %93
  %105 = getelementptr inbounds nuw %class.anon, ptr %9, i32 0, i32 0
  store ptr %8, ptr %105, align 8
  %106 = getelementptr inbounds nuw %class.anon, ptr %9, i32 0, i32 1
  store ptr %5, ptr %106, align 8
  %107 = getelementptr inbounds nuw %class.anon, ptr %9, i32 0, i32 2
  store ptr %6, ptr %107, align 8
  %108 = getelementptr inbounds nuw %class.anon, ptr %9, i32 0, i32 3
  store ptr %7, ptr %108, align 8
  %109 = getelementptr inbounds nuw %class.anon, ptr %9, i32 0, i32 4
  store ptr %4, ptr %109, align 8
  %110 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = load i64, ptr %4, align 8
  %115 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 0
  %116 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %115) #14
  invoke void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef @"??_C@_0O@IMKOIIND@shifted_reuse?$AA@", ptr noundef %116, i64 noundef %114, i32 noundef %113, i32 noundef %111, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %9)
          to label %117 unwind label %125

117:                                              ; preds = %104
  %118 = load ptr, ptr %5, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %118)
          to label %119 unwind label %125

119:                                              ; preds = %117
  %120 = load ptr, ptr %6, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %120)
          to label %121 unwind label %125

121:                                              ; preds = %119
  %122 = load ptr, ptr %7, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %122)
          to label %123 unwind label %125

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123, %77
  %.0 = phi i32 [ 0, %123 ], [ 1, %77 ]
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #14
  ret i32 %.0

125:                                              ; preds = %121, %119, %117, %104, %95, %91, %88, %83, %78, %70, %55, %45, %34, %31, %28, %24, %20, %16, %2
  %126 = cleanuppad within none []
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #14 [ "funclet"(token %126) ]
  cleanupret from %126 unwind to caller
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind noalias writable sret(%"struct.bench::Args") align 8 %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #3 comdat personality ptr @__CxxFrameHandler3 {
  %7 = call noundef ptr @"??0Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %8 = icmp sgt i32 %1, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds ptr, ptr %2, i64 1
  %11 = load ptr, ptr %10, align 8
  br label %13

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ @"??_C@_07CIFAGBMG@unknown?$AA@", %12 ]
  %15 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 0
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %14)
          to label %17 unwind label %50

17:                                               ; preds = %13
  %18 = icmp sgt i32 %1, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = getelementptr inbounds ptr, ptr %2, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = invoke i64 @_strtoui64(ptr noundef %21, ptr noundef null, i32 noundef 10)
          to label %23 unwind label %50

23:                                               ; preds = %19
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi i64 [ %22, %23 ], [ %3, %24 ]
  %27 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 1
  store i64 %26, ptr %27, align 8
  %28 = icmp sgt i32 %1, 3
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds ptr, ptr %2, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = invoke i32 @atoi(ptr noundef %31)
          to label %33 unwind label %50

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %33
  %36 = phi i32 [ %32, %33 ], [ %4, %34 ]
  %37 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 2
  store i32 %36, ptr %37, align 8
  %38 = icmp sgt i32 %1, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds ptr, ptr %2, i64 4
  %41 = load ptr, ptr %40, align 8
  %42 = invoke i32 @atoi(ptr noundef %41)
          to label %43 unwind label %50

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi i32 [ %42, %43 ], [ %5, %44 ]
  %47 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  br i1 true, label %49, label %48

48:                                               ; preds = %45
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #14
  br label %49

49:                                               ; preds = %48, %45
  ret void

50:                                               ; preds = %39, %29, %19, %13
  %51 = cleanuppad within none []
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #14 [ "funclet"(token %51) ]
  cleanupret from %51 unwind to caller
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %0) #3 comdat {
  %2 = call noalias ptr @_aligned_malloc(i64 noundef %0, i64 noundef 64)
  %3 = icmp ne ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = call ptr @__acrt_iob_func(i32 noundef 2)
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@", i64 noundef %0) #14
  call void @exit(i32 noundef 2) #15
  unreachable

7:                                                ; preds = %1
  ret ptr %2
}

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?init_f64@bench@@YAXPEAN_K1@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2) #3 comdat {
  %4 = alloca i64, align 8
  store i64 %2, ptr %4, align 8
  %5 = icmp ult i64 0, %1
  br i1 %5, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  br label %6

6:                                                ; preds = %.lr.ph, %11
  %.01 = phi i64 [ 0, %.lr.ph ], [ %12, %11 ]
  %7 = call noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %8, f0x43E0000000000000
  %10 = getelementptr inbounds nuw double, ptr %0, i64 %.01
  store double %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %6
  %12 = add i64 %.01, 1
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %6, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?close_enough@bench@@YA_NNN@Z"(double noundef %0, double noundef %1) #0 comdat {
  %3 = fsub double %0, %1
  %4 = call double @llvm.fabs.f64(double %3)
  %5 = call double @llvm.fabs.f64(double %0)
  %6 = fadd double 1.000000e+00, %5
  %7 = call double @llvm.fabs.f64(double %1)
  %8 = fadd double %6, %7
  %9 = fmul double 1.000000e-09, %8
  %10 = fcmp ole double %4, %9
  ret i1 %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #3 comdat {
  %2 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr %2)
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @__acrt_iob_func(i32 noundef 1)
  %5 = call i32 @_vfprintf_l(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef %3)
  call void @llvm.va_end.p0(ptr %2)
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %0, i64 noundef %1) #0 comdat {
  %3 = icmp ult i64 0, %1
  br i1 %3, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %10
  %.03 = phi i64 [ 0, %.lr.ph ], [ %11, %10 ]
  %.012 = phi i64 [ 1469598103934665603, %.lr.ph ], [ %9, %10 ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.03
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = xor i64 %.012, %7
  %9 = mul i64 %8, 1099511628211
  br label %10

10:                                               ; preds = %4
  %11 = add i64 %.03, 1
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %4, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %10
  %split = phi i64 [ %9, %10 ]
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.01.lcssa = phi i64 [ %split, %._crit_edge ], [ 1469598103934665603, %2 ]
  ret i64 %.01.lcssa
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?pin_environment@bench@@YAXXZ"() #3 comdat {
  %1 = call ptr @GetCurrentProcess()
  %2 = call i32 @SetProcessAffinityMask(ptr noundef %1, i64 noundef 4)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 @GetLastError()
  %6 = call ptr @__acrt_iob_func(i32 noundef 2)
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@", i32 noundef %5) #14
  br label %8

8:                                                ; preds = %4, %0
  %9 = call ptr @GetCurrentProcess()
  %10 = call i32 @SetPriorityClass(ptr noundef %9, i32 noundef 128)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @GetLastError()
  %14 = call ptr @__acrt_iob_func(i32 noundef 2)
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@", i32 noundef %13) #14
  br label %16

16:                                               ; preds = %12, %8
  %17 = call i32 @timeBeginPeriod(i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %5) #3 {
  %7 = alloca %union._LARGE_INTEGER, align 8
  %8 = alloca %union._LARGE_INTEGER, align 8
  %9 = call noundef double @"?qpc_ns_per_tick@bench@@YANXZ"()
  %10 = icmp slt i32 0, %4
  br i1 %10, label %.lr.ph5, label %31

.lr.ph5:                                          ; preds = %6
  br label %11

11:                                               ; preds = %.lr.ph5, %28
  %.013 = phi i32 [ 0, %.lr.ph5 ], [ %29, %28 ]
  %12 = call i32 @QueryPerformanceCounter(ptr noundef %7)
  %13 = icmp slt i32 0, %3
  br i1 %13, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %11
  br label %14

14:                                               ; preds = %.lr.ph, %15
  %.02 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  call void @"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %15

15:                                               ; preds = %14
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, %3
  br i1 %17, label %14, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %11
  %19 = call i32 @QueryPerformanceCounter(ptr noundef %8)
  %20 = load i64, ptr %8, align 8
  %21 = load i64, ptr %7, align 8
  %22 = sub i64 %20, %21
  %23 = sitofp i64 %22 to double
  %24 = fmul double %23, %9
  %25 = sitofp i32 %3 to double
  %26 = fdiv double %24, %25
  %27 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@", i32 noundef %.013, double noundef %26)
  br label %28

28:                                               ; preds = %18
  %29 = add i32 %.013, 1
  %30 = icmp slt i32 %29, %4
  br i1 %30, label %11, label %._crit_edge6, !llvm.loop !25

._crit_edge6:                                     ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge6, %6
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %2, i32 0, i32 0
  %4 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %0) #3 comdat {
  call void @_aligned_free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 0
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0Args@bench@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 0
  %3 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #3 comdat align 2 {
  %3 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret ptr %3
}

declare dso_local i64 @_strtoui64(ptr noundef, ptr noundef, i32 noundef) #4

declare dso_local i32 @atoi(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %3 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %4 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %2, i32 0, i32 0
  %5 = load i8, ptr %4, align 1
  %6 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 %5) #14
  invoke void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret ptr %0

8:                                                ; preds = %1
  %9 = cleanuppad within none []
  call void @__std_terminate() #16 [ "funclet"(token %9) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %4, align 1
  %5 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %6 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %0, i32 0, i32 0
  %7 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Fake_allocator", align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %7 = call i8 @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  %8 = getelementptr inbounds nuw %"class.std::_String_val", ptr %5, i32 0, i32 1
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %5, i32 0, i32 2
  store i64 15, ptr %9, align 8
  call void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  store i8 0, ptr %3, align 1
  %10 = getelementptr inbounds nuw %"class.std::_String_val", ptr %5, i32 0, i32 0
  %11 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret void
}

declare dso_local void @__std_terminate()

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  %3 = call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 1
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 2
  store i64 0, ptr %5, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat {
  %2 = alloca %"struct.std::_Fake_allocator", align 1
  %3 = getelementptr inbounds nuw %"struct.std::_Fake_allocator", ptr %2, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %3 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = load i8, ptr %1, align 1
  store i8 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #3 comdat align 2 {
  %3 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %1) #14
  %4 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %3) #14
  %5 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4)
  ret ptr %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca %class.anon.0, align 1
  %6 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_String_val", ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = icmp ule i64 %2, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %13 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %12, i32 0, i32 0
  %14 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %13) #14
  %15 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_String_val", ptr %16, i32 0, i32 1
  store i64 %2, ptr %17, align 8
  call void @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %14, ptr noundef %1, i64 noundef %2) #14
  store i8 0, ptr %4, align 1
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %2
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  br label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw %class.anon.0, ptr %5, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  %22 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i8 %21, ptr noundef %1)
  br label %23

23:                                               ; preds = %19, %11
  %.0 = phi ptr [ %0, %11 ], [ %22, %19 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %0) #0 comdat {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) #0 comdat align 2 {
  %2 = call i64 @strlen(ptr noundef %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 0
  %4 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %7) #14
  br label %9

9:                                                ; preds = %5, %1
  %.0 = phi ptr [ %8, %5 ], [ %3, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
  %4 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3) #3 comdat align 2 {
  %5 = alloca %class.anon.0, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds nuw %class.anon.0, ptr %5, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %10 = icmp ugt i64 %1, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #15
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_String_val", ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #14
  store i64 %17, ptr %6, align 8
  %18 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %19 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(8) %6)
  store ptr %19, ptr %7, align 8
  %20 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %21 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %20, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %21) #14
  %22 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %23 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds nuw %"class.std::_String_val", ptr %23, i32 0, i32 1
  store i64 %1, ptr %24, align 8
  %25 = load i64, ptr %6, align 8
  %26 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %27 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %26, i32 0, i32 0
  %28 = getelementptr inbounds nuw %"class.std::_String_val", ptr %27, i32 0, i32 2
  store i64 %25, ptr %28, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %29) #14
  call void @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %30, i64 noundef %1, ptr noundef %3)
  %31 = icmp ugt i64 %16, 15
  br i1 %31, label %32, label %41

32:                                               ; preds = %12
  %33 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %34 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %33, i32 0, i32 0
  %35 = getelementptr inbounds nuw %"class.std::_String_val", ptr %34, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %36, i64 noundef %16) #14
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %39 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds nuw %"class.std::_String_val", ptr %39, i32 0, i32 0
  store ptr %37, ptr %40, align 8
  br label %45

41:                                               ; preds = %12
  %42 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %43 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %42, i32 0, i32 0
  %44 = getelementptr inbounds nuw %"class.std::_String_val", ptr %43, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  br label %45

45:                                               ; preds = %41, %32
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = icmp ugt i64 %3, 15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) #0 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = mul i64 %2, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %7 = call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  store i64 %7, ptr %2, align 8
  store i64 16, ptr %3, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %9 = load i64, ptr %8, align 8
  %10 = sub i64 %9, 1
  store i64 %10, ptr %4, align 8
  %11 = call noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #14
  store i64 %11, ptr %5, align 8
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %13 = load i64, ptr %12, align 8
  ret i64 %13
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #7 comdat {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_String_val", ptr %5, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %1, i64 noundef %7, i64 noundef %3) #14
  ret i64 %8
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat align 2 {
  %3 = load i64, ptr %1, align 8
  %4 = add i64 %3, 1
  store i64 %4, ptr %1, align 8
  %5 = call noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = load i64, ptr %1, align 8
  %7 = add i64 %6, -1
  store i64 %7, ptr %1, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = alloca i8, align 1
  call void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %2, i64 noundef %1) #14
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = add i64 %2, 1
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = load ptr, ptr %1, align 8
  store ptr %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %3 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = load i64, ptr %0, align 8
  %4 = load i64, ptr %1, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi ptr [ %1, %6 ], [ %0, %7 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = load i64, ptr %0, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi ptr [ %1, %6 ], [ %0, %7 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #0 comdat {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  ret ptr %0
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = or i64 %0, 15
  store i64 %6, ptr %4, align 8
  %7 = load i64, ptr %4, align 8
  %8 = icmp ugt i64 %7, %2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %20

10:                                               ; preds = %3
  %11 = udiv i64 %1, 2
  %12 = sub i64 %2, %11
  %13 = icmp ugt i64 %1, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %10
  %16 = udiv i64 %1, 2
  %17 = add i64 %1, %16
  store i64 %17, ptr %5, align 8
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %19 = load i64, ptr %18, align 8
  br label %20

20:                                               ; preds = %15, %14, %9
  %.0 = phi i64 [ %2, %9 ], [ %2, %14 ], [ %19, %15 ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #3 comdat align 2 {
  %3 = call noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %1)
  %4 = call noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #3 comdat {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  %5 = icmp uge i64 %0, 4096
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = call noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0)
  br label %10

8:                                                ; preds = %4
  %9 = call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0)
  br label %10

10:                                               ; preds = %8, %6, %3
  %.0 = phi ptr [ null, %3 ], [ %7, %6 ], [ %9, %8 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) #0 comdat {
  %2 = mul i64 %0, 1
  ret i64 %2
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #3 comdat {
  %2 = add i64 39, %0
  %3 = icmp ule i64 %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #15
  unreachable

5:                                                ; preds = %1
  %6 = call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %2)
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  call void @llvm.trap() #16
  unreachable

10:                                               ; preds = %5
  %11 = add i64 %7, 39
  %12 = and i64 %11, -32
  %13 = inttoptr i64 %12 to ptr
  %14 = getelementptr inbounds i64, ptr %13, i64 -1
  store i64 %7, ptr %14, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) #3 comdat align 2 {
  %2 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #7 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @_CxxThrowException(ptr %1, ptr @"_TI3?AVbad_array_new_length@std@@") #15
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #14
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  %3 = call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  %3 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %3 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds nuw %"class.std::exception", ptr %1, i32 0, i32 1
  invoke void @__std_exception_copy(ptr noundef %5, ptr noundef %4)
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %0

7:                                                ; preds = %2
  %8 = cleanuppad within none []
  call void @__std_terminate() #16 [ "funclet"(token %8) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr)

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef 1) #14
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi ptr [ %9, %6 ], [ @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", %10 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %4 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %5, i32 0, i32 0
  store ptr %1, ptr %6, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef 24) #18
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %2 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  invoke void @__std_exception_destroy(ptr noundef %2)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = cleanuppad within none []
  call void @__std_terminate() #16 [ "funclet"(token %5) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) #10

declare dso_local void @__std_exception_destroy(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef 24) #18
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef 24) #18
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) #4

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
  %4 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = mul i64 %2, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = mul i64 1, %2
  call void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %1, i64 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) #0 comdat personality ptr @__CxxFrameHandler3 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = icmp uge i64 %5, 4096
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  invoke void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %12

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i64, ptr %3, align 8
  %11 = load ptr, ptr %4, align 8
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %11, i64 noundef %10) #14
  ret void

12:                                               ; preds = %7
  %13 = cleanuppad within none []
  call void @__std_terminate() #16 [ "funclet"(token %13) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = add i64 %3, 39
  store i64 %4, ptr %1, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds i64, ptr %5, i64 -1
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = ptrtoint ptr %8 to i64
  %10 = sub i64 %9, %7
  %11 = icmp uge i64 %10, 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = icmp ule i64 %10, 39
  br i1 %13, label %15, label %14

14:                                               ; preds = %12, %2
  call void @llvm.trap() #16
  unreachable

15:                                               ; preds = %12
  %16 = inttoptr i64 %7 to ptr
  store ptr %16, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(ptr noundef) #12

declare dso_local noalias ptr @_aligned_malloc(i64 noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4)
  call void @llvm.va_end.p0(ptr %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #13

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 comdat {
  %5 = call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #13

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = load i64, ptr %0, align 8
  %3 = mul i64 %2, 6364136223846793005
  %4 = add i64 %3, 1442695040888963407
  store i64 %4, ptr %0, align 8
  %5 = load i64, ptr %0, align 8
  ret i64 %5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

declare dllimport i32 @SetProcessAffinityMask(ptr noundef, i64 noundef) #4

declare dllimport ptr @GetCurrentProcess() #4

declare dllimport i32 @GetLastError() #4

declare dllimport i32 @SetPriorityClass(ptr noundef, i32 noundef) #4

declare dllimport i32 @timeBeginPeriod(i32 noundef) #4

declare dso_local void @_aligned_free(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %4 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %3, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %5 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %8 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %11, i64 noundef %9) #14
  %12 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  call void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %12) #14
  br label %13

13:                                               ; preds = %6, %1
  %14 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 1
  store i64 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 2
  store i64 15, ptr %15, align 8
  store i8 0, ptr %2, align 1
  %16 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %17 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %0, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 0
  %4 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %7) #14
  br label %9

9:                                                ; preds = %5, %1
  %.0 = phi ptr [ %8, %5 ], [ %3, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef double @"?qpc_ns_per_tick@bench@@YANXZ"() #3 comdat {
  %1 = alloca %union._LARGE_INTEGER, align 8
  %2 = call i32 @QueryPerformanceFrequency(ptr noundef %1)
  %3 = load i64, ptr %1, align 8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double 1.000000e+09, %4
  ret double %5
}

declare dllimport i32 @QueryPerformanceCounter(ptr noundef) #4

; Function Attrs: mustprogress noinline uwtable
define internal void @"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 align 2 {
  %2 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !nonnull !26, !align !27
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8, !nonnull !26, !align !27
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8, !nonnull !26, !align !27
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !nonnull !26, !align !27
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !nonnull !26, !align !27
  %16 = load ptr, ptr %15, align 8
  call void %4(ptr noundef %16, ptr noundef %13, ptr noundef %10, i64 noundef %7)
  ret void
}

declare dllimport i32 @QueryPerformanceFrequency(ptr noundef) #4

attributes #0 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{!2, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\benchmarks\\shifted_reuse.cpp", directory: "C:\\work\\llvm-profitability-research")
!2 = !{!"/DEFAULTLIB:uuid.lib"}
!3 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!4 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!5 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!6 = !{!"/DEFAULTLIB:libcpmt.lib"}
!7 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!8 = !{!"/FAILIFMISMATCH:\22annotate_string=0\22"}
!9 = !{!"/FAILIFMISMATCH:\22annotate_vector=0\22"}
!10 = !{!"/FAILIFMISMATCH:\22annotate_optional=0\22"}
!11 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 1, !"MaxTLSAlign", i32 65536}
!16 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = !{}
!27 = !{i64 8}
