; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R1A\known_vec\known_vec.frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\benchmarks\\known_vec.cpp"
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
%class.anon.0 = type { ptr, ptr, ptr, ptr }
%class.anon.1 = type { ptr, ptr, ptr, ptr, ptr }
%union._LARGE_INTEGER = type { i64 }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%class.anon.2 = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }

$"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z" = comdat any

$"?aligned_alloc64@bench@@YAPEAX_K@Z" = comdat any

$"?init_u64@bench@@YAXPEA_K_K1@Z" = comdat any

$"?pin_environment@bench@@YAXXZ" = comdat any

$printf = comdat any

$"?hash_bytes@bench@@YA_KPEBX_K@Z" = comdat any

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

$"??_C@_04IEJGKNJ@body?$AA@" = comdat any

$"??_C@_02GIPFHKNO@OK?$AA@" = comdat any

$"??_C@_04OOEBCMBF@FAIL?$AA@" = comdat any

$"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = comdat any

$"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = comdat any

$"??_C@_05LABDNII@setup?$AA@" = comdat any

$"??_C@_0BA@MLBOPEBH@known_vec_setup?$AA@" = comdat any

$"??_C@_03CIPBMPOA@hot?$AA@" = comdat any

$"??_C@_0O@IHHGNLMH@known_vec_hot?$AA@" = comdat any

$"??_C@_0P@KNOMFIKG@known_vec_body?$AA@" = comdat any

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
@"??_C@_04IEJGKNJ@body?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"body\00", comdat, align 4
@g_setup = internal global ptr @known_setup, align 8
@g_hot = internal global ptr @known_hot, align 8
@g_body = internal global ptr @known_body, align 8
@"??_C@_02GIPFHKNO@OK?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"OK\00", comdat, align 4
@"??_C@_04OOEBCMBF@FAIL?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"FAIL\00", comdat, align 4
@"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"VERIFY %s\0A\00", comdat, align 8
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_05LABDNII@setup?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"setup\00", comdat, align 4
@"??_C@_0BA@MLBOPEBH@known_vec_setup?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"known_vec_setup\00", comdat, align 8
@"??_C@_03CIPBMPOA@hot?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"hot\00", comdat, align 4
@"??_C@_0O@IHHGNLMH@known_vec_hot?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"known_vec_hot\00", comdat, align 8
@"??_C@_0P@KNOMFIKG@known_vec_body?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"known_vec_body\00", comdat, align 8
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

; Function Attrs: mustprogress noinline uwtable
define dso_local void @known_setup(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3) #0 {
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %5 = icmp slt i32 0, %3
  br i1 %5, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %6
  %.02 = phi i32 [ 0, %.lr.ph ], [ %13, %6 ]
  %7 = sext i32 %.02 to i64
  %8 = getelementptr inbounds i64, ptr %0, i64 %7
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i8
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  store i8 %10, ptr %12, align 1
  %13 = add i32 %.02, 1
  %14 = icmp slt i32 %13, %3
  br i1 %14, label %6, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %6
  br label %15

15:                                               ; preds = %._crit_edge, %4
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %16 = icmp slt i32 0, %3
  br i1 %16, label %.lr.ph5, label %26

.lr.ph5:                                          ; preds = %15
  br label %17

17:                                               ; preds = %.lr.ph5, %17
  %.013 = phi i32 [ 0, %.lr.ph5 ], [ %24, %17 ]
  %18 = sext i32 %.013 to i64
  %19 = getelementptr inbounds i64, ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i8
  %22 = sext i32 %.013 to i64
  %23 = getelementptr inbounds i8, ptr %1, i64 %22
  store i8 %21, ptr %23, align 1
  %24 = add i32 %.013, 1
  %25 = icmp slt i32 %24, %3
  br i1 %25, label %17, label %._crit_edge6, !llvm.loop !31

._crit_edge6:                                     ; preds = %17
  br label %26

