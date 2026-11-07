	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.att_syntax
	.file	"read_read_offset.cpp"
	.def	rr_offset_kernel;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3ff0000000000000         # -- Begin function rr_offset_kernel
	.section	.rdata,"dr",discard,__real@3ff0000000000000
	.p2align	3, 0x0
__real@3ff0000000000000:
	.quad	0x3ff0000000000000              # double 1
	.globl	__real@4008000000000000
	.section	.rdata,"dr",discard,__real@4008000000000000
	.p2align	3, 0x0
__real@4008000000000000:
	.quad	0x4008000000000000              # double 3
	.globl	__real@c000000000000000
	.section	.rdata,"dr",discard,__real@c000000000000000
	.p2align	3, 0x0
__real@c000000000000000:
	.quad	0xc000000000000000              # double -2
	.globl	__real@4014000000000000
	.section	.rdata,"dr",discard,__real@4014000000000000
	.p2align	3, 0x0
__real@4014000000000000:
	.quad	0x4014000000000000              # double 5
	.text
	.globl	rr_offset_kernel
	.p2align	4
rr_offset_kernel:                       # @rr_offset_kernel
# %bb.0:
	testq	%r9, %r9
	je	.LBB0_8
# %bb.1:                                # %.lr.ph.preheader
	cmpq	$8, %r9
	jae	.LBB0_3
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_3:                                # %vector.ph
	movq	%r9, %rax
	andq	$-8, %rax
	xorl	%r10d, %r10d
	vbroadcastsd	__real@3ff0000000000000(%rip), %ymm0 # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vbroadcastsd	__real@4008000000000000(%rip), %ymm1 # ymm1 = [3.0E+0,3.0E+0,3.0E+0,3.0E+0]
	vbroadcastsd	__real@c000000000000000(%rip), %ymm2 # ymm2 = [-2.0E+0,-2.0E+0,-2.0E+0,-2.0E+0]
	vbroadcastsd	__real@4014000000000000(%rip), %ymm3 # ymm3 = [5.0E+0,5.0E+0,5.0E+0,5.0E+0]
	.p2align	4
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovupd	(%rcx,%r10,8), %ymm4
	vfmadd132pd	%ymm1, %ymm0, %ymm4     # ymm4 = (ymm4 * ymm1) + ymm0
	vmovupd	32(%rcx,%r10,8), %ymm5
	vfmadd132pd	%ymm1, %ymm0, %ymm5     # ymm5 = (ymm5 * ymm1) + ymm0
	vmovupd	%ymm4, (%rdx,%r10,8)
	vmovupd	%ymm5, 32(%rdx,%r10,8)
	vmovupd	(%rcx,%r10,8), %ymm4
	vfmadd132pd	%ymm3, %ymm2, %ymm4     # ymm4 = (ymm4 * ymm3) + ymm2
	vmovupd	32(%rcx,%r10,8), %ymm5
	vfmadd132pd	%ymm3, %ymm2, %ymm5     # ymm5 = (ymm5 * ymm3) + ymm2
	vmovupd	%ymm4, (%r8,%r10,8)
	vmovupd	%ymm5, 32(%r8,%r10,8)
	addq	$8, %r10
	cmpq	%r10, %rax
	jne	.LBB0_4
# %bb.5:                                # %middle.block
	cmpq	%rax, %r9
	je	.LBB0_8
.LBB0_6:                                # %.lr.ph.preheader23
	vmovsd	__real@4008000000000000(%rip), %xmm0 # xmm0 = [3.0E+0,0.0E+0]
	vmovsd	__real@3ff0000000000000(%rip), %xmm1 # xmm1 = [1.0E+0,0.0E+0]
	vmovsd	__real@4014000000000000(%rip), %xmm2 # xmm2 = [5.0E+0,0.0E+0]
	vmovsd	__real@c000000000000000(%rip), %xmm3 # xmm3 = [-2.0E+0,0.0E+0]
	.p2align	4
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm4            # xmm4 = mem[0],zero
	vfmadd132sd	%xmm0, %xmm1, %xmm4     # xmm4 = (xmm4 * xmm0) + xmm1
	vmovsd	%xmm4, (%rdx,%rax,8)
	vmovsd	(%rcx,%rax,8), %xmm4            # xmm4 = mem[0],zero
	vfmadd132sd	%xmm2, %xmm3, %xmm4     # xmm4 = (xmm4 * xmm2) + xmm3
	vmovsd	%xmm4, (%r8,%rax,8)
	incq	%rax
	cmpq	%rax, %r9
	jne	.LBB0_7