26:                                               ; preds = %._crit_edge6, %15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @known_hot(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %.01 = phi i32 [ 0, %.lr.ph ], [ %12, %5 ]
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds i64, ptr %0, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i8
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  store i8 %9, ptr %11, align 1
  %12 = add i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %5, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %5
  br label %14

14:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @known_body(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %6 = icmp slt i32 0, %3
  br i1 %6, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %5
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.014 = phi i32 [ 0, %.lr.ph ], [ %14, %7 ]
  %8 = sext i32 %.014 to i64
  %9 = getelementptr inbounds i64, ptr %0, i64 %8
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i8
  %12 = sext i32 %.014 to i64
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  store i8 %11, ptr %13, align 1
  %14 = add i32 %.014, 1
  %15 = icmp slt i32 %14, %3
  br i1 %15, label %7, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %7
  br label %16

16:                                               ; preds = %._crit_edge, %5
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %17 = icmp slt i32 0, %3
  br i1 %17, label %.lr.ph7, label %27

.lr.ph7:                                          ; preds = %16
  br label %18

18:                                               ; preds = %.lr.ph7, %18
  %.035 = phi i32 [ 0, %.lr.ph7 ], [ %25, %18 ]
  %19 = sext i32 %.035 to i64
  %20 = getelementptr inbounds i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i8
  %23 = sext i32 %.035 to i64
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  store i8 %22, ptr %24, align 1
  %25 = add i32 %.035, 1
  %26 = icmp slt i32 %25, %3
  br i1 %26, label %18, label %._crit_edge8, !llvm.loop !31

._crit_edge8:                                     ; preds = %18
  br label %27

27:                                               ; preds = %._crit_edge8, %16
  %28 = icmp slt i32 0, %4
  br i1 %28, label %.lr.ph15, label %44

.lr.ph15:                                         ; preds = %27
  br label %29

29:                                               ; preds = %.lr.ph15, %41
  %.013 = phi i32 [ 0, %.lr.ph15 ], [ %42, %41 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %30 = icmp slt i32 0, %3
  br i1 %30, label %.lr.ph11, label %40

.lr.ph11:                                         ; preds = %29
  br label %31

31:                                               ; preds = %.lr.ph11, %31
  %.029 = phi i32 [ 0, %.lr.ph11 ], [ %38, %31 ]
  %32 = sext i32 %.029 to i64
  %33 = getelementptr inbounds i64, ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i8
  %36 = sext i32 %.029 to i64
  %37 = getelementptr inbounds i8, ptr %1, i64 %36
  store i8 %35, ptr %37, align 1
  %38 = add i32 %.029, 1
  %39 = icmp slt i32 %38, %3
  br i1 %39, label %31, label %._crit_edge12, !llvm.loop !31

._crit_edge12:                                    ; preds = %31
  br label %40

40:                                               ; preds = %._crit_edge12, %29
  br label %41

41:                                               ; preds = %40
  %42 = add i32 %.013, 1
  %43 = icmp slt i32 %42, %4
  br i1 %43, label %29, label %._crit_edge16, !llvm.loop !55

._crit_edge16:                                    ; preds = %41
  br label %44

44:                                               ; preds = %._crit_edge16, %27
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #1 personality ptr @__CxxFrameHandler3 {
  %3 = alloca %"struct.bench::Args", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %class.anon, align 8
  %12 = alloca %class.anon.0, align 8
  %13 = alloca %class.anon.1, align 8
  %14 = icmp sgt i32 %0, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds ptr, ptr %1, i64 5
  %17 = load ptr, ptr %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi ptr [ %17, %15 ], [ @"??_C@_04IEJGKNJ@body?$AA@", %18 ]
  call void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind writable sret(%"struct.bench::Args") align 8 %3, i32 noundef %0, ptr noundef %1, i64 noundef 10000, i32 noundef 32, i32 noundef 9)
  %21 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %4, align 8
  %23 = load i64, ptr %4, align 8
  %24 = mul i64 %23, 8
  %25 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %24)
          to label %26 unwind label %192

26:                                               ; preds = %19
  store ptr %25, ptr %5, align 8
  %27 = load i64, ptr %4, align 8
  %28 = mul i64 %27, 1
  %29 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %28)
          to label %30 unwind label %192

30:                                               ; preds = %26
  store ptr %29, ptr %6, align 8
  %31 = load i64, ptr %4, align 8
  %32 = mul i64 %31, 1
  %33 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %32)
          to label %34 unwind label %192

34:                                               ; preds = %30
  store ptr %33, ptr %7, align 8
  %35 = load i64, ptr %4, align 8
  %36 = load ptr, ptr %5, align 8
  invoke void @"?init_u64@bench@@YAXPEA_K_K1@Z"(ptr noundef %36, i64 noundef %35, i64 noundef 12345)
          to label %37 unwind label %192

37:                                               ; preds = %34
  invoke void @"?pin_environment@bench@@YAXXZ"()
          to label %38 unwind label %192

38:                                               ; preds = %37
  %39 = load atomic volatile ptr, ptr @g_setup acquire, align 8
  store ptr %39, ptr %8, align 8
  %40 = load atomic volatile ptr, ptr @g_hot acquire, align 8
  store ptr %40, ptr %9, align 8
  %41 = load atomic volatile ptr, ptr @g_body acquire, align 8
  store ptr %41, ptr %10, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i64, ptr %4, align 8
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %7, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = load ptr, ptr %5, align 8
  invoke void %42(ptr noundef %47, ptr noundef %46, ptr noundef %45, i32 noundef %44)
          to label %48 unwind label %192

48:                                               ; preds = %38
  %49 = load i64, ptr %4, align 8
  %50 = icmp ult i64 0, %49
  br i1 %50, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %48
  br label %51

51:                                               ; preds = %.lr.ph, %75
  %.056 = phi i64 [ 0, %.lr.ph ], [ %76, %75 ]
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %.056
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds nuw i64, ptr %56, i64 %.056
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %55, %60
  br i1 %61, label %73, label %62

62:                                               ; preds = %51
  %63 = load ptr, ptr %7, align 8
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 %.056
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds nuw i64, ptr %67, i64 %.056
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i8
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62, %51
  br label %79

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = add i64 %.056, 1
  %77 = load i64, ptr %4, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %51, label %..loopexit_crit_edge, !llvm.loop !56

..loopexit_crit_edge:                             ; preds = %75
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %48
  br label %79

79:                                               ; preds = %.loopexit, %73
  %.04 = phi i8 [ 0, %73 ], [ 1, %.loopexit ]
  %80 = icmp ne i8 %.04, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, ptr @"??_C@_02GIPFHKNO@OK?$AA@", ptr @"??_C@_04OOEBCMBF@FAIL?$AA@"
  %83 = invoke i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@", ptr noundef %82)
          to label %84 unwind label %192

84:                                               ; preds = %79
  %85 = icmp ne i8 %.04, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  br label %191

87:                                               ; preds = %84
  %88 = load i64, ptr %4, align 8
  %89 = load ptr, ptr %6, align 8
  %90 = invoke noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %89, i64 noundef %88)
          to label %91 unwind label %192

91:                                               ; preds = %87
  %92 = load i64, ptr %4, align 8
  %93 = load ptr, ptr %7, align 8
  %94 = invoke noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %93, i64 noundef %92)
          to label %95 unwind label %192

95:                                               ; preds = %91
  %96 = xor i64 %90, %94
  %97 = invoke i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@", i64 noundef %96)
          to label %98 unwind label %192

98:                                               ; preds = %95
  %99 = call i32 @strcmp(ptr noundef %20, ptr noundef @"??_C@_05LABDNII@setup?$AA@") #14
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %128, label %101

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %112, %101
  %.03 = phi i32 [ 0, %101 ], [ %113, %112 ]
  %103 = icmp slt i32 %.03, 16
  br i1 %103, label %104, label %114

104:                                              ; preds = %102
  %105 = load ptr, ptr %8, align 8
  %106 = load i64, ptr %4, align 8
  %107 = trunc i64 %106 to i32
  %108 = load ptr, ptr %7, align 8
  %109 = load ptr, ptr %6, align 8
  %110 = load ptr, ptr %5, align 8
  invoke void %105(ptr noundef %110, ptr noundef %109, ptr noundef %108, i32 noundef %107)
          to label %111 unwind label %192

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111
  %113 = add i32 %.03, 1
  br label %102, !llvm.loop !57