.LBB0_8:                                # %._crit_edge
	vzeroupper
	retq
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4
main:                                   # @main
.Lfunc_begin0:
.seh_proc main
	.seh_handler __CxxFrameHandler3, @unwind, @except
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$280, %rsp                      # imm = 0x118
	.seh_stackalloc 280
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	vmovapd	%xmm9, 128(%rbp)                # 16-byte Spill
	.seh_savexmm %xmm9, 256
	vmovapd	%xmm8, 112(%rbp)                # 16-byte Spill
	.seh_savexmm %xmm8, 240
	vmovapd	%xmm7, 96(%rbp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 224
	vmovapd	%xmm6, 80(%rbp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 208
	.seh_endprologue
	movq	$-2, 72(%rbp)
	movq	%rdx, %r8
	movl	%ecx, %edx
	movl	$9, 40(%rsp)
	movl	$64, 32(%rsp)
	leaq	-72(%rbp), %rcx
	movl	$65536, %r9d                    # imm = 0x10000
	callq	"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"
	movq	-40(%rbp), %rbx
	movq	%rbx, 40(%rbp)
	leaq	(,%rbx,8), %rdi
.Ltmp0:                                 # EH_LABEL
	movq	%rdi, %rcx
	callq	"?aligned_alloc64@bench@@YAPEAX_K@Z"
	nop
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	movq	%rax, %r14
	movq	%rax, 64(%rbp)
	subq	$-128, %rdi
.Ltmp2:                                 # EH_LABEL
	movq	%rdi, %rcx
	callq	"?aligned_alloc64@bench@@YAPEAX_K@Z"
	movq	%rax, 24(%rbp)                  # 8-byte Spill
.Ltmp3:                                 # EH_LABEL
# %bb.2:
.Ltmp4:                                 # EH_LABEL
	movq	%rdi, %rcx
	callq	"?aligned_alloc64@bench@@YAPEAX_K@Z"
	movq	%rax, 32(%rbp)                  # 8-byte Spill
.Ltmp5:                                 # EH_LABEL
# %bb.3:
	movq	24(%rbp), %rax                  # 8-byte Reload
	leaq	64(%rax), %r12
	movq	%r12, 48(%rbp)
	movq	32(%rbp), %rax                  # 8-byte Reload
	leaq	64(%rax), %r15
	movq	%r15, 56(%rbp)
.Ltmp6:                                 # EH_LABEL
	movl	$12345, %r8d                    # imm = 0x3039
	movq	%r14, %rcx
	movq	%rbx, %rdx
	callq	"?init_f64@bench@@YAXPEAN_K1@Z"
	nop
.Ltmp7:                                 # EH_LABEL
# %bb.4:
.Ltmp8:                                 # EH_LABEL
	movl	$7, %r8d
	movq	%r12, %rcx
	movq	%rbx, %rdx
	callq	"?init_f64@bench@@YAXPEAN_K1@Z"
	nop
.Ltmp9:                                 # EH_LABEL
# %bb.5:
.Ltmp10:                                # EH_LABEL
	movl	$11, %r8d
	movq	%r15, %rcx
	movq	%rbx, %rdx
	callq	"?init_f64@bench@@YAXPEAN_K1@Z"
	nop
.Ltmp11:                                # EH_LABEL
# %bb.6:
	movq	g_fn(%rip), %rax
	movq	%rax, 16(%rbp)
	movq	40(%rbp), %r14
	movq	56(%rbp), %r15
	movq	48(%rbp), %r12
	movq	64(%rbp), %r13
.Ltmp12:                                # EH_LABEL
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	*%rax
	nop
.Ltmp13:                                # EH_LABEL
# %bb.7:                                # %.preheader21
	leaq	"??_C@_02GIPFHKNO@OK?$AA@"(%rip), %rbx
	testq	%r14, %r14
	je	.LBB1_14
# %bb.8:                                # %.lr.ph.preheader
	xorl	%esi, %esi
	vmovsd	__real@4008000000000000(%rip), %xmm6 # xmm6 = [3.0E+0,0.0E+0]
	vmovsd	__real@3ff0000000000000(%rip), %xmm7 # xmm7 = [1.0E+0,0.0E+0]
	vmovsd	__real@4014000000000000(%rip), %xmm8 # xmm8 = [5.0E+0,0.0E+0]
	vmovsd	__real@c000000000000000(%rip), %xmm9 # xmm9 = [-2.0E+0,0.0E+0]
	.p2align	4
.LBB1_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vmovsd	(%r13,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	%xmm6, %xmm7, %xmm1     # xmm1 = (xmm1 * xmm6) + xmm7
	vmovsd	(%r12,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	callq	"?close_enough@bench@@YA_NNN@Z"
	movb	$1, %dil
	testb	%al, %al
	je	.LBB1_13
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	vmovsd	(%r13,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	%xmm8, %xmm9, %xmm1     # xmm1 = (xmm1 * xmm8) + xmm9
	vmovsd	(%r15,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	callq	"?close_enough@bench@@YA_NNN@Z"
	testb	%al, %al
	je	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	incq	%rsi
	cmpq	%r14, %rsi
	jb	.LBB1_9
.LBB1_14:
	xorl	%edi, %edi
	jmp	.LBB1_15
.LBB1_13:
	leaq	"??_C@_04OOEBCMBF@FAIL?$AA@"(%rip), %rbx
.LBB1_15:                               # %._crit_edge
.Ltmp14:                                # EH_LABEL
	leaq	"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@"(%rip), %rcx
	movq	%rbx, %rdx
	callq	printf
	nop
.Ltmp15:                                # EH_LABEL
# %bb.16:
	movl	$1, %ebx
	testb	%dil, %dil
	jne	.LBB1_26
# %bb.17:
	movq	40(%rbp), %rbx
	leaq	(,%rbx,8), %r12
	movq	48(%rbp), %r14
	movq	%r14, %rcx
	movq	%r12, %rdx
	callq	"?hash_bytes@bench@@YA_KPEBX_K@Z"
	movq	%rax, %r13
	movq	56(%rbp), %r15
	movq	%r15, %rcx
	movq	%r12, %rdx
	callq	"?hash_bytes@bench@@YA_KPEBX_K@Z"
	xorq	%rax, %r13
.Ltmp16:                                # EH_LABEL
	leaq	"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@"(%rip), %rcx
	movq	%r13, %rdx
	callq	printf
	nop
.Ltmp17:                                # EH_LABEL
# %bb.18:
.Ltmp18:                                # EH_LABEL
	callq	"?pin_environment@bench@@YAXXZ"
	nop
.Ltmp19:                                # EH_LABEL
# %bb.19:                               # %.preheader.preheader
	xorl	%esi, %esi
	cmpl	$15, %esi
	ja	.LBB1_22
	.p2align	4
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rbp), %rcx
.Ltmp28:                                # EH_LABEL
	movq	%r14, %rdx
	movq	%r15, %r8
	movq	%rbx, %r9
	callq	*16(%rbp)
	nop
.Ltmp29:                                # EH_LABEL
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	incl	%esi
	cmpl	$15, %esi
	jbe	.LBB1_20
.LBB1_22:
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	64(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	56(%rbp), %rax
	movq	%rax, (%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, 8(%rbp)
	movl	-32(%rbp), %r14d
	movl	-28(%rbp), %r15d
	leaq	-72(%rbp), %rcx
	callq	"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"
	nop
.Ltmp20:                                # EH_LABEL
	leaq	-24(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movl	%r14d, %r8d
	movl	%r15d, %r9d
	callq	"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"
	nop
.Ltmp21:                                # EH_LABEL
# %bb.23:
	movq	64(%rbp), %rcx
.Ltmp22:                                # EH_LABEL
	callq	"?aligned_free@bench@@YAXPEAX@Z"
	nop
.Ltmp23:                                # EH_LABEL
# %bb.24:
.Ltmp24:                                # EH_LABEL
	movq	24(%rbp), %rcx                  # 8-byte Reload
	callq	"?aligned_free@bench@@YAXPEAX@Z"
	nop
.Ltmp25:                                # EH_LABEL
# %bb.25:
	xorl	%ebx, %ebx
.Ltmp26:                                # EH_LABEL
	movq	32(%rbp), %rcx                  # 8-byte Reload
	callq	"?aligned_free@bench@@YAXPEAX@Z"
	nop
.Ltmp27:                                # EH_LABEL
.LBB1_26:
	leaq	-72(%rbp), %rcx
	callq	"??1Args@bench@@QEAA@XZ"
	movl	%ebx, %eax
	vmovaps	80(%rbp), %xmm6                 # 16-byte Reload
	vmovaps	96(%rbp), %xmm7                 # 16-byte Reload
	vmovaps	112(%rbp), %xmm8                # 16-byte Reload
	vmovaps	128(%rbp), %xmm9                # 16-byte Reload
	.seh_startepilogue
	addq	$280, %rsp                      # imm = 0x118
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.seh_endepilogue
	retq
	.seh_handlerdata
	.long	$cppxdata$main@IMGREL
	.text
	.seh_endproc
	.def	"?dtor$27@?0?main@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4
"?dtor$27@?0?main@4HA":
.seh_proc "?dtor$27@?0?main@4HA"
.LBB1_27:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$120, %rsp
	.seh_stackalloc 120
	leaq	128(%rdx), %rbp
	vmovapd	%xmm9, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 48
	vmovapd	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	vmovapd	%xmm7, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 80
	vmovapd	%xmm6, 96(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 96
	.seh_endprologue
	leaq	-72(%rbp), %rcx
	callq	"??1Args@bench@@QEAA@XZ"
	vmovaps	96(%rsp), %xmm6                 # 16-byte Reload
	vmovaps	80(%rsp), %xmm7                 # 16-byte Reload
	vmovaps	64(%rsp), %xmm8                 # 16-byte Reload
	vmovaps	48(%rsp), %xmm9                 # 16-byte Reload
	.seh_startepilogue
	addq	$120, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.seh_endepilogue
	retq                                    # CLEANUPRET
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
$cppxdata$main:
	.long	429065506                       # MagicNumber
	.long	1                               # MaxState
	.long	$stateUnwindMap$main@IMGREL     # UnwindMap
	.long	0                               # NumTryBlocks
	.long	0                               # TryBlockMap
	.long	3                               # IPMapEntries
	.long	$ip2state$main@IMGREL           # IPToStateXData
	.long	200                             # UnwindHelp
	.long	0                               # ESTypeList
	.long	1                               # EHFlags
$stateUnwindMap$main:
	.long	-1                              # ToState
	.long	"?dtor$27@?0?main@4HA"@IMGREL   # Action
$ip2state$main:
	.long	.Lfunc_begin0@IMGREL            # IP
	.long	-1                              # ToState
	.long	.Ltmp0@IMGREL                   # IP
	.long	0                               # ToState
	.long	.Ltmp27@IMGREL                  # IP
	.long	-1                              # ToState
	.text
                                        # -- End function
	.def	"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"
	.globl	"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z" # -- Begin function ?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z
	.p2align	4
"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z": # @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"
.Lfunc_begin1:
.seh_proc "?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"
	.seh_handler __CxxFrameHandler3, @unwind, @except
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
	.seh_setframe %rbp, 48
	.seh_endprologue
	movq	$-2, -8(%rbp)
	movq	%r9, %r14
	movq	%r8, %rsi
	movl	%edx, %edi
	movq	%rcx, %rbx
	callq	"??0Args@bench@@QEAA@XZ"
	cmpl	$2, %edi
	jl	.LBB2_1
# %bb.2:
	movq	8(%rsi), %rdx
	jmp	.LBB2_3
.LBB2_1:
	leaq	"??_C@_07CIFAGBMG@unknown?$AA@"(%rip), %rdx
.LBB2_3:
.Ltmp30:                                # EH_LABEL
	movq	%rbx, -16(%rbp)                 # 8-byte Spill
	movq	%rbx, %rcx
	callq	"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"
	nop
.Ltmp31:                                # EH_LABEL
# %bb.4:
	movl	88(%rbp), %ebx
	cmpl	$2, %edi
	jle	.LBB2_5
# %bb.6:
	movq	16(%rsi), %rcx
.Ltmp32:                                # EH_LABEL
	xorl	%edx, %edx
	movl	$10, %r8d
	callq	_strtoui64
	nop
.Ltmp33:                                # EH_LABEL
# %bb.7:
	movq	-16(%rbp), %r14                 # 8-byte Reload
	movq	%rax, 32(%r14)
	cmpl	$3, %edi
	je	.LBB2_8
# %bb.9:
	movq	24(%rsi), %rcx
	callq	atoi
	movl	%eax, 40(%r14)
	cmpl	$5, %edi
	jb	.LBB2_11
# %bb.10:
	movq	32(%rsi), %rcx
	callq	atoi
	movl	%eax, %ebx
	jmp	.LBB2_11
.LBB2_5:                                # %.thread
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%r14, 32(%rax)
	movq	%rax, %r14
.LBB2_8:                                # %.thread11
	movl	80(%rbp), %eax
	movl	%eax, 40(%r14)
.LBB2_11:
	movl	%ebx, 44(%r14)
	movq	%r14, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	.seh_endepilogue
	retq
	.seh_handlerdata
	.long	"$cppxdata$?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"@IMGREL
	.section	.text,"xr",discard,"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"
	.seh_endproc
	.def	"?dtor$12@?0??parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4
"?dtor$12@?0??parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z@4HA":
.seh_proc "?dtor$12@?0??parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z@4HA"
.LBB2_12:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	leaq	48(%rdx), %rbp
	.seh_endprologue
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	callq	"??1Args@bench@@QEAA@XZ"
	nop
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	.seh_endepilogue
	retq                                    # CLEANUPRET
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",discard,"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"
	.seh_endproc
	.section	.xdata,"dr",associative,"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z",unique,0
	.p2align	2, 0x0
"$cppxdata$?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z":
	.long	429065506                       # MagicNumber
	.long	1                               # MaxState
	.long	"$stateUnwindMap$?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"@IMGREL # UnwindMap
	.long	0                               # NumTryBlocks
	.long	0                               # TryBlockMap
	.long	3                               # IPMapEntries
	.long	"$ip2state$?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"@IMGREL # IPToStateXData
	.long	40                              # UnwindHelp
	.long	0                               # ESTypeList
	.long	1                               # EHFlags
"$stateUnwindMap$?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z":
	.long	-1                              # ToState
	.long	"?dtor$12@?0??parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z@4HA"@IMGREL # Action
"$ip2state$?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z":
	.long	.Lfunc_begin1@IMGREL            # IP
	.long	-1                              # ToState
	.long	.Ltmp30@IMGREL                  # IP
	.long	0                               # ToState
	.long	.Ltmp33@IMGREL                  # IP
	.long	-1                              # ToState
	.section	.text,"xr",discard,"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"
                                        # -- End function
	.def	"?aligned_alloc64@bench@@YAPEAX_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?aligned_alloc64@bench@@YAPEAX_K@Z"
	.globl	"?aligned_alloc64@bench@@YAPEAX_K@Z" # -- Begin function ?aligned_alloc64@bench@@YAPEAX_K@Z
	.p2align	4
"?aligned_alloc64@bench@@YAPEAX_K@Z":   # @"?aligned_alloc64@bench@@YAPEAX_K@Z"
.seh_proc "?aligned_alloc64@bench@@YAPEAX_K@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	movl	$64, %edx
	callq	_aligned_malloc
	testq	%rax, %rax
	je	.LBB3_2
# %bb.1:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
.LBB3_2:
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	movq	%rsi, %r8
	callq	fprintf
	movl	$2, %ecx
	callq	exit
	int3
	.seh_endproc
                                        # -- End function
	.def	"?init_f64@bench@@YAXPEAN_K1@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3c00000000000000         # -- Begin function ?init_f64@bench@@YAXPEAN_K1@Z
	.section	.rdata,"dr",discard,__real@3c00000000000000
	.p2align	3, 0x0
__real@3c00000000000000:
	.quad	0x3c00000000000000              # double 1.0842021724855044E-19
	.section	.text,"xr",discard,"?init_f64@bench@@YAXPEAN_K1@Z"
	.globl	"?init_f64@bench@@YAXPEAN_K1@Z"
	.p2align	4
"?init_f64@bench@@YAXPEAN_K1@Z":        # @"?init_f64@bench@@YAXPEAN_K1@Z"
.seh_proc "?init_f64@bench@@YAXPEAN_K1@Z"
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$72, %rsp
	.seh_stackalloc 72
	vmovapd	%xmm6, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	movq	%r8, 40(%rsp)
	testq	%rdx, %rdx
	je	.LBB4_3
# %bb.1:                                # %.lr.ph.preheader
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	xorl	%r14d, %r14d
	leaq	40(%rsp), %rbx
	vmovsd	__real@3c00000000000000(%rip), %xmm6 # xmm6 = [1.0842021724855044E-19,0.0E+0]
	.p2align	4
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rcx
	callq	"?lcg@bench@@YA_KAEA_K@Z"
	vcvtsi2sd	%rax, %xmm5, %xmm0
	vmulsd	%xmm6, %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%r14,8)
	incq	%r14
	cmpq	%r14, %rsi
	jne	.LBB4_2
.LBB4_3:                                # %._crit_edge
	vmovaps	48(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?close_enough@bench@@YA_NNN@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@7fffffffffffffff7fffffffffffffff # -- Begin function ?close_enough@bench@@YA_NNN@Z
	.section	.rdata,"dr",discard,__xmm@7fffffffffffffff7fffffffffffffff
	.p2align	4, 0x0
__xmm@7fffffffffffffff7fffffffffffffff:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.globl	__real@3e112e0be826d695
	.section	.rdata,"dr",discard,__real@3e112e0be826d695
	.p2align	3, 0x0
__real@3e112e0be826d695:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.globl	__real@7fffffffffffffff
	.section	.rdata,"dr",discard,__real@7fffffffffffffff
	.p2align	3, 0x0
__real@7fffffffffffffff:
	.quad	0x7fffffffffffffff              # double NaN
	.section	.text,"xr",discard,"?close_enough@bench@@YA_NNN@Z"
	.globl	"?close_enough@bench@@YA_NNN@Z"
	.p2align	4
"?close_enough@bench@@YA_NNN@Z":        # @"?close_enough@bench@@YA_NNN@Z"
# %bb.0:
	vsubsd	%xmm1, %xmm0, %xmm2
	vmovddup	__real@7fffffffffffffff(%rip), %xmm3 # xmm3 = [NaN,NaN]
                                        # xmm3 = mem[0,0]
	vandpd	%xmm3, %xmm2, %xmm2
	vandpd	%xmm3, %xmm0, %xmm0
	vaddsd	__real@3ff0000000000000(%rip), %xmm0, %xmm0
	vandpd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	__real@3e112e0be826d695(%rip), %xmm0, %xmm0
	vucomisd	%xmm2, %xmm0
	setae	%al
	retq
                                        # -- End function
	.def	printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                          # -- Begin function printf
	.p2align	4
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%rcx, %rsi
	movq	%r9, 88(%rsp)
	leaq	72(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rcx
	movq	%rsi, %rdx
	xorl	%r8d, %r8d
	movq	%rdi, %r9
	callq	_vfprintf_l
	nop
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?hash_bytes@bench@@YA_KPEBX_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?hash_bytes@bench@@YA_KPEBX_K@Z"
	.globl	"?hash_bytes@bench@@YA_KPEBX_K@Z" # -- Begin function ?hash_bytes@bench@@YA_KPEBX_K@Z
	.p2align	4
"?hash_bytes@bench@@YA_KPEBX_K@Z":      # @"?hash_bytes@bench@@YA_KPEBX_K@Z"
# %bb.0:
	movabsq	$1469598103934665603, %rax      # imm = 0x14650FB0739D0383
	testq	%rdx, %rdx
	je	.LBB7_8
# %bb.1:                                # %.lr.ph.preheader
	movabsq	$1099511628211, %r8             # imm = 0x100000001B3
	movl	%edx, %r9d
	andl	$7, %r9d
	cmpq	$8, %rdx
	jae	.LBB7_3
# %bb.2:
	xorl	%r10d, %r10d
	jmp	.LBB7_6
.LBB7_3:                                # %.lr.ph.preheader.new
	andq	$-8, %rdx
	xorl	%r10d, %r10d
	.p2align	4
.LBB7_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%r10), %r11d
	xorq	%rax, %r11
	imulq	%r8, %r11
	movzbl	1(%rcx,%r10), %eax
	xorq	%r11, %rax
	imulq	%r8, %rax
	movzbl	2(%rcx,%r10), %r11d
	xorq	%rax, %r11
	imulq	%r8, %r11
	movzbl	3(%rcx,%r10), %eax
	xorq	%r11, %rax
	imulq	%r8, %rax
	movzbl	4(%rcx,%r10), %r11d
	xorq	%rax, %r11
	imulq	%r8, %r11
	movzbl	5(%rcx,%r10), %eax
	xorq	%r11, %rax
	imulq	%r8, %rax
	movzbl	6(%rcx,%r10), %r11d
	xorq	%rax, %r11
	imulq	%r8, %r11
	movzbl	7(%rcx,%r10), %eax
	xorq	%r11, %rax
	imulq	%r8, %rax
	addq	$8, %r10
	cmpq	%r10, %rdx
	jne	.LBB7_4
# %bb.5:                                # %._crit_edge.loopexit.unr-lcssa
	testq	%r9, %r9
	je	.LBB7_8
.LBB7_6:                                # %.lr.ph.epil.preheader
	addq	%r10, %rcx
	xorl	%edx, %edx
	.p2align	4
.LBB7_7:                                # %.lr.ph.epil
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %r10d
	xorq	%r10, %rax
	imulq	%r8, %rax
	incq	%rdx
	cmpq	%rdx, %r9
	jne	.LBB7_7
.LBB7_8:                                # %._crit_edge
	retq
                                        # -- End function
	.def	"?pin_environment@bench@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?pin_environment@bench@@YAXXZ"
	.globl	"?pin_environment@bench@@YAXXZ" # -- Begin function ?pin_environment@bench@@YAXXZ
	.p2align	4
"?pin_environment@bench@@YAXXZ":        # @"?pin_environment@bench@@YAXXZ"
.seh_proc "?pin_environment@bench@@YAXXZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	callq	*__imp_GetCurrentProcess(%rip)
	movl	$4, %edx
	movq	%rax, %rcx
	callq	*__imp_SetProcessAffinityMask(%rip)
	testl	%eax, %eax
	jne	.LBB8_2
# %bb.1:
	callq	*__imp_GetLastError(%rip)
	movl	%eax, %esi
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@"(%rip), %rdx
	movq	%rax, %rcx
	movl	%esi, %r8d
	callq	fprintf
.LBB8_2:
	callq	*__imp_GetCurrentProcess(%rip)
	movq	%rax, %rcx
	movl	$128, %edx
	callq	*__imp_SetPriorityClass(%rip)
	testl	%eax, %eax
	je	.LBB8_4
# %bb.3:
	movl	$1, %ecx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	rex64 jmpq	*__imp_timeBeginPeriod(%rip) # TAILCALL
.LBB8_4:
	callq	*__imp_GetLastError(%rip)
	movl	%eax, %esi
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@"(%rip), %rdx
	movq	%rax, %rcx
	movl	%esi, %r8d
	callq	fprintf
	movl	$1, %ecx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	rex64 jmpq	*__imp_timeBeginPeriod(%rip) # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z";
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function ??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z
"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z": # @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"
.seh_proc "??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$120, %rsp
	.seh_stackalloc 120
	vmovapd	%xmm7, 96(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 96
	vmovapd	%xmm6, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 80
	.seh_endprologue
	movl	%r9d, %ebp
	movl	%r8d, %r12d
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	"?qpc_ns_per_tick@bench@@YANXZ"
	testl	%ebp, %ebp
	jle	.LBB9_8
# %bb.1:                                # %.lr.ph4
	vmovapd	%xmm0, %xmm6
	vcvtsi2sd	%r12d, %xmm5, %xmm7
	testl	%r12d, %r12d
	jle	.LBB9_2
# %bb.4:                                # %.lr.ph.us.preheader
	movq	224(%rsp), %r14
	xorl	%r15d, %r15d
	movq	__imp_QueryPerformanceCounter(%rip), %rdi
	leaq	48(%rsp), %r13
	leaq	"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"(%rip), %rsi
	.p2align	4
.LBB9_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	leaq	56(%rsp), %rcx
	callq	*%rdi
	movl	%r12d, %ebx
	.p2align	4
.LBB9_6:                                #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rcx
	callq	"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"
	decl	%ebx
	jne	.LBB9_6
# %bb.7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	%r13, %rcx
	callq	*%rdi
	movq	48(%rsp), %rax
	subq	56(%rsp), %rax
	vcvtsi2sd	%rax, %xmm5, %xmm0
	vmulsd	%xmm0, %xmm6, %xmm0
	vdivsd	%xmm7, %xmm0, %xmm2
	movq	%rsi, %rcx
	movl	%r15d, %edx
	vmovq	%xmm2, %r8
	callq	printf
	incl	%r15d
	cmpl	%ebp, %r15d
	jne	.LBB9_5
	jmp	.LBB9_8
.LBB9_2:                                # %.lr.ph4.split.preheader
	xorl	%esi, %esi
	movq	__imp_QueryPerformanceCounter(%rip), %rdi
	leaq	56(%rsp), %r14
	leaq	48(%rsp), %r15
	leaq	"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"(%rip), %rbx
	.p2align	4
.LBB9_3:                                # %.lr.ph4.split
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rcx
	callq	*%rdi
	movq	%r15, %rcx
	callq	*%rdi
	movq	48(%rsp), %rax
	subq	56(%rsp), %rax
	vcvtsi2sd	%rax, %xmm5, %xmm0
	vmulsd	%xmm0, %xmm6, %xmm0
	vdivsd	%xmm7, %xmm0, %xmm2
	movq	%rbx, %rcx
	movl	%esi, %edx
	vmovq	%xmm2, %r8
	callq	printf
	incl	%esi
	cmpl	%esi, %ebp
	jne	.LBB9_3
.LBB9_8:                                # %._crit_edge5
	movl	%ebp, 40(%rsp)
	movl	%r12d, 32(%rsp)
	leaq	"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@"(%rip), %rcx
	leaq	"??_C@_0BB@BGHEOPGK@read_read_offset?$AA@"(%rip), %rdx
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	72(%rsp), %r9                   # 8-byte Reload
	callq	printf
	vmovaps	80(%rsp), %xmm6                 # 16-byte Reload
	vmovaps	96(%rsp), %xmm7                 # 16-byte Reload
	.seh_startepilogue
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"
	.globl	"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" # -- Begin function ?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ
	.p2align	4
"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ": # @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"
# %bb.0:
	jmp	"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" # TAILCALL
                                        # -- End function
	.def	"?aligned_free@bench@@YAXPEAX@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?aligned_free@bench@@YAXPEAX@Z"
	.globl	"?aligned_free@bench@@YAXPEAX@Z" # -- Begin function ?aligned_free@bench@@YAXPEAX@Z
	.p2align	4
"?aligned_free@bench@@YAXPEAX@Z":       # @"?aligned_free@bench@@YAXPEAX@Z"
# %bb.0:
	jmp	_aligned_free                   # TAILCALL
                                        # -- End function
	.def	"??1Args@bench@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1Args@bench@@QEAA@XZ"
	.globl	"??1Args@bench@@QEAA@XZ"        # -- Begin function ??1Args@bench@@QEAA@XZ
	.p2align	4
"??1Args@bench@@QEAA@XZ":               # @"??1Args@bench@@QEAA@XZ"
# %bb.0:
	jmp	"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" # TAILCALL
                                        # -- End function
	.def	"??0Args@bench@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0Args@bench@@QEAA@XZ"
	.globl	"??0Args@bench@@QEAA@XZ"        # -- Begin function ??0Args@bench@@QEAA@XZ
	.p2align	4
"??0Args@bench@@QEAA@XZ":               # @"??0Args@bench@@QEAA@XZ"
# %bb.0:
	jmp	"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" # TAILCALL
                                        # -- End function
	.def	"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"
	.globl	"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z" # -- Begin function ??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z
	.p2align	4
"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z": # @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"
# %bb.0:
	jmp	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" # TAILCALL
                                        # -- End function
	.def	"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"
	.globl	"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" # -- Begin function ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
	.p2align	4
"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ": # @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"
.seh_proc "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"
	movq	%rsi, %rcx
	callq	"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"
	.globl	"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" # -- Begin function ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
	.p2align	4
"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z": # @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"
.seh_proc "??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"??0?$allocator@D@std@@QEAA@XZ"
	movq	%rsi, %rcx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	jmp	"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
	.globl	"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" # -- Begin function ?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ
	.p2align	4
"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ": # @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
.seh_proc "?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"
	movq	%rax, %rcx
	callq	"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"
	leaq	47(%rsp), %rdx
	movq	%rsi, %rcx
	callq	"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"
	movq	$0, 16(%rsi)
	movq	$15, 24(%rsi)
	movq	%rsi, %rcx
	callq	"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"
	movb	$0, 46(%rsp)
	leaq	46(%rsp), %rdx
	movq	%rsi, %rcx
	callq	"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"
	nop
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??0?$allocator@D@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0?$allocator@D@std@@QEAA@XZ"
	.globl	"??0?$allocator@D@std@@QEAA@XZ" # -- Begin function ??0?$allocator@D@std@@QEAA@XZ
	.p2align	4
"??0?$allocator@D@std@@QEAA@XZ":        # @"??0?$allocator@D@std@@QEAA@XZ"
# %bb.0:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
	.globl	"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" # -- Begin function ??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
	.p2align	4
"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ": # @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
.seh_proc "??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
	.globl	"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" # -- Begin function ??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
	.p2align	4
"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ": # @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
# %bb.0:
	movq	%rcx, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rcx)
	retq
                                        # -- End function
	.def	"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"
	.globl	"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" # -- Begin function ?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z
	.p2align	4
"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z": # @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"
# %bb.0:
	retq
                                        # -- End function
	.def	"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"
	.globl	"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z" # -- Begin function ??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z
	.p2align	4
"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z": # @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"
# %bb.0:
	retq
                                        # -- End function
	.def	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"
	.globl	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" # -- Begin function ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
	.p2align	4
"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ": # @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"
# %bb.0:
	jmp	"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" # TAILCALL
                                        # -- End function
	.def	"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"
	.globl	"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" # -- Begin function ?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
	.p2align	4
"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ": # @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"
# %bb.0:
	retq
                                        # -- End function
	.def	"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"
	.globl	"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" # -- Begin function ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
	.p2align	4
"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z": # @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"
# %bb.0:
	movzbl	(%rdx), %eax
	movb	%al, (%rcx)
	retq
                                        # -- End function
	.def	"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"
	.globl	"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" # -- Begin function ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ
	.p2align	4
"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ": # @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"
# %bb.0:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"
	.globl	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" # -- Begin function ?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z
	.p2align	4
"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z": # @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"
.seh_proc "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	callq	"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"
	movq	%rax, %rcx
	callq	"??$_Convert_size@_K_K@std@@YA_K_K@Z"
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	movq	%rax, %r8
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z" # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"
	.globl	"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z" # -- Begin function ??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z
	.p2align	4
"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z": # @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"
.seh_proc "??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rdx, %rdi
	cmpq	24(%rcx), %r8
	jbe	.LBB28_1
# %bb.2:
	movq	%rsi, %rdx
	movq	%rdi, %r9
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	jmp	"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z" # TAILCALL
.LBB28_1:
	movq	%rcx, %rbx
	callq	"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"
	movq	%rax, %r14
	movq	%rsi, 16(%rbx)
	movq	%rax, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	callq	"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"
	movb	$0, 39(%rsp)
	addq	%rsi, %r14
	leaq	39(%rsp), %rdx
	movq	%r14, %rcx
	callq	"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"
	movq	%rbx, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$_Convert_size@_K_K@std@@YA_K_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Convert_size@_K_K@std@@YA_K_K@Z"
	.globl	"??$_Convert_size@_K_K@std@@YA_K_K@Z" # -- Begin function ??$_Convert_size@_K_K@std@@YA_K_K@Z
	.p2align	4
"??$_Convert_size@_K_K@std@@YA_K_K@Z":  # @"??$_Convert_size@_K_K@std@@YA_K_K@Z"
# %bb.0:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"
	.globl	"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" # -- Begin function ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
	.p2align	4
"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z": # @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"
# %bb.0:
	jmp	strlen                          # TAILCALL
                                        # -- End function
	.def	"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"
	.globl	"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" # -- Begin function ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ
	.p2align	4
"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ": # @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"
.seh_proc "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"
	testb	%al, %al
	je	.LBB31_1
# %bb.2:
	movq	(%rsi), %rcx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	jmp	"??$_Unfancy@D@std@@YAPEADPEAD@Z" # TAILCALL
.LBB31_1:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"
	.globl	"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z" # -- Begin function ??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z
	.p2align	4
"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z": # @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"
# %bb.0:
	jmp	"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" # TAILCALL
                                        # -- End function
	.def	"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"
	.globl	"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z" # -- Begin function ??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z
	.p2align	4
"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z": # @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"
.seh_proc "??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%r9, %rbx
	movq	%rdx, %r14
	movq	%rcx, %rsi
	callq	"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"
	cmpq	%rax, %r14
	ja	.LBB33_5
# %bb.1:
	movq	24(%rsi), %rdi
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"
	movq	%rax, 40(%rsp)
	movq	%rsi, %rcx
	callq	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"
	movq	%rax, %r15
	leaq	40(%rsp), %rdx
	movq	%rax, %rcx
	callq	"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"
	movq	%rax, %r12
	movq	%rax, 48(%rsp)
	movq	%rsi, %rcx
	callq	"?_Orphan_all@_Container_base0@std@@QEAAXXZ"
	movq	%r14, 16(%rsi)
	movq	40(%rsp), %rax
	movq	%rax, 24(%rsi)
	movq	%r12, %rcx
	callq	"??$_Unfancy@D@std@@YAPEADPEAD@Z"
	movq	%rax, %rcx
	movq	%r14, %rdx
	movq	%rbx, %r8
	callq	"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"
	cmpq	$16, %rdi
	jb	.LBB33_3
# %bb.2:
	movq	(%rsi), %rdx
	movq	%r15, %rcx
	movq	%rdi, %r8
	callq	"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"
	movq	%r12, (%rsi)
	jmp	.LBB33_4
.LBB33_3:
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	callq	"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"
.LBB33_4:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB33_5:
	callq	"?_Xlen_string@std@@YAXXZ"
	int3
	.seh_endproc
                                        # -- End function
	.def	"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"
	.globl	"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" # -- Begin function ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
	.p2align	4
"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ": # @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"
# %bb.0:
	cmpq	$16, 24(%rcx)
	setae	%al
	retq
                                        # -- End function
	.def	"??$_Unfancy@D@std@@YAPEADPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Unfancy@D@std@@YAPEADPEAD@Z"
	.globl	"??$_Unfancy@D@std@@YAPEADPEAD@Z" # -- Begin function ??$_Unfancy@D@std@@YAPEADPEAD@Z
	.p2align	4
"??$_Unfancy@D@std@@YAPEADPEAD@Z":      # @"??$_Unfancy@D@std@@YAPEADPEAD@Z"
# %bb.0:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"
	.globl	"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" # -- Begin function ?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
	.p2align	4
"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z": # @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"
# %bb.0:
	jmp	memmove                         # TAILCALL
                                        # -- End function
	.def	"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"
	.globl	"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" # -- Begin function ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
	.p2align	4
"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ": # @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"
.seh_proc "?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	callq	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"
	movq	%rax, %rcx
	callq	"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"
	movq	%rax, 64(%rsp)
	movq	$16, 56(%rsp)
	leaq	64(%rsp), %rcx
	leaq	56(%rsp), %rdx
	callq	"??$max@_K@std@@YAAEB_KAEB_K0@Z"
	movq	(%rax), %rax
	decq	%rax
	movq	%rax, 48(%rsp)
	callq	"??$_Max_limit@_J@std@@YA_JXZ"
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	"??$min@_K@std@@YAAEB_KAEB_K0@Z"
	movq	(%rax), %rax
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?_Xlen_string@std@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Xlen_string@std@@YAXXZ"
	.globl	"?_Xlen_string@std@@YAXXZ"      # -- Begin function ?_Xlen_string@std@@YAXXZ
	.p2align	4
"?_Xlen_string@std@@YAXXZ":             # @"?_Xlen_string@std@@YAXXZ"
.seh_proc "?_Xlen_string@std@@YAXXZ"
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"(%rip), %rcx
	callq	"?_Xlength_error@std@@YAXPEBD@Z"
	int3
	.seh_endproc
                                        # -- End function
	.def	"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"
	.globl	"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" # -- Begin function ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z
	.p2align	4
"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z": # @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"
.seh_proc "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	callq	"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"
	movq	24(%rdi), %rdx
	movq	%rsi, %rcx
	movq	%rax, %r8
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"
	.globl	"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z" # -- Begin function ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
	.p2align	4
"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z": # @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"
.seh_proc "??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rsi
	incq	(%rdx)
	callq	"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"
	decq	(%rsi)
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?_Orphan_all@_Container_base0@std@@QEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Orphan_all@_Container_base0@std@@QEAAXXZ"
	.globl	"?_Orphan_all@_Container_base0@std@@QEAAXXZ" # -- Begin function ?_Orphan_all@_Container_base0@std@@QEAAXXZ
	.p2align	4
"?_Orphan_all@_Container_base0@std@@QEAAXXZ": # @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"
# %bb.0:
	retq
                                        # -- End function
	.def	"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"
	.globl	"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z" # -- Begin function ??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z
	.p2align	4
"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z": # @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"
.seh_proc "??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	movq	%r8, %rdx
	movq	%rsi, %r8
	callq	"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"
	movb	$0, 39(%rsp)
	addq	%rsi, %rdi
	leaq	39(%rsp), %rdx
	movq	%rdi, %rcx
	callq	"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"
	nop
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"
	.globl	"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z" # -- Begin function ?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
	.p2align	4
"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z": # @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"
# %bb.0:
	incq	%r8
	jmp	"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" # TAILCALL
                                        # -- End function
	.def	"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"
	.globl	"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" # -- Begin function ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
	.p2align	4
"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z": # @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"
# %bb.0:
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	retq
                                        # -- End function
	.def	"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"
	.globl	"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" # -- Begin function ?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z
	.p2align	4
"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z": # @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"
# %bb.0:
	movq	$-1, %rax
	retq
                                        # -- End function
	.def	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"
	.globl	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" # -- Begin function ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ
	.p2align	4
"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ": # @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"
# %bb.0:
	jmp	"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" # TAILCALL
                                        # -- End function
	.def	"??$max@_K@std@@YAAEB_KAEB_K0@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$max@_K@std@@YAAEB_KAEB_K0@Z"
	.globl	"??$max@_K@std@@YAAEB_KAEB_K0@Z" # -- Begin function ??$max@_K@std@@YAAEB_KAEB_K0@Z
	.p2align	4
"??$max@_K@std@@YAAEB_KAEB_K0@Z":       # @"??$max@_K@std@@YAAEB_KAEB_K0@Z"
# %bb.0:
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	cmpq	(%rdx), %rcx
	cmovbq	%rdx, %rax
	retq
                                        # -- End function
	.def	"??$min@_K@std@@YAAEB_KAEB_K0@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$min@_K@std@@YAAEB_KAEB_K0@Z"
	.globl	"??$min@_K@std@@YAAEB_KAEB_K0@Z" # -- Begin function ??$min@_K@std@@YAAEB_KAEB_K0@Z
	.p2align	4
"??$min@_K@std@@YAAEB_KAEB_K0@Z":       # @"??$min@_K@std@@YAAEB_KAEB_K0@Z"
# %bb.0:
	movq	%rcx, %rax
	movq	(%rdx), %rcx
	cmpq	(%rax), %rcx
	cmovbq	%rdx, %rax
	retq
                                        # -- End function
	.def	"??$_Max_limit@_J@std@@YA_JXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Max_limit@_J@std@@YA_JXZ"
	.globl	"??$_Max_limit@_J@std@@YA_JXZ"  # -- Begin function ??$_Max_limit@_J@std@@YA_JXZ
	.p2align	4
"??$_Max_limit@_J@std@@YA_JXZ":         # @"??$_Max_limit@_J@std@@YA_JXZ"
# %bb.0:
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	retq
                                        # -- End function
	.def	"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"
	.globl	"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" # -- Begin function ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ
	.p2align	4
"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ": # @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"
# %bb.0:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"
	.globl	"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" # -- Begin function ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
	.p2align	4
"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z": # @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"
.seh_proc "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%r8, %rax
	orq	$15, %rcx
	movq	%rcx, 48(%rsp)
	cmpq	%r8, %rcx
	ja	.LBB51_3
# %bb.1:
	movq	%rdx, %rcx
	shrq	%rcx
	movq	%rax, %r8
	subq	%rcx, %r8
	cmpq	%r8, %rdx
	ja	.LBB51_3
# %bb.2:
	addq	%rdx, %rcx
	movq	%rcx, 40(%rsp)
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %rdx
	callq	"??$max@_K@std@@YAAEB_KAEB_K0@Z"
	movq	(%rax), %rax
.LBB51_3:
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"
	.globl	"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z" # -- Begin function ??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z
	.p2align	4
"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z": # @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"
# %bb.0:
	movq	(%rdx), %rdx
	jmp	"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" # TAILCALL
                                        # -- End function
	.def	"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"
	.globl	"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" # -- Begin function ?allocate@?$allocator@D@std@@QEAAPEAD_K@Z
	.p2align	4
"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z": # @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"
.seh_proc "?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rcx
	callq	"??$_Get_size_of_n@$00@std@@YA_K_K@Z"
	movq	%rax, %rcx
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	jmp	"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"
	.globl	"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" # -- Begin function ??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
	.p2align	4
"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z": # @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"
# %bb.0:
	testq	%rcx, %rcx
	je	.LBB54_3
# %bb.1:
	cmpq	$4096, %rcx                     # imm = 0x1000
	jae	"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" # TAILCALL
# %bb.2:
	jmp	"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" # TAILCALL
.LBB54_3:
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	"??$_Get_size_of_n@$00@std@@YA_K_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Get_size_of_n@$00@std@@YA_K_K@Z"
	.globl	"??$_Get_size_of_n@$00@std@@YA_K_K@Z" # -- Begin function ??$_Get_size_of_n@$00@std@@YA_K_K@Z
	.p2align	4
"??$_Get_size_of_n@$00@std@@YA_K_K@Z":  # @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"
# %bb.0:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"
	.globl	"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" # -- Begin function ??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
	.p2align	4
"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z": # @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"
.seh_proc "??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	cmpq	$-39, %rcx
	jae	.LBB56_3
# %bb.1:
	addq	$39, %rcx
	callq	"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"
	testq	%rax, %rax
	je	.LBB56_4
# %bb.2:
	movq	%rax, %rcx
	addq	$39, %rax
	andq	$-32, %rax
	movq	%rcx, -8(%rax)
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB56_3:
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
.LBB56_4:
	ud2
	.seh_endproc
                                        # -- End function
	.def	"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"
	.globl	"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" # -- Begin function ?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z
	.p2align	4
"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z": # @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"
# %bb.0:
	jmp	"??2@YAPEAX_K@Z"                # TAILCALL
                                        # -- End function
	.def	"?_Throw_bad_array_new_length@std@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Throw_bad_array_new_length@std@@YAXXZ"
	.globl	"?_Throw_bad_array_new_length@std@@YAXXZ" # -- Begin function ?_Throw_bad_array_new_length@std@@YAXXZ
	.p2align	4
"?_Throw_bad_array_new_length@std@@YAXXZ": # @"?_Throw_bad_array_new_length@std@@YAXXZ"
.seh_proc "?_Throw_bad_array_new_length@std@@YAXXZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	leaq	40(%rsp), %rsi
	movq	%rsi, %rcx
	callq	"??0bad_array_new_length@std@@QEAA@XZ"
	leaq	"_TI3?AVbad_array_new_length@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc
                                        # -- End function
	.def	"??0bad_array_new_length@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_array_new_length@std@@QEAA@XZ"
	.globl	"??0bad_array_new_length@std@@QEAA@XZ" # -- Begin function ??0bad_array_new_length@std@@QEAA@XZ
	.p2align	4
"??0bad_array_new_length@std@@QEAA@XZ": # @"??0bad_array_new_length@std@@QEAA@XZ"
.seh_proc "??0bad_array_new_length@std@@QEAA@XZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"(%rip), %rdx
	callq	"??0bad_alloc@std@@AEAA@QEBD@Z"
	leaq	"??_7bad_array_new_length@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
	.globl	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" # -- Begin function ??0bad_array_new_length@std@@QEAA@AEBV01@@Z
	.p2align	4
"??0bad_array_new_length@std@@QEAA@AEBV01@@Z": # @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
.seh_proc "??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"??0bad_alloc@std@@QEAA@AEBV01@@Z"
	leaq	"??_7bad_array_new_length@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??0bad_alloc@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_alloc@std@@QEAA@AEBV01@@Z"
	.globl	"??0bad_alloc@std@@QEAA@AEBV01@@Z" # -- Begin function ??0bad_alloc@std@@QEAA@AEBV01@@Z
	.p2align	4
"??0bad_alloc@std@@QEAA@AEBV01@@Z":     # @"??0bad_alloc@std@@QEAA@AEBV01@@Z"
.seh_proc "??0bad_alloc@std@@QEAA@AEBV01@@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"??0exception@std@@QEAA@AEBV01@@Z"
	leaq	"??_7bad_alloc@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??0exception@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0exception@std@@QEAA@AEBV01@@Z"
	.globl	"??0exception@std@@QEAA@AEBV01@@Z" # -- Begin function ??0exception@std@@QEAA@AEBV01@@Z
	.p2align	4
"??0exception@std@@QEAA@AEBV01@@Z":     # @"??0exception@std@@QEAA@AEBV01@@Z"
.Lfunc_begin2:
.seh_proc "??0exception@std@@QEAA@AEBV01@@Z"
	.seh_handler __CxxFrameHandler3, @unwind, @except
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	32(%rsp), %rbp
	.seh_setframe %rbp, 32
	.seh_endprologue
	movq	$-2, (%rbp)
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
.Ltmp34:                                # EH_LABEL
	movq	%rax, %rdx
	callq	__std_exception_copy
	nop
.Ltmp35:                                # EH_LABEL
# %bb.1:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	.seh_endepilogue
	retq
	.seh_handlerdata
	.long	"$cppxdata$??0exception@std@@QEAA@AEBV01@@Z"@IMGREL
	.section	.text,"xr",discard,"??0exception@std@@QEAA@AEBV01@@Z"
	.seh_endproc
	.def	"?dtor$2@?0???0exception@std@@QEAA@AEBV01@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4
"?dtor$2@?0???0exception@std@@QEAA@AEBV01@@Z@4HA":
.seh_proc "?dtor$2@?0???0exception@std@@QEAA@AEBV01@@Z@4HA"
.LBB62_2:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	32(%rdx), %rbp
	.seh_endprologue
	callq	__std_terminate
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text,"xr",discard,"??0exception@std@@QEAA@AEBV01@@Z"
	.seh_endproc
	.section	.xdata,"dr",associative,"??0exception@std@@QEAA@AEBV01@@Z",unique,1
	.p2align	2, 0x0
"$cppxdata$??0exception@std@@QEAA@AEBV01@@Z":
	.long	429065506                       # MagicNumber
	.long	1                               # MaxState
	.long	"$stateUnwindMap$??0exception@std@@QEAA@AEBV01@@Z"@IMGREL # UnwindMap
	.long	0                               # NumTryBlocks
	.long	0                               # TryBlockMap
	.long	3                               # IPMapEntries
	.long	"$ip2state$??0exception@std@@QEAA@AEBV01@@Z"@IMGREL # IPToStateXData
	.long	32                              # UnwindHelp
	.long	0                               # ESTypeList
	.long	1                               # EHFlags
"$stateUnwindMap$??0exception@std@@QEAA@AEBV01@@Z":
	.long	-1                              # ToState
	.long	"?dtor$2@?0???0exception@std@@QEAA@AEBV01@@Z@4HA"@IMGREL # Action
"$ip2state$??0exception@std@@QEAA@AEBV01@@Z":
	.long	.Lfunc_begin2@IMGREL            # IP
	.long	-1                              # ToState
	.long	.Ltmp34@IMGREL                  # IP
	.long	0                               # ToState
	.long	.Ltmp35@IMGREL                  # IP
	.long	-1                              # ToState
	.section	.text,"xr",discard,"??0exception@std@@QEAA@AEBV01@@Z"
                                        # -- End function
	.def	"??1bad_array_new_length@std@@UEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1bad_array_new_length@std@@UEAA@XZ"
	.globl	"??1bad_array_new_length@std@@UEAA@XZ" # -- Begin function ??1bad_array_new_length@std@@UEAA@XZ
	.p2align	4
"??1bad_array_new_length@std@@UEAA@XZ": # @"??1bad_array_new_length@std@@UEAA@XZ"
# %bb.0:
	jmp	"??1bad_alloc@std@@UEAA@XZ"     # TAILCALL
                                        # -- End function
	.def	"??0bad_alloc@std@@AEAA@QEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_alloc@std@@AEAA@QEBD@Z"
	.globl	"??0bad_alloc@std@@AEAA@QEBD@Z" # -- Begin function ??0bad_alloc@std@@AEAA@QEBD@Z
	.p2align	4
"??0bad_alloc@std@@AEAA@QEBD@Z":        # @"??0bad_alloc@std@@AEAA@QEBD@Z"
.seh_proc "??0bad_alloc@std@@AEAA@QEBD@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	movl	$1, %r8d
	callq	"??0exception@std@@QEAA@QEBDH@Z"
	leaq	"??_7bad_alloc@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?what@exception@std@@UEBAPEBDXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?what@exception@std@@UEBAPEBDXZ"
	.globl	"?what@exception@std@@UEBAPEBDXZ" # -- Begin function ?what@exception@std@@UEBAPEBDXZ
	.p2align	4
"?what@exception@std@@UEBAPEBDXZ":      # @"?what@exception@std@@UEBAPEBDXZ"
# %bb.0:
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	leaq	"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"(%rip), %rax
	cmovneq	%rcx, %rax
	retq
                                        # -- End function
	.def	"??0exception@std@@QEAA@QEBDH@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0exception@std@@QEAA@QEBDH@Z"
	.globl	"??0exception@std@@QEAA@QEBDH@Z" # -- Begin function ??0exception@std@@QEAA@QEBDH@Z
	.p2align	4
"??0exception@std@@QEAA@QEBDH@Z":       # @"??0exception@std@@QEAA@QEBDH@Z"
# %bb.0:
	movq	%rcx, %rax
	leaq	"??_7exception@std@@6B@"(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$0, 16(%rax)
	movq	%rdx, 8(%rax)
	retq
                                        # -- End function
	.def	"??_Gexception@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gexception@std@@UEAAPEAXI@Z"
	.globl	"??_Gexception@std@@UEAAPEAXI@Z" # -- Begin function ??_Gexception@std@@UEAAPEAXI@Z
	.p2align	4
"??_Gexception@std@@UEAAPEAXI@Z":       # @"??_Gexception@std@@UEAAPEAXI@Z"
.seh_proc "??_Gexception@std@@UEAAPEAXI@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	callq	"??1exception@std@@UEAA@XZ"
	testb	$1, %dil
	je	.LBB67_2
# %bb.1:
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB67_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??1exception@std@@UEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1exception@std@@UEAA@XZ"
	.globl	"??1exception@std@@UEAA@XZ"     # -- Begin function ??1exception@std@@UEAA@XZ
	.p2align	4
"??1exception@std@@UEAA@XZ":            # @"??1exception@std@@UEAA@XZ"
.Lfunc_begin3:
.seh_proc "??1exception@std@@UEAA@XZ"
	.seh_handler __CxxFrameHandler3, @unwind, @except
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$48, %rsp
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
	.seh_setframe %rbp, 48
	.seh_endprologue
	movq	$-2, -8(%rbp)
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
.Ltmp36:                                # EH_LABEL
	callq	__std_exception_destroy
	nop
.Ltmp37:                                # EH_LABEL
# %bb.1:
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbp
	.seh_endepilogue
	retq
	.seh_handlerdata
	.long	"$cppxdata$??1exception@std@@UEAA@XZ"@IMGREL
	.section	.text,"xr",discard,"??1exception@std@@UEAA@XZ"
	.seh_endproc
	.def	"?dtor$2@?0???1exception@std@@UEAA@XZ@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4
"?dtor$2@?0???1exception@std@@UEAA@XZ@4HA":
.seh_proc "?dtor$2@?0???1exception@std@@UEAA@XZ@4HA"
.LBB68_2:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$32, %rsp
	.seh_stackalloc 32
	leaq	48(%rdx), %rbp
	.seh_endprologue
	callq	__std_terminate
	int3
.Lfunc_end3:
	.seh_handlerdata
	.section	.text,"xr",discard,"??1exception@std@@UEAA@XZ"
	.seh_endproc
	.section	.xdata,"dr",associative,"??1exception@std@@UEAA@XZ",unique,2
	.p2align	2, 0x0
"$cppxdata$??1exception@std@@UEAA@XZ":
	.long	429065506                       # MagicNumber
	.long	1                               # MaxState
	.long	"$stateUnwindMap$??1exception@std@@UEAA@XZ"@IMGREL # UnwindMap
	.long	0                               # NumTryBlocks
	.long	0                               # TryBlockMap
	.long	3                               # IPMapEntries
	.long	"$ip2state$??1exception@std@@UEAA@XZ"@IMGREL # IPToStateXData
	.long	40                              # UnwindHelp
	.long	0                               # ESTypeList
	.long	1                               # EHFlags
"$stateUnwindMap$??1exception@std@@UEAA@XZ":
	.long	-1                              # ToState
	.long	"?dtor$2@?0???1exception@std@@UEAA@XZ@4HA"@IMGREL # Action
"$ip2state$??1exception@std@@UEAA@XZ":
	.long	.Lfunc_begin3@IMGREL            # IP
	.long	-1                              # ToState
	.long	.Ltmp36@IMGREL                  # IP
	.long	0                               # ToState
	.long	.Ltmp37@IMGREL                  # IP
	.long	-1                              # ToState
	.section	.text,"xr",discard,"??1exception@std@@UEAA@XZ"
                                        # -- End function
	.def	"??_Gbad_alloc@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_alloc@std@@UEAAPEAXI@Z"
	.globl	"??_Gbad_alloc@std@@UEAAPEAXI@Z" # -- Begin function ??_Gbad_alloc@std@@UEAAPEAXI@Z
	.p2align	4
"??_Gbad_alloc@std@@UEAAPEAXI@Z":       # @"??_Gbad_alloc@std@@UEAAPEAXI@Z"
.seh_proc "??_Gbad_alloc@std@@UEAAPEAXI@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	callq	"??1bad_alloc@std@@UEAA@XZ"
	testb	$1, %dil
	je	.LBB69_2
# %bb.1:
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB69_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??1bad_alloc@std@@UEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1bad_alloc@std@@UEAA@XZ"
	.globl	"??1bad_alloc@std@@UEAA@XZ"     # -- Begin function ??1bad_alloc@std@@UEAA@XZ
	.p2align	4
"??1bad_alloc@std@@UEAA@XZ":            # @"??1bad_alloc@std@@UEAA@XZ"
# %bb.0:
	jmp	"??1exception@std@@UEAA@XZ"     # TAILCALL
                                        # -- End function
	.def	"??_Gbad_array_new_length@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	.globl	"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" # -- Begin function ??_Gbad_array_new_length@std@@UEAAPEAXI@Z
	.p2align	4
"??_Gbad_array_new_length@std@@UEAAPEAXI@Z": # @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
.seh_proc "??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	callq	"??1bad_array_new_length@std@@UEAA@XZ"
	testb	$1, %dil
	je	.LBB71_2
# %bb.1:
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB71_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"
	.globl	"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z" # -- Begin function ??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z
	.p2align	4
"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z": # @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"
# %bb.0:
	jmp	"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" # TAILCALL
                                        # -- End function
	.def	"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"
	.globl	"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" # -- Begin function ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
	.p2align	4
"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z": # @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"
# %bb.0:
	jmp	memcpy                          # TAILCALL
                                        # -- End function
	.def	"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"
	.globl	"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" # -- Begin function ?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z
	.p2align	4
"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z": # @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"
# %bb.0:
	movq	%rdx, %rcx
	movq	%r8, %rdx
	jmp	"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z" # TAILCALL
                                        # -- End function
	.def	"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"
	.globl	"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z" # -- Begin function ??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z
	.p2align	4
"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z": # @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"
.seh_proc "??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	cmpq	$4096, %rdx                     # imm = 0x1000
	jb	.LBB75_2
# %bb.1:
	leaq	40(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
.LBB75_2:
	callq	"??3@YAXPEAX_K@Z"
	nop
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"
	.globl	"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" # -- Begin function ?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z
	.p2align	4
"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z": # @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"
# %bb.0:
	addq	$39, (%rdx)
	movq	(%rcx), %rdx
	movq	-8(%rdx), %rax
	subq	%rax, %rdx
	addq	$-8, %rdx
	cmpq	$32, %rdx
	jae	.LBB76_1
# %bb.2:
	movq	%rax, (%rcx)
	retq
.LBB76_1:
	ud2
                                        # -- End function
	.def	fprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fprintf
	.globl	fprintf                         # -- Begin function fprintf
	.p2align	4
fprintf:                                # @fprintf
.seh_proc fprintf
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	leaq	64(%rsp), %r9
	movq	%r9, 32(%rsp)
	xorl	%r8d, %r8d
	callq	_vfprintf_l
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfprintf_l
	.globl	_vfprintf_l                     # -- Begin function _vfprintf_l
	.p2align	4
_vfprintf_l:                            # @_vfprintf_l
.seh_proc _vfprintf_l
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%r9, %rsi
	movq	%r8, %rdi
	movq	%rdx, %rbx
	movq	%rcx, %r14
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%rsi, 32(%rsp)
	movq	%r14, %rdx
	movq	%rbx, %r8
	movq	%rdi, %r9
	callq	__stdio_common_vfprintf
	nop
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	__local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options    # -- Begin function __local_stdio_printf_options
	.p2align	4
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	leaq	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"(%rip), %rax
	retq
                                        # -- End function
	.def	"?lcg@bench@@YA_KAEA_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?lcg@bench@@YA_KAEA_K@Z"
	.globl	"?lcg@bench@@YA_KAEA_K@Z"       # -- Begin function ?lcg@bench@@YA_KAEA_K@Z
	.p2align	4
"?lcg@bench@@YA_KAEA_K@Z":              # @"?lcg@bench@@YA_KAEA_K@Z"
# %bb.0:
	movabsq	$6364136223846793005, %rdx      # imm = 0x5851F42D4C957F2D
	imulq	(%rcx), %rdx
	movabsq	$1442695040888963407, %rax      # imm = 0x14057B7EF767814F
	addq	%rdx, %rax
	movq	%rax, (%rcx)
	retq
                                        # -- End function
	.def	"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"
	.globl	"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" # -- Begin function ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
	.p2align	4
"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ": # @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"
.seh_proc "??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
	movq	%rsi, %rcx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	jmp	"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
	.globl	"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" # -- Begin function ?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ
	.p2align	4
"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ": # @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
.seh_proc "?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?_Orphan_all@_Container_base0@std@@QEAAXXZ"
	movq	%rsi, %rcx
	callq	"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"
	testb	%al, %al
	je	.LBB82_2
# %bb.1:
	movq	%rsi, %rcx
	callq	"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"
	movq	(%rsi), %rdx
	movq	24(%rsi), %r8
	movq	%rax, %rcx
	callq	"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"
	movq	%rsi, %rcx
	callq	"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"
.LBB82_2:
	movq	$0, 16(%rsi)
	movq	$15, 24(%rsi)
	movb	$0, 47(%rsp)
	leaq	47(%rsp), %rdx
	movq	%rsi, %rcx
	callq	"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"
	nop
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"
	.globl	"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" # -- Begin function ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
	.p2align	4
"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ": # @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"
# %bb.0:
	jmp	"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" # TAILCALL
                                        # -- End function
	.def	"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"
	.globl	"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" # -- Begin function ?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
	.p2align	4
"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ": # @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"
# %bb.0:
	jmp	"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" # TAILCALL
                                        # -- End function
	.def	"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"
	.globl	"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" # -- Begin function ??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z
	.p2align	4
"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z": # @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"
# %bb.0:
	retq
                                        # -- End function
	.def	"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
	.globl	"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" # -- Begin function ??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
	.p2align	4
"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ": # @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
# %bb.0:
	jmp	"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" # TAILCALL
                                        # -- End function
	.def	"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
	.globl	"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" # -- Begin function ??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
	.p2align	4
"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ": # @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"
# %bb.0:
	retq
                                        # -- End function
	.def	"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"
	.globl	"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" # -- Begin function ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
	.p2align	4
"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ": # @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"
.seh_proc "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"
	testb	%al, %al
	je	.LBB88_1
# %bb.2:
	movq	(%rsi), %rcx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	jmp	"??$_Unfancy@D@std@@YAPEADPEAD@Z" # TAILCALL
.LBB88_1:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?qpc_ns_per_tick@bench@@YANXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	__real@41cdcd6500000000         # -- Begin function ?qpc_ns_per_tick@bench@@YANXZ
	.section	.rdata,"dr",discard,__real@41cdcd6500000000
	.p2align	3, 0x0
__real@41cdcd6500000000:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text,"xr",discard,"?qpc_ns_per_tick@bench@@YANXZ"
	.globl	"?qpc_ns_per_tick@bench@@YANXZ"
	.p2align	4
"?qpc_ns_per_tick@bench@@YANXZ":        # @"?qpc_ns_per_tick@bench@@YANXZ"
.seh_proc "?qpc_ns_per_tick@bench@@YANXZ"
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	32(%rsp), %rcx
	callq	*__imp_QueryPerformanceFrequency(%rip)
	vcvtsi2sdq	32(%rsp), %xmm5, %xmm0
	vmovsd	__real@41cdcd6500000000(%rip), %xmm1 # xmm1 = [1.0E+9,0.0E+0]
	vdivsd	%xmm0, %xmm1, %xmm0
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ";
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4                               # -- Begin function ??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ
"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ": # @"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"
# %bb.0:
	movq	32(%rcx), %rax
	movq	(%rax), %r9
	movq	24(%rcx), %rax
	movq	(%rax), %r8
	movq	16(%rcx), %rax
	movq	(%rax), %rdx
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	rex64 jmpq	*(%rax)                 # TAILCALL
                                        # -- End function
	.section	.bss,"bw",discard,_Avx2WmemEnabledWeakValue
	.globl	_Avx2WmemEnabledWeakValue       # @_Avx2WmemEnabledWeakValue
	.p2align	2, 0x0
_Avx2WmemEnabledWeakValue:
	.long	0                               # 0x0

	.data
	.p2align	3, 0x0                          # @g_fn
g_fn:
	.quad	rr_offset_kernel

	.section	.rdata,"dr",discard,"??_C@_02GIPFHKNO@OK?$AA@"
	.globl	"??_C@_02GIPFHKNO@OK?$AA@"      # @"??_C@_02GIPFHKNO@OK?$AA@"
	.p2align	2, 0x0
"??_C@_02GIPFHKNO@OK?$AA@":
	.asciz	"OK"

	.section	.rdata,"dr",discard,"??_C@_04OOEBCMBF@FAIL?$AA@"
	.globl	"??_C@_04OOEBCMBF@FAIL?$AA@"    # @"??_C@_04OOEBCMBF@FAIL?$AA@"
	.p2align	2, 0x0
"??_C@_04OOEBCMBF@FAIL?$AA@":
	.asciz	"FAIL"

	.section	.rdata,"dr",discard,"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@"
	.globl	"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" # @"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@"
	.p2align	3, 0x0
"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@":
	.asciz	"VERIFY %s\n"

	.section	.rdata,"dr",discard,"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@"
	.globl	"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" # @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@"
	.p2align	3, 0x0
"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@":
	.asciz	"CHECK %016llx\n"

	.section	.rdata,"dr",discard,"??_C@_0BB@BGHEOPGK@read_read_offset?$AA@"
	.globl	"??_C@_0BB@BGHEOPGK@read_read_offset?$AA@" # @"??_C@_0BB@BGHEOPGK@read_read_offset?$AA@"
	.p2align	3, 0x0
"??_C@_0BB@BGHEOPGK@read_read_offset?$AA@":
	.asciz	"read_read_offset"

	.section	.rdata,"dr",discard,"??_C@_07CIFAGBMG@unknown?$AA@"
	.globl	"??_C@_07CIFAGBMG@unknown?$AA@" # @"??_C@_07CIFAGBMG@unknown?$AA@"
	.p2align	3, 0x0
"??_C@_07CIFAGBMG@unknown?$AA@":
	.asciz	"unknown"

	.section	.rdata,"dr",discard,"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"
	.globl	"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" # @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"
	.p2align	3, 0x0
"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@":
	.asciz	"string too long"

	.section	.data,"dw",discard,"??_R0?AVbad_array_new_length@std@@@8"
	.globl	"??_R0?AVbad_array_new_length@std@@@8" # @"??_R0?AVbad_array_new_length@std@@@8"
	.p2align	4, 0x0
"??_R0?AVbad_array_new_length@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_array_new_length@std@@"
	.zero	1

	.section	.xdata,"dr",discard,"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" # @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"
	.p2align	4, 0x0
"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24":
	.long	0                               # 0x0
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	24                              # 0x18
	.long	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVbad_alloc@std@@@8"
	.globl	"??_R0?AVbad_alloc@std@@@8"     # @"??_R0?AVbad_alloc@std@@@8"
	.p2align	4, 0x0
"??_R0?AVbad_alloc@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_alloc@std@@"
	.zero	4

	.section	.xdata,"dr",discard,"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" # @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"
	.p2align	4, 0x0
"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24":
	.long	16                              # 0x10
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	24                              # 0x18
	.long	"??0bad_alloc@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVexception@std@@@8"
	.globl	"??_R0?AVexception@std@@@8"     # @"??_R0?AVexception@std@@@8"
	.p2align	4, 0x0
"??_R0?AVexception@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVexception@std@@"
	.zero	4

	.section	.xdata,"dr",discard,"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" # @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"
	.p2align	4, 0x0
"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24":
	.long	0                               # 0x0
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	24                              # 0x18
	.long	"??0exception@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.xdata,"dr",discard,"_CTA3?AVbad_array_new_length@std@@"
	.globl	"_CTA3?AVbad_array_new_length@std@@" # @"_CTA3?AVbad_array_new_length@std@@"
	.p2align	3, 0x0
"_CTA3?AVbad_array_new_length@std@@":
	.long	3                               # 0x3
	.long	"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"@IMGREL

	.section	.xdata,"dr",discard,"_TI3?AVbad_array_new_length@std@@"
	.globl	"_TI3?AVbad_array_new_length@std@@" # @"_TI3?AVbad_array_new_length@std@@"
	.p2align	3, 0x0
"_TI3?AVbad_array_new_length@std@@":
	.long	0                               # 0x0
	.long	"??1bad_array_new_length@std@@UEAA@XZ"@IMGREL
	.long	0                               # 0x0
	.long	"_CTA3?AVbad_array_new_length@std@@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"
	.globl	"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" # @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"
	.p2align	3, 0x0
"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@":
	.asciz	"bad array new length"

	.section	.rdata,"dr",largest,"??_7bad_array_new_length@std@@6B@"
	.p2align	4, 0x0                          # @0
.L__unnamed_1:
	.quad	"??_R4bad_array_new_length@std@@6B@"
	.quad	"??_Ebad_array_new_length@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_array_new_length@std@@6B@"
	.globl	"??_R4bad_array_new_length@std@@6B@" # @"??_R4bad_array_new_length@std@@6B@"
	.p2align	4, 0x0
"??_R4bad_array_new_length@std@@6B@":
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	"??_R3bad_array_new_length@std@@8"@IMGREL
	.long	"??_R4bad_array_new_length@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_array_new_length@std@@8"
	.globl	"??_R3bad_array_new_length@std@@8" # @"??_R3bad_array_new_length@std@@8"
	.p2align	3, 0x0
"??_R3bad_array_new_length@std@@8":
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	"??_R2bad_array_new_length@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_array_new_length@std@@8"
	.globl	"??_R2bad_array_new_length@std@@8" # @"??_R2bad_array_new_length@std@@8"
	.p2align	2, 0x0
"??_R2bad_array_new_length@std@@8":
	.long	"??_R1A@?0A@EA@bad_array_new_length@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@bad_alloc@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0                               # 0x0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_array_new_length@std@@8"
	.globl	"??_R1A@?0A@EA@bad_array_new_length@std@@8" # @"??_R1A@?0A@EA@bad_array_new_length@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@bad_array_new_length@std@@8":
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	64                              # 0x40
	.long	"??_R3bad_array_new_length@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_alloc@std@@8"
	.globl	"??_R1A@?0A@EA@bad_alloc@std@@8" # @"??_R1A@?0A@EA@bad_alloc@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@bad_alloc@std@@8":
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	64                              # 0x40
	.long	"??_R3bad_alloc@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_alloc@std@@8"
	.globl	"??_R3bad_alloc@std@@8"         # @"??_R3bad_alloc@std@@8"
	.p2align	3, 0x0
"??_R3bad_alloc@std@@8":
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	"??_R2bad_alloc@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_alloc@std@@8"
	.globl	"??_R2bad_alloc@std@@8"         # @"??_R2bad_alloc@std@@8"
	.p2align	2, 0x0
"??_R2bad_alloc@std@@8":
	.long	"??_R1A@?0A@EA@bad_alloc@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0                               # 0x0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@exception@std@@8"
	.globl	"??_R1A@?0A@EA@exception@std@@8" # @"??_R1A@?0A@EA@exception@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@exception@std@@8":
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	64                              # 0x40
	.long	"??_R3exception@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3exception@std@@8"
	.globl	"??_R3exception@std@@8"         # @"??_R3exception@std@@8"
	.p2align	3, 0x0
"??_R3exception@std@@8":
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	"??_R2exception@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2exception@std@@8"
	.globl	"??_R2exception@std@@8"         # @"??_R2exception@std@@8"
	.p2align	2, 0x0
"??_R2exception@std@@8":
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0                               # 0x0

	.section	.rdata,"dr",largest,"??_7bad_alloc@std@@6B@"
	.p2align	4, 0x0                          # @1
.L__unnamed_2:
	.quad	"??_R4bad_alloc@std@@6B@"
	.quad	"??_Ebad_alloc@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_alloc@std@@6B@"
	.globl	"??_R4bad_alloc@std@@6B@"       # @"??_R4bad_alloc@std@@6B@"
	.p2align	4, 0x0
"??_R4bad_alloc@std@@6B@":
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	"??_R3bad_alloc@std@@8"@IMGREL
	.long	"??_R4bad_alloc@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7exception@std@@6B@"
	.p2align	4, 0x0                          # @2
.L__unnamed_3:
	.quad	"??_R4exception@std@@6B@"
	.quad	"??_Eexception@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4exception@std@@6B@"
	.globl	"??_R4exception@std@@6B@"       # @"??_R4exception@std@@6B@"
	.p2align	4, 0x0
"??_R4exception@std@@6B@":
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	"??_R3exception@std@@8"@IMGREL
	.long	"??_R4exception@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"
	.globl	"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" # @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"
	.p2align	3, 0x0
"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@":
	.asciz	"Unknown exception"

	.section	.rdata,"dr",discard,"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@"
	.globl	"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@" # @"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@"
	.p2align	3, 0x0
"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@":
	.asciz	"allocation failed (%zu bytes)\n"

	.section	.bss,"bw",discard,"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.globl	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" # @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.p2align	3, 0x0
"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA":
	.quad	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@"
	.globl	"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" # @"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@"
	.p2align	3, 0x0
"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@":
	.asciz	"warning: SetProcessAffinityMask failed (%lu)\n"

	.section	.rdata,"dr",discard,"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@"
	.globl	"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" # @"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@"
	.p2align	3, 0x0
"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@":
	.asciz	"warning: SetPriorityClass failed (%lu)\n"

	.section	.rdata,"dr",discard,"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"
	.globl	"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" # @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"
	.p2align	3, 0x0
"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@":
	.asciz	"TRIAL %d %.3f\n"

	.section	.rdata,"dr",discard,"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@"
	.globl	"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@" # @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@"
	.p2align	3, 0x0
"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@":
	.asciz	"META case=%s config=%s n=%zu reps=%d trials=%d\n"

	.section	.drectve,"yni"
	.ascii	" /DEFAULTLIB:uuid.lib"
	.ascii	" /DEFAULTLIB:uuid.lib"
	.ascii	" /FAILIFMISMATCH:\"_MSC_VER=1900\""
	.ascii	" /FAILIFMISMATCH:\"_ITERATOR_DEBUG_LEVEL=0\""
	.ascii	" /FAILIFMISMATCH:\"RuntimeLibrary=MT_StaticRelease\""
	.ascii	" /DEFAULTLIB:libcpmt.lib"
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_string=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_vector=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_optional=0\""
	.ascii	" /alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"
	.globl	"??_7bad_array_new_length@std@@6B@"
"??_7bad_array_new_length@std@@6B@" = .L__unnamed_1+8
	.globl	"??_7bad_alloc@std@@6B@"
"??_7bad_alloc@std@@6B@" = .L__unnamed_2+8
	.globl	"??_7exception@std@@6B@"
"??_7exception@std@@6B@" = .L__unnamed_3+8
	.weak	"??_Eexception@std@@UEAAPEAXI@Z"
	.def	"??_Eexception@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Eexception@std@@UEAAPEAXI@Z" = "??_Gexception@std@@UEAAPEAXI@Z"
	.weak	"??_Ebad_alloc@std@@UEAAPEAXI@Z"
	.def	"??_Ebad_alloc@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Ebad_alloc@std@@UEAAPEAXI@Z" = "??_Gbad_alloc@std@@UEAAPEAXI@Z"
	.weak	"??_Ebad_array_new_length@std@@UEAAPEAXI@Z"
	.def	"??_Ebad_array_new_length@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Ebad_array_new_length@std@@UEAAPEAXI@Z" = "??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp39-.Ltmp38                 # Subsection size
.Ltmp38:
	.short	.Ltmp41-.Ltmp40                 # Record length
.Ltmp40:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.asciz	"C:\\work\\llvm-profitability-research\\results\\r1\\EXP-20261107-R1A\\read_read_offset\\read_read_offset.B.s" # Object name
	.p2align	2, 0x0
.Ltmp41:
	.short	.Ltmp43-.Ltmp42                 # Record length
.Ltmp42:
	.short	4412                            # Record kind: S_COMPILE3
	.long	1                               # Flags and language
	.short	208                             # CPUType
	.short	24                              # Frontend version
	.short	0
	.short	0
	.short	0
	.short	24000                           # Backend version
	.short	0
	.short	0
	.short	0
	.asciz	"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)" # Null-terminated compiler version string
	.p2align	2, 0x0
.Ltmp43:
.Ltmp39:
	.p2align	2, 0x0
	.globl	_fltused