114:                                              ; preds = %102
  %115 = getelementptr inbounds nuw %class.anon, ptr %11, i32 0, i32 0
  store ptr %8, ptr %115, align 8
  %116 = getelementptr inbounds nuw %class.anon, ptr %11, i32 0, i32 1
  store ptr %5, ptr %116, align 8
  %117 = getelementptr inbounds nuw %class.anon, ptr %11, i32 0, i32 2
  store ptr %6, ptr %117, align 8
  %118 = getelementptr inbounds nuw %class.anon, ptr %11, i32 0, i32 3
  store ptr %7, ptr %118, align 8
  %119 = getelementptr inbounds nuw %class.anon, ptr %11, i32 0, i32 4
  store ptr %4, ptr %119, align 8
  %120 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = load i64, ptr %4, align 8
  %125 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 0
  %126 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %125) #14
  invoke void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef @"??_C@_0BA@MLBOPEBH@known_vec_setup?$AA@", ptr noundef %126, i64 noundef %124, i32 noundef %123, i32 noundef %121, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %11)
          to label %127 unwind label %192

127:                                              ; preds = %114
  br label %184

128:                                              ; preds = %98
  %129 = call i32 @strcmp(ptr noundef %20, ptr noundef @"??_C@_03CIPBMPOA@hot?$AA@") #14
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %156, label %131

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %141, %131
  %.02 = phi i32 [ 0, %131 ], [ %142, %141 ]
  %133 = icmp slt i32 %.02, 16
  br i1 %133, label %134, label %143

134:                                              ; preds = %132
  %135 = load ptr, ptr %9, align 8
  %136 = load i64, ptr %4, align 8
  %137 = trunc i64 %136 to i32
  %138 = load ptr, ptr %6, align 8
  %139 = load ptr, ptr %5, align 8
  invoke void %135(ptr noundef %139, ptr noundef %138, i32 noundef %137)
          to label %140 unwind label %192

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  %142 = add i32 %.02, 1
  br label %132, !llvm.loop !58

143:                                              ; preds = %132
  %144 = getelementptr inbounds nuw %class.anon.0, ptr %12, i32 0, i32 0
  store ptr %9, ptr %144, align 8
  %145 = getelementptr inbounds nuw %class.anon.0, ptr %12, i32 0, i32 1
  store ptr %5, ptr %145, align 8
  %146 = getelementptr inbounds nuw %class.anon.0, ptr %12, i32 0, i32 2
  store ptr %6, ptr %146, align 8
  %147 = getelementptr inbounds nuw %class.anon.0, ptr %12, i32 0, i32 3
  store ptr %4, ptr %147, align 8
  %148 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = load i64, ptr %4, align 8
  %153 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 0
  %154 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %153) #14
  invoke void @"??$run_trials@V<lambda_1>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_1>@?0??main@@9@@Z"(ptr noundef @"??_C@_0O@IHHGNLMH@known_vec_hot?$AA@", ptr noundef %154, i64 noundef %152, i32 noundef %151, i32 noundef %149, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %12)
          to label %155 unwind label %192

155:                                              ; preds = %143
  br label %183

156:                                              ; preds = %128
  br label %157

157:                                              ; preds = %167, %156
  %.01 = phi i32 [ 0, %156 ], [ %168, %167 ]
  %158 = icmp slt i32 %.01, 4
  br i1 %158, label %159, label %169

159:                                              ; preds = %157
  %160 = load ptr, ptr %10, align 8
  %161 = load i64, ptr %4, align 8
  %162 = trunc i64 %161 to i32
  %163 = load ptr, ptr %7, align 8
  %164 = load ptr, ptr %6, align 8
  %165 = load ptr, ptr %5, align 8
  invoke void %160(ptr noundef %165, ptr noundef %164, ptr noundef %163, i32 noundef %162, i32 noundef 1000)
          to label %166 unwind label %192

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166
  %168 = add i32 %.01, 1
  br label %157, !llvm.loop !59

169:                                              ; preds = %157
  %170 = getelementptr inbounds nuw %class.anon.1, ptr %13, i32 0, i32 0
  store ptr %10, ptr %170, align 8
  %171 = getelementptr inbounds nuw %class.anon.1, ptr %13, i32 0, i32 1
  store ptr %5, ptr %171, align 8
  %172 = getelementptr inbounds nuw %class.anon.1, ptr %13, i32 0, i32 2
  store ptr %6, ptr %172, align 8
  %173 = getelementptr inbounds nuw %class.anon.1, ptr %13, i32 0, i32 3
  store ptr %7, ptr %173, align 8
  %174 = getelementptr inbounds nuw %class.anon.1, ptr %13, i32 0, i32 4
  store ptr %4, ptr %174, align 8
  %175 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 2
  %178 = load i32, ptr %177, align 8
  %179 = load i64, ptr %4, align 8
  %180 = getelementptr inbounds nuw %"struct.bench::Args", ptr %3, i32 0, i32 0
  %181 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %180) #14
  invoke void @"??$run_trials@V<lambda_2>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_2>@?0??main@@9@@Z"(ptr noundef @"??_C@_0P@KNOMFIKG@known_vec_body?$AA@", ptr noundef %181, i64 noundef %179, i32 noundef %178, i32 noundef %176, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %13)
          to label %182 unwind label %192

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %155
  br label %184

184:                                              ; preds = %183, %127
  %185 = load ptr, ptr %5, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %185)
          to label %186 unwind label %192

186:                                              ; preds = %184
  %187 = load ptr, ptr %6, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %187)
          to label %188 unwind label %192

188:                                              ; preds = %186
  %189 = load ptr, ptr %7, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %189)
          to label %190 unwind label %192

190:                                              ; preds = %188
  br label %191

191:                                              ; preds = %190, %86
  %.0 = phi i32 [ 0, %190 ], [ 1, %86 ]
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #14
  ret i32 %.0

192:                                              ; preds = %188, %186, %184, %169, %159, %143, %134, %114, %104, %95, %91, %87, %79, %38, %37, %34, %30, %26, %19
  %193 = cleanuppad within none []
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #14 [ "funclet"(token %193) ]
  cleanupret from %193 unwind to caller
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind noalias writable sret(%"struct.bench::Args") align 8 %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #0 comdat personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %0) #0 comdat {
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
define linkonce_odr dso_local void @"?init_u64@bench@@YAXPEA_K_K1@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 comdat {
  %4 = alloca i64, align 8
  store i64 %2, ptr %4, align 8
  %5 = icmp ult i64 0, %1
  br i1 %5, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %3
  br label %6

6:                                                ; preds = %.lr.ph, %9
  %.01 = phi i64 [ 0, %.lr.ph ], [ %10, %9 ]
  %7 = call noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %8 = getelementptr inbounds nuw i64, ptr %0, i64 %.01
  store i64 %7, ptr %8, align 8
  br label %9

9:                                                ; preds = %6
  %10 = add i64 %.01, 1
  %11 = icmp ult i64 %10, %1
  br i1 %11, label %6, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?pin_environment@bench@@YAXXZ"() #0 comdat {
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
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr %2)
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @__acrt_iob_func(i32 noundef 1)
  %5 = call i32 @_vfprintf_l(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef %3)
  call void @llvm.va_end.p0(ptr %2)
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %0, i64 noundef %1) #2 comdat {
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
  br i1 %12, label %4, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %10
  %split = phi i64 [ %9, %10 ]
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.01.lcssa = phi i64 [ %split, %._crit_edge ], [ 1469598103934665603, %2 ]
  ret i64 %.01.lcssa
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline uwtable
define internal void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %5) #0 {
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
  br i1 %17, label %14, label %._crit_edge, !llvm.loop !62

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
  br i1 %30, label %11, label %._crit_edge6, !llvm.loop !63

._crit_edge6:                                     ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge6, %6
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %2, i32 0, i32 0
  %4 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"??$run_trials@V<lambda_1>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_1>@?0??main@@9@@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %5) #0 {
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
  call void @"??R<lambda_1>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %15

15:                                               ; preds = %14
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, %3
  br i1 %17, label %14, label %._crit_edge, !llvm.loop !64

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
  br i1 %30, label %11, label %._crit_edge6, !llvm.loop !65

._crit_edge6:                                     ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge6, %6
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"??$run_trials@V<lambda_2>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_2>@?0??main@@9@@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %5) #0 {
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
  call void @"??R<lambda_2>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %15

15:                                               ; preds = %14
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, %3
  br i1 %17, label %14, label %._crit_edge, !llvm.loop !66

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
  br i1 %30, label %11, label %._crit_edge6, !llvm.loop !67

._crit_edge6:                                     ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge6, %6
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %0) #0 comdat {
  call void @_aligned_free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 0
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0Args@bench@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"struct.bench::Args", ptr %0, i32 0, i32 0
  %3 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #0 comdat align 2 {
  %3 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret ptr %3
}

declare dso_local i64 @_strtoui64(ptr noundef, ptr noundef, i32 noundef) #4

declare dso_local i32 @atoi(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %4, align 1
  %5 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %6 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %0, i32 0, i32 0
  %7 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  %3 = call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 1
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 2
  store i64 0, ptr %5, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #2 comdat {
  %2 = alloca %"struct.std::_Fake_allocator", align 1
  %3 = getelementptr inbounds nuw %"struct.std::_Fake_allocator", ptr %2, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %3 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 {
  %3 = load i8, ptr %1, align 1
  store i8 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #0 comdat align 2 {
  %3 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %1) #14
  %4 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %3) #14
  %5 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4)
  ret ptr %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca %class.anon.2, align 1
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
  %20 = getelementptr inbounds nuw %class.anon.2, ptr %5, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  %22 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i8 %21, ptr noundef %1)
  br label %23

23:                                               ; preds = %19, %11
  %.0 = phi ptr [ %0, %11 ], [ %22, %19 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %0) #2 comdat {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) #2 comdat align 2 {
  %2 = call i64 @strlen(ptr noundef %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
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
define linkonce_odr dso_local void @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat {
  %4 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3) #0 comdat align 2 {
  %5 = alloca %class.anon.2, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds nuw %class.anon.2, ptr %5, i32 0, i32 0
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
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = icmp ugt i64 %3, 15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) #2 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = mul i64 %2, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 {
  %3 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_String_val", ptr %5, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %1, i64 noundef %7, i64 noundef %3) #14
  ret i64 %8
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #2 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2) #2 comdat align 2 {
  %4 = alloca i8, align 1
  call void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %2, i64 noundef %1) #14
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = add i64 %2, 1
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat {
  %3 = load ptr, ptr %1, align 8
  store ptr %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #2 comdat align 2 {
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  %3 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat {
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
define linkonce_odr dso_local noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #2 comdat {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  ret ptr %0
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = call noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %1)
  %4 = call noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #0 comdat {
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
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) #2 comdat {
  %2 = mul i64 %0, 1
  ret i64 %2
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  %2 = call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #14
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
  %3 = call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
  %3 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr)

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  %3 = call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef 1) #14
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %4 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds nuw %"class.std::exception", ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %5, i32 0, i32 0
  store ptr %1, ptr %6, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat {
  %4 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = mul i64 %2, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = mul i64 1, %2
  call void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %1, i64 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) #2 comdat personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat {
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
declare dso_local i64 @strlen(ptr noundef) #3

declare dso_local noalias ptr @_aligned_malloc(i64 noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) #2 comdat {
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
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #2 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #2 comdat {
  %2 = load i64, ptr %0, align 8
  %3 = mul i64 %2, 6364136223846793005
  %4 = add i64 %3, 1442695040888963407
  store i64 %4, ptr %0, align 8
  %5 = load i64, ptr %0, align 8
  ret i64 %5
}

declare dllimport i32 @SetProcessAffinityMask(ptr noundef, i64 noundef) #4

declare dllimport ptr @GetCurrentProcess() #4

declare dllimport i32 @GetLastError() #4

declare dllimport i32 @SetPriorityClass(ptr noundef, i32 noundef) #4

declare dllimport i32 @timeBeginPeriod(i32 noundef) #4

declare dso_local void @_aligned_free(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds nuw %"class.std::basic_string", ptr %0, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
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
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %0, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 {
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #2 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::_String_val", ptr %0, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
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
define linkonce_odr dso_local noundef double @"?qpc_ns_per_tick@bench@@YANXZ"() #0 comdat {
  %1 = alloca %union._LARGE_INTEGER, align 8
  %2 = call i32 @QueryPerformanceFrequency(ptr noundef %1)
  %3 = load i64, ptr %1, align 8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double 1.000000e+09, %4
  ret double %5
}

declare dllimport i32 @QueryPerformanceCounter(ptr noundef) #4

; Function Attrs: mustprogress noinline uwtable
define internal void @"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 align 2 {
  %2 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !nonnull !68, !align !69
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8, !nonnull !68, !align !69
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8, !nonnull !68, !align !69
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !nonnull !68, !align !69
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw %class.anon, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !nonnull !68, !align !69
  %17 = load ptr, ptr %16, align 8
  call void %4(ptr noundef %17, ptr noundef %14, ptr noundef %11, i32 noundef %8)
  ret void
}

declare dllimport i32 @QueryPerformanceFrequency(ptr noundef) #4

; Function Attrs: mustprogress noinline uwtable
define internal void @"??R<lambda_1>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 align 2 {
  %2 = getelementptr inbounds nuw %class.anon.0, ptr %0, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !nonnull !68, !align !69
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %class.anon.0, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8, !nonnull !68, !align !69
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds nuw %class.anon.0, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8, !nonnull !68, !align !69
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %class.anon.0, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !nonnull !68, !align !69
  %14 = load ptr, ptr %13, align 8
  call void %4(ptr noundef %14, ptr noundef %11, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"??R<lambda_2>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 align 2 {
  %2 = getelementptr inbounds nuw %class.anon.1, ptr %0, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !nonnull !68, !align !69
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %class.anon.1, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8, !nonnull !68, !align !69
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds nuw %class.anon.1, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8, !nonnull !68, !align !69
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %class.anon.1, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !nonnull !68, !align !69
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw %class.anon.1, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !nonnull !68, !align !69
  %17 = load ptr, ptr %16, align 8
  call void %4(ptr noundef %17, ptr noundef %14, ptr noundef %11, i32 noundef %8, i32 noundef 1000)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\benchmarks\\known_vec.cpp", directory: "C:\\work\\llvm-profitability-research")
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
!17 = !{!18}
!18 = distinct !{!18, !19, !"?copy_novec@@YAXPEIB_KPEIAEH@Z: argument 0"}
!19 = distinct !{!19, i1 true, !"?copy_novec@@YAXPEIB_KPEIAEH@Z"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"?copy_novec@@YAXPEIB_KPEIAEH@Z: argument 1"}
!22 = distinct !{!22, !23, !24, !25}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.vectorize.width", i32 1}
!25 = !{!"llvm.loop.vectorize.scalable.disable"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 0"}
!28 = distinct !{!28, i1 true, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 1"}
!31 = distinct !{!31, !23, !32, !25, !33, !34}
!32 = !{!"llvm.loop.vectorize.width", i32 16}
!33 = !{!"llvm.loop.interleave.count", i32 4}
!34 = !{!"llvm.loop.vectorize.enable"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 0"}
!37 = distinct !{!37, i1 true, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 1"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"?copy_novec@@YAXPEIB_KPEIAEH@Z: argument 0"}
!42 = distinct !{!42, i1 true, !"?copy_novec@@YAXPEIB_KPEIAEH@Z"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"?copy_novec@@YAXPEIB_KPEIAEH@Z: argument 1"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 0"}
!47 = distinct !{!47, i1 true, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 0"}
!52 = distinct !{!52, i1 true, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"?copy_vw16@@YAXPEIB_KPEIAEH@Z: argument 1"}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !23}
!68 = !{}
!69 = !{i64 8}
