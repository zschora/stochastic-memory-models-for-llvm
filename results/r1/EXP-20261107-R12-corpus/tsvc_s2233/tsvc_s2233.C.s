	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.att_syntax
	.file	"llvm-link"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	main                            # -- Begin function main
	.p2align	4
main:                                   # @main
.seh_proc main
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
	subq	$104, %rsp
	.seh_stackalloc 104
	vmovapd	%xmm6, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 80
	.seh_endprologue
	movl	$5, %esi
	movl	$1, 36(%rsp)                    # 4-byte Folded Spill
	cmpl	$2, %ecx
	jl	.LBB0_1
# %bb.2:
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpl	$4, %ecx
	jb	.LBB0_5
# %bb.3:
	movq	%rdx, %rdi
	movq	24(%rdx), %rax
	movl	%ecx, %ebx
	movq	%rax, %rcx
	callq	atoi
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	cmpl	$4, %ebx
	je	.LBB0_5
# %bb.4:
	movq	32(%rdi), %rcx
	callq	atoi
	movl	%eax, %esi
	jmp	.LBB0_5
.LBB0_1:
	leaq	"??_C@_01FHEEJDEE@A?$AA@"(%rip), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB0_5:                                # %.thread25
	movq	g_fn(%rip), %rdi
	callq	*%rdi
	leaq	aa(%rip), %rcx
	callq	"?hash_bytes@@YA_KPEBX_K@Z"
	movq	%rax, %rbx
	leaq	bb(%rip), %rcx
	callq	"?hash_bytes@@YA_KPEBX_K@Z"
	xorq	%rax, %rbx
	leaq	cc(%rip), %rcx
	callq	"?hash_bytes@@YA_KPEBX_K@Z"
	xorq	%rax, %rbx
	leaq	"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@"(%rip), %rcx
	movq	%rbx, %rdx
	callq	printf
	leaq	.Lstr(%rip), %rcx
	callq	puts
	testl	%esi, %esi
	jle	.LBB0_13
# %bb.6:                                # %.lr.ph28
	movl	36(%rsp), %eax                  # 4-byte Reload
	vcvtsi2sd	%eax, %xmm5, %xmm6
	testl	%eax, %eax
	jle	.LBB0_7
# %bb.9:                                # %.lr.ph.us.preheader
	xorl	%ebp, %ebp
	leaq	72(%rsp), %r14
	leaq	64(%rsp), %r15
	leaq	48(%rsp), %r12
	leaq	56(%rsp), %r13
	.p2align	4
.LBB0_10:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	movq	%r14, %rcx
	callq	"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"
	movl	36(%rsp), %ebx                  # 4-byte Reload
	.p2align	4
.LBB0_11:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	*%rdi
	decl	%ebx
	jne	.LBB0_11
# %bb.12:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	%r15, %rcx
	callq	"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"
	movq	%r13, %rcx
	movq	%r12, %rdx
	callq	"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
	movq	%r13, %rcx
	callq	"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"
	vdivsd	%xmm6, %xmm0, %xmm2
	leaq	"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"(%rip), %rcx
	movl	%ebp, %edx
	vmovq	%xmm2, %r8
	callq	printf
	incl	%ebp
	cmpl	%esi, %ebp
	jne	.LBB0_10
	jmp	.LBB0_13
.LBB0_7:                                # %.lr.ph28.split.preheader
	xorl	%ebx, %ebx
	leaq	72(%rsp), %r14
	leaq	64(%rsp), %r15
	leaq	48(%rsp), %r12
	leaq	56(%rsp), %r13
	leaq	"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"(%rip), %rbp
	.p2align	4
.LBB0_8:                                # %.lr.ph28.split
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rcx
	callq	"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"
	movq	%r15, %rcx
	callq	"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"
	movq	%r13, %rcx
	movq	%r12, %rdx
	callq	"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
	movq	%r13, %rcx
	callq	"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"
	vdivsd	%xmm6, %xmm0, %xmm2
	movq	%rbp, %rcx
	movl	%ebx, %edx
	vmovq	%xmm2, %r8
	callq	printf
	incl	%ebx
	cmpl	%ebx, %esi
	jne	.LBB0_8
.LBB0_13:                               # %._crit_edge29
	leaq	"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@"(%rip), %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	36(%rsp), %r8d                  # 4-byte Reload
	movl	%esi, %r9d
	callq	printf
	xorl	%eax, %eax
	vmovaps	80(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$104, %rsp
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
	.def	"?hash_bytes@@YA_KPEBX_K@Z";
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function ?hash_bytes@@YA_KPEBX_K@Z
"?hash_bytes@@YA_KPEBX_K@Z":            # @"?hash_bytes@@YA_KPEBX_K@Z"
# %bb.0:
	movabsq	$1469598103934665603, %rax      # imm = 0x14650FB0739D0383
	movabsq	$1099511628211, %rdx            # imm = 0x100000001B3
	xorl	%r8d, %r8d
	.p2align	4
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	1(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	movzbl	2(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	3(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	movzbl	4(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	5(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	movzbl	6(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	7(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	movzbl	8(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	9(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	movzbl	10(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	11(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	movzbl	12(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	13(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	movzbl	14(%rcx,%r8), %r9d
	xorq	%rax, %r9
	imulq	%rdx, %r9
	movzbl	15(%rcx,%r8), %eax
	xorq	%r9, %rax
	imulq	%rdx, %rax
	addq	$16, %r8
	cmpq	$262144, %r8                    # imm = 0x40000
	jne	.LBB1_1
# %bb.2:
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
	.def	"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"
	.globl	"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ" # -- Begin function ?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ
	.p2align	4
"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ": # @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"
.seh_proc "?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, %rsi
	callq	_Query_perf_frequency
	movq	%rax, %rdi
	callq	_Query_perf_counter
	cmpq	$24000000, %rdi                 # imm = 0x16E3600
	je	.LBB3_3
# %bb.1:
	cmpq	$10000000, %rdi                 # imm = 0x989680
	jne	.LBB3_4
# %bb.2:
	imulq	$100, %rax, %rax
	movq	%rax, 56(%rsp)
	leaq	80(%rsp), %rdi
	leaq	56(%rsp), %rdx
	jmp	.LBB3_11
.LBB3_3:
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rax,%rcx,8), %rcx
	addq	%rax, %rax
	movabsq	$6148914691236517206, %rdx      # imm = 0x5555555555555556
	imulq	%rdx
	addq	%rdx, %rcx
	shrq	$63, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 48(%rsp)
	leaq	72(%rsp), %rdi
	leaq	48(%rsp), %rdx
	jmp	.LBB3_11
.LBB3_4:
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB3_5
# %bb.6:
	cqto
	idivq	%rdi
	jmp	.LBB3_7
.LBB3_5:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
.LBB3_7:                                # %.split
	imulq	$1000000000, %rax, %rcx         # imm = 0x3B9ACA00
	imulq	$1000000000, %rdx, %rax         # imm = 0x3B9ACA00
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	je	.LBB3_8
# %bb.9:
	cqto
	idivq	%rdi
	jmp	.LBB3_10
.LBB3_8:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
.LBB3_10:                               # %.split.split
	addq	%rcx, %rax
	movq	%rax, 40(%rsp)
	leaq	64(%rsp), %rdi
	leaq	40(%rsp), %rdx
.LBB3_11:
	movq	%rdi, %rcx
	callq	"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"
	.globl	"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z" # -- Begin function ??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z
	.p2align	4
"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z": # @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"
.seh_proc "??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	48(%rsp), %rbx
	movq	%r8, %rcx
	movq	%rbx, %rdx
	callq	"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"
	leaq	40(%rsp), %r14
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"
	movq	%rdi, %rcx
	movq	%r14, %rdx
	movq	%rbx, %r8
	callq	"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"
	movq	%rdi, %rax
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
	.globl	"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z" # -- Begin function ??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z
	.p2align	4
"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z": # @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
.seh_proc "??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	32(%rsp), %rdi
	movq	%rdi, %rcx
	callq	"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"
	movq	%rdi, %rcx
	callq	"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"
	vmovsd	%xmm0, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"
	.globl	"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ" # -- Begin function ?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ
	.p2align	4
"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ": # @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"
# %bb.0:
	vmovsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	retq
                                        # -- End function
	.def	"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"
	.globl	"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z" # -- Begin function ??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z
	.p2align	4
"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z": # @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"
.seh_proc "??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	callq	"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"
	vcvtsi2sd	%rax, %xmm5, %xmm0
	vmovsd	%xmm0, 40(%rsp)
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	callq	"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"
	.globl	"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ" # -- Begin function ?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ
	.p2align	4
"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ": # @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"
# %bb.0:
	movq	(%rcx), %rax
	retq
                                        # -- End function
	.def	"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"
	.globl	"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z" # -- Begin function ??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z
	.p2align	4
"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z": # @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"
# %bb.0:
	movq	%rcx, %rax
	vmovsd	(%rdx), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx)
	retq
                                        # -- End function
	.def	"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"
	.globl	"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ" # -- Begin function ?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ
	.p2align	4
"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ": # @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"
# %bb.0:
	movq	%rdx, %rax
	movq	(%rcx), %rcx
	movq	%rcx, (%rdx)
	retq
                                        # -- End function
	.def	"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"
	.globl	"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z" # -- Begin function ??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z
	.p2align	4
"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z": # @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"
.seh_proc "??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rcx, %rdi
	movq	(%rdx), %rax
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rcx
	callq	"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"
	movq	%rax, %rbx
	movq	(%rsi), %rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"
	subq	%rax, %rbx
	movq	%rbx, 56(%rsp)
	leaq	56(%rsp), %rdx
	movq	%rdi, %rcx
	callq	"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"
	movq	%rdi, %rax
	.seh_startepilogue
	addq	$64, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"
	.globl	"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z" # -- Begin function ??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z
	.p2align	4
"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z": # @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"
# %bb.0:
	movq	%rcx, %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	retq
                                        # -- End function
	.def	"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
	.globl	"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z" # -- Begin function ??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z
	.p2align	4
"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z": # @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"
# %bb.0:
	movq	%rcx, %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	retq
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
	.def	set1d;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@00000000000000030000000000000002 # -- Begin function set1d
	.section	.rdata,"dr",discard,__xmm@00000000000000030000000000000002
	.p2align	4, 0x0
__xmm@00000000000000030000000000000002:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.globl	__xmm@00000000000000010000000000000000
	.section	.rdata,"dr",discard,__xmm@00000000000000010000000000000000
	.p2align	4, 0x0
__xmm@00000000000000010000000000000000:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.globl	__xmm@3f8000003f8000003f8000003f800000
	.section	.rdata,"dr",discard,__xmm@3f8000003f8000003f8000003f800000
	.p2align	4, 0x0
__xmm@3f8000003f8000003f8000003f800000:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.globl	__xmm@00000000000000040000000000000004
	.section	.rdata,"dr",discard,__xmm@00000000000000040000000000000004
	.p2align	4, 0x0
__xmm@00000000000000040000000000000004:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.globl	__xmm@00000005000000050000000500000005
	.section	.rdata,"dr",discard,__xmm@00000005000000050000000500000005
	.p2align	4, 0x0
__xmm@00000005000000050000000500000005:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.globl	__xmm@00000000000000080000000000000008
	.section	.rdata,"dr",discard,__xmm@00000000000000080000000000000008
	.p2align	4, 0x0
__xmm@00000000000000080000000000000008:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.text
	.globl	set1d
	.p2align	4
set1d:                                  # @set1d
.seh_proc set1d
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm8, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 32
	movaps	%xmm7, 16(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 16
	movaps	%xmm6, (%rsp)                   # 16-byte Spill
	.seh_savexmm %xmm6, 0
	.seh_endprologue
	cmpl	$-1, %r8d
	je	.LBB16_4
# %bb.1:
	cmpl	$-2, %r8d
	jne	.LBB16_6
# %bb.2:                                # %vector.body.preheader
	movdqa	__xmm@00000000000000030000000000000002(%rip), %xmm0 # xmm0 = [2,3]
	movdqa	__xmm@00000000000000010000000000000000(%rip), %xmm1 # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	xorl	%eax, %eax
	pcmpeqd	%xmm2, %xmm2
	movaps	__xmm@3f8000003f8000003f8000003f800000(%rip), %xmm3 # xmm3 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	movdqa	__xmm@00000000000000040000000000000004(%rip), %xmm4 # xmm4 = [4,4]
	.p2align	4
.LBB16_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm5
	psubq	%xmm2, %xmm5
	movdqa	%xmm1, %xmm6
	psubq	%xmm2, %xmm6
	pmuludq	%xmm6, %xmm6
	pmuludq	%xmm5, %xmm5
	shufps	$136, %xmm5, %xmm6              # xmm6 = xmm6[0,2],xmm5[0,2]
	cvtdq2ps	%xmm6, %xmm5
	movaps	%xmm3, %xmm6
	divps	%xmm5, %xmm6
	movups	%xmm6, (%rcx,%rax,4)
	addq	$4, %rax
	paddq	%xmm4, %xmm1
	paddq	%xmm4, %xmm0
	cmpq	$32000, %rax                    # imm = 0x7D00
	jne	.LBB16_3
	jmp	.LBB16_8
.LBB16_4:                               # %vector.body40.preheader
	movaps	__xmm@00000000000000030000000000000002(%rip), %xmm0 # xmm0 = [2,3]
	movaps	__xmm@00000000000000010000000000000000(%rip), %xmm1 # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$4, %eax
	pcmpeqd	%xmm2, %xmm2
	movaps	__xmm@3f8000003f8000003f8000003f800000(%rip), %xmm3 # xmm3 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	movdqa	__xmm@00000005000000050000000500000005(%rip), %xmm4 # xmm4 = [5,5,5,5]
	movdqa	__xmm@00000000000000080000000000000008(%rip), %xmm5 # xmm5 = [8,8]
	.p2align	4
.LBB16_5:                               # %vector.body40
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm1, %xmm6
	shufps	$136, %xmm0, %xmm6              # xmm6 = xmm6[0,2],xmm0[0,2]
	movaps	%xmm6, %xmm7
	psubd	%xmm2, %xmm7
	cvtdq2ps	%xmm7, %xmm7
	movaps	%xmm3, %xmm8
	divps	%xmm7, %xmm8
	movups	%xmm8, -16(%rcx,%rax,4)
	paddd	%xmm4, %xmm6
	cvtdq2ps	%xmm6, %xmm6
	movaps	%xmm3, %xmm7
	divps	%xmm6, %xmm7
	movups	%xmm7, (%rcx,%rax,4)
	paddq	%xmm5, %xmm1
	paddq	%xmm5, %xmm0
	addq	$8, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB16_5
	jmp	.LBB16_8
.LBB16_6:                               # %.preheader.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB16_7:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movd	%xmm1, (%rcx,%rax,4)
	addl	%r8d, %eax
	cmpl	$32000, %eax                    # imm = 0x7D00
	jl	.LBB16_7
.LBB16_8:                               # %.loopexit
	xorl	%eax, %eax
	movaps	(%rsp), %xmm6                   # 16-byte Reload
	movaps	16(%rsp), %xmm7                 # 16-byte Reload
	movaps	32(%rsp), %xmm8                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	set1ds;
	.scl	2;
	.type	32;
	.endef
	.globl	set1ds                          # -- Begin function set1ds
	.p2align	4
set1ds:                                 # @set1ds
.seh_proc set1ds
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm8, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 32
	movaps	%xmm7, 16(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 16
	movaps	%xmm6, (%rsp)                   # 16-byte Spill
	.seh_savexmm %xmm6, 0
	.seh_endprologue
	cmpl	$-1, %r9d
	je	.LBB17_4
# %bb.1:
	cmpl	$-2, %r9d
	jne	.LBB17_6
# %bb.2:                                # %vector.body.preheader
	movdqa	__xmm@00000000000000030000000000000002(%rip), %xmm0 # xmm0 = [2,3]
	movdqa	__xmm@00000000000000010000000000000000(%rip), %xmm1 # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	xorl	%eax, %eax
	pcmpeqd	%xmm2, %xmm2
	movaps	__xmm@3f8000003f8000003f8000003f800000(%rip), %xmm3 # xmm3 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	movdqa	__xmm@00000000000000040000000000000004(%rip), %xmm4 # xmm4 = [4,4]
	.p2align	4
.LBB17_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm5
	psubq	%xmm2, %xmm5
	movdqa	%xmm1, %xmm6
	psubq	%xmm2, %xmm6
	pmuludq	%xmm6, %xmm6
	pmuludq	%xmm5, %xmm5
	shufps	$136, %xmm5, %xmm6              # xmm6 = xmm6[0,2],xmm5[0,2]
	cvtdq2ps	%xmm6, %xmm5
	movaps	%xmm3, %xmm6
	divps	%xmm5, %xmm6
	movups	%xmm6, (%rdx,%rax,4)
	addq	$4, %rax
	paddq	%xmm4, %xmm1
	paddq	%xmm4, %xmm0
	cmpq	$32000, %rax                    # imm = 0x7D00
	jne	.LBB17_3
	jmp	.LBB17_8
.LBB17_4:                               # %vector.body40.preheader
	movaps	__xmm@00000000000000030000000000000002(%rip), %xmm0 # xmm0 = [2,3]
	movaps	__xmm@00000000000000010000000000000000(%rip), %xmm1 # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$4, %eax
	pcmpeqd	%xmm2, %xmm2
	movaps	__xmm@3f8000003f8000003f8000003f800000(%rip), %xmm3 # xmm3 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	movdqa	__xmm@00000005000000050000000500000005(%rip), %xmm4 # xmm4 = [5,5,5,5]
	movdqa	__xmm@00000000000000080000000000000008(%rip), %xmm5 # xmm5 = [8,8]
	.p2align	4
.LBB17_5:                               # %vector.body40
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm1, %xmm6
	shufps	$136, %xmm0, %xmm6              # xmm6 = xmm6[0,2],xmm0[0,2]
	movaps	%xmm6, %xmm7
	psubd	%xmm2, %xmm7
	cvtdq2ps	%xmm7, %xmm7
	movaps	%xmm3, %xmm8
	divps	%xmm7, %xmm8
	movups	%xmm8, -16(%rdx,%rax,4)
	paddd	%xmm4, %xmm6
	cvtdq2ps	%xmm6, %xmm6
	movaps	%xmm3, %xmm7
	divps	%xmm6, %xmm7
	movups	%xmm7, (%rdx,%rax,4)
	paddq	%xmm5, %xmm1
	paddq	%xmm5, %xmm0
	addq	$8, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB17_5
	jmp	.LBB17_8
.LBB17_6:                               # %.preheader.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB17_7:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movd	%xmm2, (%rdx,%rax,4)
	addl	%r9d, %eax
	cmpl	$32000, %eax                    # imm = 0x7D00
	jl	.LBB17_7
.LBB17_8:                               # %.loopexit
	xorl	%eax, %eax
	movaps	(%rsp), %xmm6                   # 16-byte Reload
	movaps	16(%rsp), %xmm7                 # 16-byte Reload
	movaps	32(%rsp), %xmm8                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	set2d;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3f800000                 # -- Begin function set2d
	.section	.rdata,"dr",discard,__real@3f800000
	.p2align	2, 0x0
__real@3f800000:
	.long	0x3f800000                      # float 1
	.text
	.globl	set2d
	.p2align	4
set2d:                                  # @set2d
# %bb.0:
	cmpl	$-1, %r8d
	je	.LBB18_4
# %bb.1:
	cmpl	$-2, %r8d
	jne	.LBB18_6
# %bb.2:                                # %.preheader37.preheader
	addq	$1008, %rcx                     # imm = 0x3F0
	movl	$1, %eax
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	.p2align	4
.LBB18_3:                               # %.preheader37
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	imulq	%rax, %rdx
	cvtsi2ss	%rdx, %xmm2
	movaps	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, -1008(%rcx)
	movups	%xmm1, -992(%rcx)
	movups	%xmm1, -976(%rcx)
	movups	%xmm1, -960(%rcx)
	movups	%xmm1, -944(%rcx)
	movups	%xmm1, -928(%rcx)
	movups	%xmm1, -912(%rcx)
	movups	%xmm1, -896(%rcx)
	movups	%xmm1, -880(%rcx)
	movups	%xmm1, -864(%rcx)
	movups	%xmm1, -848(%rcx)
	movups	%xmm1, -832(%rcx)
	movups	%xmm1, -816(%rcx)
	movups	%xmm1, -800(%rcx)
	movups	%xmm1, -784(%rcx)
	movups	%xmm1, -768(%rcx)
	movups	%xmm1, -752(%rcx)
	movups	%xmm1, -736(%rcx)
	movups	%xmm1, -720(%rcx)
	movups	%xmm1, -704(%rcx)
	movups	%xmm1, -688(%rcx)
	movups	%xmm1, -672(%rcx)
	movups	%xmm1, -656(%rcx)
	movups	%xmm1, -640(%rcx)
	movups	%xmm1, -624(%rcx)
	movups	%xmm1, -608(%rcx)
	movups	%xmm1, -592(%rcx)
	movups	%xmm1, -576(%rcx)
	movups	%xmm1, -560(%rcx)
	movups	%xmm1, -544(%rcx)
	movups	%xmm1, -528(%rcx)
	movups	%xmm1, -512(%rcx)
	movups	%xmm1, -496(%rcx)
	movups	%xmm1, -480(%rcx)
	movups	%xmm1, -464(%rcx)
	movups	%xmm1, -448(%rcx)
	movups	%xmm1, -432(%rcx)
	movups	%xmm1, -416(%rcx)
	movups	%xmm1, -400(%rcx)
	movups	%xmm1, -384(%rcx)
	movups	%xmm1, -368(%rcx)
	movups	%xmm1, -352(%rcx)
	movups	%xmm1, -336(%rcx)
	movups	%xmm1, -320(%rcx)
	movups	%xmm1, -304(%rcx)
	movups	%xmm1, -288(%rcx)
	movups	%xmm1, -272(%rcx)
	movups	%xmm1, -256(%rcx)
	movups	%xmm1, -240(%rcx)
	movups	%xmm1, -224(%rcx)
	movups	%xmm1, -208(%rcx)
	movups	%xmm1, -192(%rcx)
	movups	%xmm1, -176(%rcx)
	movups	%xmm1, -160(%rcx)
	movups	%xmm1, -144(%rcx)
	movups	%xmm1, -128(%rcx)
	movups	%xmm1, -112(%rcx)
	movups	%xmm1, -96(%rcx)
	movups	%xmm1, -80(%rcx)
	movups	%xmm1, -64(%rcx)
	movups	%xmm1, -48(%rcx)
	movups	%xmm1, -32(%rcx)
	movups	%xmm1, -16(%rcx)
	movups	%xmm1, (%rcx)
	addq	$1024, %rcx                     # imm = 0x400
	incq	%rax
	cmpq	$257, %rax                      # imm = 0x101
	jne	.LBB18_3
	jmp	.LBB18_12
.LBB18_4:                               # %.preheader34.preheader
	addq	$1008, %rcx                     # imm = 0x3F0
	movl	$1, %eax
	xorl	%edx, %edx
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	.p2align	4
.LBB18_5:                               # %.preheader34
                                        # =>This Inner Loop Header: Depth=1
	cvtsi2ss	%eax, %xmm2
	movaps	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, -1008(%rcx,%rdx)
	movups	%xmm1, -992(%rcx,%rdx)
	movups	%xmm1, -976(%rcx,%rdx)
	movups	%xmm1, -960(%rcx,%rdx)
	movups	%xmm1, -944(%rcx,%rdx)
	movups	%xmm1, -928(%rcx,%rdx)
	movups	%xmm1, -912(%rcx,%rdx)
	movups	%xmm1, -896(%rcx,%rdx)
	movups	%xmm1, -880(%rcx,%rdx)
	movups	%xmm1, -864(%rcx,%rdx)
	movups	%xmm1, -848(%rcx,%rdx)
	movups	%xmm1, -832(%rcx,%rdx)
	movups	%xmm1, -816(%rcx,%rdx)
	movups	%xmm1, -800(%rcx,%rdx)
	movups	%xmm1, -784(%rcx,%rdx)
	movups	%xmm1, -768(%rcx,%rdx)
	movups	%xmm1, -752(%rcx,%rdx)
	movups	%xmm1, -736(%rcx,%rdx)
	movups	%xmm1, -720(%rcx,%rdx)
	movups	%xmm1, -704(%rcx,%rdx)
	movups	%xmm1, -688(%rcx,%rdx)
	movups	%xmm1, -672(%rcx,%rdx)
	movups	%xmm1, -656(%rcx,%rdx)
	movups	%xmm1, -640(%rcx,%rdx)
	movups	%xmm1, -624(%rcx,%rdx)
	movups	%xmm1, -608(%rcx,%rdx)
	movups	%xmm1, -592(%rcx,%rdx)
	movups	%xmm1, -576(%rcx,%rdx)
	movups	%xmm1, -560(%rcx,%rdx)
	movups	%xmm1, -544(%rcx,%rdx)
	movups	%xmm1, -528(%rcx,%rdx)
	movups	%xmm1, -512(%rcx,%rdx)
	movups	%xmm1, -496(%rcx,%rdx)
	movups	%xmm1, -480(%rcx,%rdx)
	movups	%xmm1, -464(%rcx,%rdx)
	movups	%xmm1, -448(%rcx,%rdx)
	movups	%xmm1, -432(%rcx,%rdx)
	movups	%xmm1, -416(%rcx,%rdx)
	movups	%xmm1, -400(%rcx,%rdx)
	movups	%xmm1, -384(%rcx,%rdx)
	movups	%xmm1, -368(%rcx,%rdx)
	movups	%xmm1, -352(%rcx,%rdx)
	movups	%xmm1, -336(%rcx,%rdx)
	movups	%xmm1, -320(%rcx,%rdx)
	movups	%xmm1, -304(%rcx,%rdx)
	movups	%xmm1, -288(%rcx,%rdx)
	movups	%xmm1, -272(%rcx,%rdx)
	movups	%xmm1, -256(%rcx,%rdx)
	movups	%xmm1, -240(%rcx,%rdx)
	movups	%xmm1, -224(%rcx,%rdx)
	movups	%xmm1, -208(%rcx,%rdx)
	movups	%xmm1, -192(%rcx,%rdx)
	movups	%xmm1, -176(%rcx,%rdx)
	movups	%xmm1, -160(%rcx,%rdx)
	movups	%xmm1, -144(%rcx,%rdx)
	movups	%xmm1, -128(%rcx,%rdx)
	movups	%xmm1, -112(%rcx,%rdx)
	movups	%xmm1, -96(%rcx,%rdx)
	movups	%xmm1, -80(%rcx,%rdx)
	movups	%xmm1, -64(%rcx,%rdx)
	movups	%xmm1, -48(%rcx,%rdx)
	movups	%xmm1, -32(%rcx,%rdx)
	movups	%xmm1, -16(%rcx,%rdx)
	movups	%xmm1, (%rcx,%rdx)
	addq	$1024, %rdx                     # imm = 0x400
	incl	%eax
	cmpq	$262144, %rdx                   # imm = 0x40000
	jne	.LBB18_5
	jmp	.LBB18_12
.LBB18_6:                               # %.preheader.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB18_7:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_8 Depth 2
                                        #     Child Loop BB18_10 Depth 2
	movq	%rax, %rdx
	shlq	$10, %rdx
	addq	%rcx, %rdx
	xorl	%r9d, %r9d
	.p2align	4
.LBB18_8:                               #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r9d, %r9
	movss	%xmm1, (%rdx,%r9,4)
	addl	%r8d, %r9d
	cmpl	$256, %r9d                      # imm = 0x100
	jl	.LBB18_8
# %bb.9:                                # %.preheader.1
                                        #   in Loop: Header=BB18_7 Depth=1
	xorl	%r9d, %r9d
	.p2align	4
.LBB18_10:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r9d, %r9
	movss	%xmm1, 1024(%rdx,%r9,4)
	addl	%r8d, %r9d
	cmpl	$256, %r9d                      # imm = 0x100
	jl	.LBB18_10
# %bb.11:                               #   in Loop: Header=BB18_7 Depth=1
	addq	$2, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB18_7
.LBB18_12:                              # %.loopexit
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	sum1d;
	.scl	2;
	.type	32;
	.endef
	.globl	sum1d                           # -- Begin function sum1d
	.p2align	4
sum1d:                                  # @sum1d
# %bb.0:
	xorps	%xmm0, %xmm0
	movl	$7, %eax
	.p2align	4
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	addss	-28(%rcx,%rax,4), %xmm0
	addss	-24(%rcx,%rax,4), %xmm0
	addss	-20(%rcx,%rax,4), %xmm0
	addss	-16(%rcx,%rax,4), %xmm0
	addss	-12(%rcx,%rax,4), %xmm0
	addss	-8(%rcx,%rax,4), %xmm0
	addss	-4(%rcx,%rax,4), %xmm0
	addss	(%rcx,%rax,4), %xmm0
	addq	$8, %rax
	cmpq	$32007, %rax                    # imm = 0x7D07
	jne	.LBB19_1
# %bb.2:
	retq
                                        # -- End function
	.def	check;
	.scl	2;
	.type	32;
	.endef
	.globl	check                           # -- Begin function check
	.p2align	4
check:                                  # @check
.seh_proc check
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
                                        # kill: def $ecx killed $ecx def $rcx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorl	%eax, %eax
	leaq	a(%rip), %rdx
	leaq	b(%rip), %r8
	leaq	c(%rip), %r9
	leaq	d(%rip), %r10
	leaq	e(%rip), %r11
	.p2align	4
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	addss	(%rax,%rdx), %xmm1
	movss	(%rax,%r8), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	(%rax,%r9), %xmm3               # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm3                    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movss	(%rax,%r10), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movss	(%rax,%r11), %xmm4              # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm4                    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movlhps	%xmm3, %xmm4                    # xmm4 = xmm4[0],xmm3[0]
	addps	%xmm4, %xmm0
	addq	$4, %rax
	cmpq	$128000, %rax                   # imm = 0x1F400
	jne	.LBB20_1
# %bb.2:                                # %.preheader86.preheader
	xorps	%xmm3, %xmm3
	xorps	%xmm2, %xmm2
	leaq	cc+4(%rip), %rax
	leaq	bb+4(%rip), %rdx
	leaq	aa+4(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB20_3:                               # %.preheader86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
	xorl	%r10d, %r10d
	.p2align	4
.LBB20_4:                               #   Parent Loop BB20_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%r8,%r10,4), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	(%r8,%r10,4), %xmm5             # xmm5 = mem[0],zero,zero,zero
	movss	-4(%rdx,%r10,4), %xmm6          # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm4, %xmm6                    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	movaps	%xmm3, %xmm4
	addps	%xmm6, %xmm4
	movss	(%rdx,%r10,4), %xmm3            # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm5, %xmm3                    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	addps	%xmm4, %xmm3
	addss	-4(%rax,%r10,4), %xmm2
	addss	(%rax,%r10,4), %xmm2
	addq	$2, %r10
	cmpq	$256, %r10                      # imm = 0x100
	jne	.LBB20_4
# %bb.5:                                #   in Loop: Header=BB20_3 Depth=1
	incq	%r9
	addq	$1024, %rax                     # imm = 0x400
	addq	$1024, %rdx                     # imm = 0x400
	addq	$1024, %r8                      # imm = 0x400
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB20_3
# %bb.6:                                # %.preheader.preheader
	xorps	%xmm4, %xmm4
	xorl	%eax, %eax
	leaq	array(%rip), %rdx
	.p2align	4
.LBB20_7:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addss	(%rdx,%rax,4), %xmm4
	addss	4(%rdx,%rax,4), %xmm4
	addss	8(%rdx,%rax,4), %xmm4
	addss	12(%rdx,%rax,4), %xmm4
	addq	$4, %rax
	cmpq	$65536, %rax                    # imm = 0x10000
	jne	.LBB20_7
# %bb.8:
	leal	12(%rcx), %eax
	cmpl	$135, %eax
	ja	.LBB20_9
# %bb.12:
	leaq	.LJTI20_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB20_28:
	shufps	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	addss	temp(%rip), %xmm0
	jmp	.LBB20_29
.LBB20_9:
	cmpl	$1122, %ecx                     # imm = 0x462
	je	.LBB20_25
# %bb.10:
	cmpl	$112233, %ecx                   # imm = 0x1B669
	jne	.LBB20_31
# %bb.11:
	movaps	%xmm3, %xmm0
	shufps	$85, %xmm3, %xmm0               # xmm0 = xmm0[1,1],xmm3[1,1]
	addss	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	jmp	.LBB20_30
.LBB20_22:
	movaps	%xmm0, %xmm2
	shufps	$255, %xmm0, %xmm2              # xmm2 = xmm2[3,3],xmm0[3,3]
	addss	%xmm0, %xmm2
	jmp	.LBB20_30
.LBB20_20:
	shufps	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	jmp	.LBB20_21
.LBB20_24:
	movaps	%xmm0, %xmm2
	shufps	$255, %xmm0, %xmm2              # xmm2 = xmm2[3,3],xmm0[3,3]
	addss	%xmm2, %xmm1
	movhlps	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
	addss	%xmm1, %xmm0
	jmp	.LBB20_29
.LBB20_27:
	movss	temp(%rip), %xmm2               # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB20_30
.LBB20_17:
	shufps	$85, %xmm3, %xmm3               # xmm3 = xmm3[1,1,1,1]
.LBB20_18:
	movaps	%xmm3, %xmm2
	jmp	.LBB20_30
.LBB20_13:
	movaps	%xmm1, %xmm2
	jmp	.LBB20_30
.LBB20_19:
	movaps	%xmm4, %xmm2
	jmp	.LBB20_30
.LBB20_14:
	shufps	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	jmp	.LBB20_29
.LBB20_16:
	shufps	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	jmp	.LBB20_29
.LBB20_15:
	movhlps	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
.LBB20_29:                              # %.sink.split
	movaps	%xmm0, %xmm2
	jmp	.LBB20_30
.LBB20_23:
	movhlps	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
.LBB20_21:                              # %.sink.split
	addss	%xmm0, %xmm1
	movaps	%xmm1, %xmm2
	jmp	.LBB20_30
.LBB20_26:
	shufps	$85, %xmm3, %xmm3               # xmm3 = xmm3[1,1,1,1]
	addss	%xmm3, %xmm1
	movaps	%xmm1, %xmm2
	jmp	.LBB20_30
.LBB20_25:
	movaps	%xmm3, %xmm2
	shufps	$85, %xmm3, %xmm2               # xmm2 = xmm2[1,1],xmm3[1,1]
	addss	%xmm3, %xmm2
.LBB20_30:                              # %.sink.split
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	leaq	"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
.LBB20_31:
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.section	.rdata,"dr"
	.p2align	2, 0x0
.LJTI20_0:
	.long	.LBB20_28-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_27-.LJTI20_0
	.long	.LBB20_19-.LJTI20_0
	.long	.LBB20_13-.LJTI20_0
	.long	.LBB20_14-.LJTI20_0
	.long	.LBB20_15-.LJTI20_0
	.long	.LBB20_16-.LJTI20_0
	.long	.LBB20_29-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_17-.LJTI20_0
	.long	.LBB20_20-.LJTI20_0
	.long	.LBB20_23-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_18-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_22-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_30-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_26-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_31-.LJTI20_0
	.long	.LBB20_24-.LJTI20_0
	.text
	.seh_endproc
                                        # -- End function
	.def	init;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@40000000                 # -- Begin function init
	.section	.rdata,"dr",discard,__real@40000000
	.p2align	2, 0x0
__real@40000000:
	.long	0x40000000                      # float 2
	.globl	__real@3f000000
	.section	.rdata,"dr",discard,__real@3f000000
	.p2align	2, 0x0
__real@3f000000:
	.long	0x3f000000                      # float 0.5
	.globl	__real@bf800000
	.section	.rdata,"dr",discard,__real@bf800000
	.p2align	2, 0x0
__real@bf800000:
	.long	0xbf800000                      # float -1
	.globl	__real@358637bd
	.section	.rdata,"dr",discard,__real@358637bd
	.p2align	2, 0x0
__real@358637bd:
	.long	0x358637bd                      # float 9.99999997E-7
	.globl	__real@3f800008
	.section	.rdata,"dr",discard,__real@3f800008
	.p2align	2, 0x0
__real@3f800008:
	.long	0x3f800008                      # float 1.00000095
	.globl	__xmm@00000003000000020000000100000000
	.section	.rdata,"dr",discard,__xmm@00000003000000020000000100000000
	.p2align	4, 0x0
__xmm@00000003000000020000000100000000:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.globl	__xmm@00000002000000020000000200000002
	.section	.rdata,"dr",discard,__xmm@00000002000000020000000200000002
	.p2align	4, 0x0
__xmm@00000002000000020000000200000002:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.globl	__xmm@00000003000000030000000300000003
	.section	.rdata,"dr",discard,__xmm@00000003000000030000000300000003
	.p2align	4, 0x0
__xmm@00000003000000030000000300000003:
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.globl	__xmm@00000004000000040000000400000004
	.section	.rdata,"dr",discard,__xmm@00000004000000040000000400000004
	.p2align	4, 0x0
__xmm@00000004000000040000000400000004:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.text
	.globl	init
	.p2align	4
init:                                   # @init
.seh_proc init
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$144, %rsp
	.seh_stackalloc 144
	movaps	%xmm12, 128(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm12, 128
	movdqa	%xmm11, 112(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm11, 112
	movdqa	%xmm10, 96(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm10, 96
	movdqa	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movdqa	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movdqa	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_C@_05CDGOKACG@s000?5?$AA@"(%rip), %rdx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_137
# %bb.1:
	leaq	"??_C@_05KHHAIEME@s111?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_141
# %bb.2:
	leaq	"??_C@_05KFDGDKJN@s112?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.3:
	leaq	"??_C@_05KEPEFAKK@s113?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.4:
	leaq	"??_C@_05KBLLEGCP@s114?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_145
# %bb.5:
	leaq	"??_C@_05KAHJCMBI@s115?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_148
# %bb.6:
	leaq	"??_C@_05KCDPJCEB@s116?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_151
# %bb.7:
	leaq	"??_C@_05KIKBLPEL@s118?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_154
# %bb.8:
	leaq	"??_C@_05KJGDNFHM@s119?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_157
# %bb.9:
	leaq	"??_C@_05LFMFCLCK@s121?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.10:
	leaq	"??_C@_05LHIDJFHD@s122?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.11:
	leaq	"??_C@_05LGEBPPEE@s123?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_159
# %bb.12:
	leaq	"??_C@_05LDAOOJMB@s124?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_159
# %bb.13:
	leaq	"??_C@_05LCMMIDPG@s125?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_165
# %bb.14:
	leaq	"??_C@_05LAIKDNKP@s126?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_166
# %bb.15:
	leaq	"??_C@_05LBEIFHJI@s127?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_169
# %bb.16:
	leaq	"??_C@_05LKBEBAKF@s128?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_173
# %bb.17:
	leaq	"??_C@_05NHJEMEP@s131?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.18:
	leaq	"??_C@_05PDPPCBG@s132?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_177
# %bb.19:
	leaq	"??_C@_05JAKOHEPG@s141?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_179
# %bb.20:
	leaq	"??_C@_05CIBCBDJD@s151?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.21:
	leaq	"??_C@_05CKFEKNMK@s152?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_180
# %bb.22:
	leaq	"??_C@_05DKKHLMHN@s161?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_182
# %bb.23:
	leaq	"??_C@_05DIOBACCE@s162?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.24:
	leaq	"??_C@_05ICBLNLBI@s171?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.25:
	leaq	"??_C@_05IAFNGFEB@s172?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.26:
	leaq	"??_C@_05IBJPAPHG@s173?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.27:
	leaq	"??_C@_05IENABJPD@s174?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.28:
	leaq	"??_C@_05IFBCHDME@s175?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.29:
	leaq	"??_C@_05IHFEMNJN@s176?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.30:
	leaq	"??_C@_05OANAPOBE@s211?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_169
# %bb.31:
	leaq	"??_C@_05OCJGEAEN@s212?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_184
# %bb.32:
	leaq	"??_C@_05PCGFFBPK@s221?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_186
# %bb.33:
	leaq	"??_C@_05PACDOPKD@s222?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_189
# %bb.34:
	leaq	"??_C@_05EKNJDGJP@s231?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_157
# %bb.35:
	leaq	"??_C@_05EIJPIIMG@s232?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_190
# %bb.36:
	leaq	"??_C@_05EJFNOCPB@s233?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_192
# %bb.37:
	leaq	"??_C@_05EMBCPEHE@s234?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_193
# %bb.38:
	leaq	"??_C@_05ENNAJOED@s235?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_195
# %bb.39:
	leaq	"??_C@_05NHAOAOCG@s241?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_196
# %bb.40:
	leaq	"??_C@_05NFEILAHP@s242?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_197
# %bb.41:
	leaq	"??_C@_05NEIKNKEI@s243?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_169
# %bb.42:
	leaq	"??_C@_05NBMFMMMN@s244?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_199
# %bb.43:
	leaq	"??_C@_05GPLCGJED@s251?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_169
# %bb.44:
	leaq	"??_C@_05GNPENHBK@s252?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_189
# %bb.45:
	leaq	"??_C@_05GMDGLNCN@s253?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_201
# %bb.46:
	leaq	"??_C@_05GJHJKLKI@s254?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_200
# %bb.47:
	leaq	"??_C@_05GILLMBJP@s255?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_200
# %bb.48:
	leaq	"??_C@_05GKPNHPMG@s256?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_202
# %bb.49:
	leaq	"??_C@_05GLDPBFPB@s257?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_202
# %bb.50:
	leaq	"??_C@_05GAGDFCMM@s258?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_203
# %bb.51:
	leaq	"??_C@_05HNAHMGKN@s261?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_205
# %bb.52:
	leaq	"??_C@_05MFLLKBMI@s271?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.53:
	leaq	"??_C@_05MHPNBPJB@s272?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_206
# %bb.54:
	leaq	"??_C@_05MGDPHFKG@s273?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_207
# %bb.55:
	leaq	"??_C@_05MDHAGDCD@s274?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_159
# %bb.56:
	leaq	"??_C@_05MCLCAJBE@s275?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_208
# %bb.57:
	leaq	"??_C@_05MAPELHEN@s276?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_186
# %bb.58:
	leaq	"??_C@_05MBDGNNHK@s277?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_211
# %bb.59:
	leaq	"??_C@_05MKGKJKEH@s278?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_209
# %bb.60:
	leaq	"??_C@_05MLKIPAHA@s279?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_209
# %bb.61:
	leaq	"??_C@_05IPHJLDJJ@s2710?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_212
# %bb.62:
	leaq	"??_C@_05JGGCICNI@s2711?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.63:
	leaq	"??_C@_05LNEPNBBL@s2712?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.64:
	leaq	"??_C@_05JNNILBJO@s281?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_189
# %bb.65:
	leaq	"??_C@_05CFGENGPL@s291?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_200
# %bb.66:
	leaq	"??_C@_05CHCCGIKC@s292?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_200
# %bb.67:
	leaq	"??_C@_05CGOAACJF@s293?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_213
# %bb.68:
	leaq	"??_C@_05LCMLLHDD@s2101?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_193
# %bb.69:
	leaq	"??_C@_05JJOGOEPA@s2102?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_214
# %bb.70:
	leaq	"??_C@_05LDAJNNAE@s2111?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_214
# %bb.71:
	leaq	"??_C@_05NNLANHKE@s311?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_213
# %bb.72:
	leaq	"??_C@_05NPPGGJPN@s312?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_215
# %bb.73:
	leaq	"??_C@_05NODEADMK@s313?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_248
# %bb.74:
	leaq	"??_C@_05NLHLBFEP@s314?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_213
# %bb.75:
	leaq	"??_C@_05NKLJHPHI@s315?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_213
# %bb.76:
	leaq	"??_C@_05NIPPMBCB@s316?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_213
# %bb.77:
	leaq	"??_C@_05NJDNKLBG@s317?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_144
# %bb.78:
	leaq	"??_C@_05NCGBOMCL@s318?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_219
# %bb.79:
	leaq	"??_C@_05NDKDIGBM@s319?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_216
# %bb.80:
	leaq	"??_C@_05JHHCMFPF@s3110?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_217
# %bb.81:
	leaq	"??_C@_05IOGJPELE@s3111?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_213
# %bb.82:
	leaq	"??_C@_05KFEEKHHH@s3112?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_218
# %bb.83:
	leaq	"??_C@_05LMFPJGDG@s3113?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_219
# %bb.84:
	leaq	"??_C@_05MPAFHIEK@s321?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_220
# %bb.85:
	leaq	"??_C@_05MNEDMGBD@s322?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_222
# %bb.86:
	leaq	"??_C@_05MMIBKMCE@s323?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_212
# %bb.87:
	leaq	"??_C@_05HHLJBPCP@s331?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_223
# %bb.88:
	leaq	"??_C@_05HFPPKBHG@s332?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_224
# %bb.89:
	leaq	"??_C@_05OKGOCHJG@s341?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_225
# %bb.90:
	leaq	"??_C@_05OICIJJMP@s342?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_248
# %bb.91:
	leaq	"??_C@_05OJOKPDPI@s343?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_226
# %bb.92:
	leaq	"??_C@_05FCNCEAPD@s351?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_227
# %bb.93:
	leaq	"??_C@_05FAJEPOKK@s352?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_248
# %bb.94:
	leaq	"??_C@_05FBFGJEJN@s353?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_227
# %bb.95:
	leaq	"??_C@_05GPJAALLE@s411?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.96:
	leaq	"??_C@_05GNNGLFON@s412?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.97:
	leaq	"??_C@_05GMBENPNK@s413?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_159
# %bb.98:
	leaq	"??_C@_05GJFLMJFP@s414?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_193
# %bb.99:
	leaq	"??_C@_05GIJJKDGI@s415?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_228
# %bb.100:
	leaq	"??_C@_05HNCFKEFK@s421?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_233
# %bb.101:
	leaq	"??_C@_05HPGDBKAD@s422?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_231
# %bb.102:
	leaq	"??_C@_05HOKBHADE@s423?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_230
# %bb.103:
	leaq	"??_C@_05HLOOGGLB@s424?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_231
# %bb.104:
	leaq	"??_C@_05MFJJMDDP@s431?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.105:
	leaq	"??_C@_05MHNPHNGG@s432?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.106:
	leaq	"??_C@_05FIEOPLIG@s441?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_234
# %bb.107:
	leaq	"??_C@_05FKAIEFNP@s442?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_235
# %bb.108:
	leaq	"??_C@_05FLMKCPOI@s443?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.109:
	leaq	"??_C@_05OAPCJMOD@s451?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_178
# %bb.110:
	leaq	"??_C@_05OCLECCLK@s452?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_236
# %bb.111:
	leaq	"??_C@_05ODHGEIIN@s453?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_244
# %bb.112:
	leaq	"??_C@_05EKPLFEGI@s471?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_237
# %bb.113:
	leaq	"??_C@_05BCJIEEDO@s481?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_186
# %bb.114:
	leaq	"??_C@_05BANOPKGH@s482?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.115:
	leaq	"??_C@_05KKCECDFL@s491?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_243
# %bb.116:
	leaq	"??_C@_05BHGEHLGH@s4112?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_238
# %bb.117:
	leaq	"??_C@_05OHPEKCG@s4113?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_240
# %bb.118:
	leaq	"??_C@_05EBDONMOB@s4114?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_243
# %bb.119:
	leaq	"??_C@_05FICFONKA@s4115?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_248
# %bb.120:
	leaq	"??_C@_05HDAILOGD@s4116?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_241
# %bb.121:
	leaq	"??_C@_05GKBDIPCC@s4117?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_243
# %bb.122:
	leaq	"??_C@_05DOAPJGPN@s4121?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.123:
	leaq	"??_C@_03IDIMFPN@va?7?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_244
# %bb.124:
	leaq	"??_C@_05DMCMEDIF@vag?5?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_244
# %bb.125:
	leaq	"??_C@_05ODFHIDEN@vas?5?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_244
# %bb.126:
	leaq	"??_C@_05LEOAGPCB@vif?5?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_244
# %bb.127:
	leaq	"??_C@_05IJAJMNEN@vpv?5?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_244
# %bb.128:
	leaq	"??_C@_05HMIJGLIN@vtv?5?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_245
# %bb.129:
	leaq	"??_C@_05OFNLBPD@vpvtv?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_183
# %bb.130:
	leaq	"??_C@_05HDCKEFLG@vpvts?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_139
# %bb.131:
	leaq	"??_C@_05JFEBJCP@vpvpv?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_246
# %bb.132:
	leaq	"??_C@_05PLNNBHDD@vtvtv?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_247
# %bb.133:
	leaq	"??_C@_05CMNDDJDG@vsumr?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_213
# %bb.134:
	leaq	"??_C@_05NCEAFNKA@vdotr?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_248
# %bb.135:
	leaq	"??_C@_05NBAAOLGE@vbor?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB21_144
# %bb.136:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$-1, %r8d
	callq	set1d
	leaq	d(%rip), %rcx
	movss	__real@40000000(%rip), %xmm1    # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$-1, %r8d
	callq	set1d
	leaq	e(%rip), %rcx
	movss	__real@3f000000(%rip), %xmm1    # xmm1 = [5.0E-1,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_242
.LBB21_137:                             # %vector.body.preheader
	movaps	__xmm@00000000000000030000000000000002(%rip), %xmm0 # xmm0 = [2,3]
	movaps	__xmm@00000000000000010000000000000000(%rip), %xmm1 # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movdqa	__xmm@00000003000000020000000100000000(%rip), %xmm2 # xmm2 = [0,1,2,3]
	xorl	%eax, %eax
	pcmpeqd	%xmm3, %xmm3
	leaq	X(%rip), %rcx
	movdqa	__xmm@00000002000000020000000200000002(%rip), %xmm4 # xmm4 = [2,2,2,2]
	leaq	Y(%rip), %rdx
	movdqa	__xmm@00000003000000030000000300000003(%rip), %xmm5 # xmm5 = [3,3,3,3]
	leaq	Z(%rip), %r8
	movdqa	__xmm@00000004000000040000000400000004(%rip), %xmm6 # xmm6 = [4,4,4,4]
	leaq	U(%rip), %r9
	movdqa	__xmm@00000005000000050000000500000005(%rip), %xmm7 # xmm7 = [5,5,5,5]
	leaq	V(%rip), %r10
	movdqa	__xmm@00000000000000040000000000000004(%rip), %xmm8 # xmm8 = [4,4]
	movdqa	%xmm2, %xmm9
	movdqa	%xmm2, %xmm10
	movdqa	%xmm2, %xmm11
	.p2align	4
.LBB21_138:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm1, %xmm12
	shufps	$136, %xmm0, %xmm12             # xmm12 = xmm12[0,2],xmm0[0,2]
	psubd	%xmm3, %xmm12
	cvtdq2ps	%xmm12, %xmm12
	movaps	%xmm12, (%rax,%rcx)
	movdqa	%xmm2, %xmm12
	paddd	%xmm4, %xmm12
	cvtdq2ps	%xmm12, %xmm12
	movaps	%xmm12, (%rax,%rdx)
	movdqa	%xmm9, %xmm12
	paddd	%xmm5, %xmm12
	cvtdq2ps	%xmm12, %xmm12
	movaps	%xmm12, (%rax,%r8)
	paddd	%xmm6, %xmm10
	cvtdq2ps	%xmm10, %xmm12
	movaps	%xmm12, (%rax,%r9)
	movdqa	%xmm11, %xmm12
	paddd	%xmm7, %xmm12
	cvtdq2ps	%xmm12, %xmm12
	movaps	%xmm12, (%rax,%r10)
	paddq	%xmm8, %xmm1
	paddq	%xmm8, %xmm0
	paddd	%xmm6, %xmm2
	paddd	%xmm6, %xmm9
	paddd	%xmm6, %xmm11
	addq	$16, %rax
	cmpq	$128000, %rax                   # imm = 0x1F400
	jne	.LBB21_138
	jmp	.LBB21_144
.LBB21_139:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_140:                             # %.loopexit
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	jmp	.LBB21_142
.LBB21_141:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	callq	set1d
	leaq	d(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	callq	set1d
	leaq	e(%rip), %rcx
.LBB21_142:                             # %.loopexit
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
.LBB21_143:                             # %.loopexit
	callq	set1d
.LBB21_144:                             # %.loopexit
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	movaps	96(%rsp), %xmm10                # 16-byte Reload
	movaps	112(%rsp), %xmm11               # 16-byte Reload
	movaps	128(%rsp), %xmm12               # 16-byte Reload
	.seh_startepilogue
	addq	$144, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
.LBB21_145:
	leaq	aa(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
.LBB21_146:                             # %.loopexit
	callq	set2d
.LBB21_147:                             # %.loopexit
	leaq	bb(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	jmp	.LBB21_156
.LBB21_148:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	aa(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm6    # xmm6 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set2d
	leaq	bb(%rip), %rcx
.LBB21_149:                             # %.loopexit
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set2d
	leaq	cc(%rip), %rcx
.LBB21_150:                             # %.loopexit
	movaps	%xmm6, %xmm1
	jmp	.LBB21_155
.LBB21_151:
	leaq	a(%rip), %rcx
.LBB21_152:                             # %.loopexit
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_153:                             # %.loopexit
	movl	$1, %r8d
	jmp	.LBB21_143
.LBB21_154:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	bb(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm1    # xmm1 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
.LBB21_155:                             # %.loopexit
	movl	$1, %r8d
.LBB21_156:                             # %.loopexit
	callq	set2d
	jmp	.LBB21_144
.LBB21_157:
	leaq	aa(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_158:                             # %.loopexit
	movl	$1, %r8d
	jmp	.LBB21_146
.LBB21_159:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_160:                             # %.loopexit
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
.LBB21_161:                             # %.loopexit
	leaq	c(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
.LBB21_162:                             # %.loopexit
	callq	set1d
	leaq	d(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
.LBB21_163:                             # %.loopexit
	callq	set1d
	leaq	e(%rip), %rcx
.LBB21_164:                             # %.loopexit
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	jmp	.LBB21_143
.LBB21_165:
	leaq	array(%rip), %rdx
	xorps	%xmm2, %xmm2
	movl	$1, %r9d
	callq	set1ds
	leaq	aa(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set2d
	leaq	bb(%rip), %rcx
	movss	__real@3f000000(%rip), %xmm1    # xmm1 = [5.0E-1,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set2d
	leaq	cc(%rip), %rcx
	movss	__real@40000000(%rip), %xmm1    # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_155
.LBB21_166:
	leaq	bb(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set2d
	leaq	array(%rip), %rdx
	xorps	%xmm2, %xmm2
	movl	$-1, %r9d
	callq	set1ds
.LBB21_167:                             # %.loopexit
	leaq	cc(%rip), %rcx
.LBB21_168:                             # %.loopexit
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	jmp	.LBB21_156
.LBB21_169:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_170:                             # %.loopexit
	movl	$1, %r8d
.LBB21_171:                             # %.loopexit
	callq	set1d
.LBB21_172:                             # %.loopexit
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	jmp	.LBB21_162
.LBB21_173:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@40000000(%rip), %xmm1    # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_174:                             # %.loopexit
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
.LBB21_175:                             # %.loopexit
	callq	set1d
	leaq	d(%rip), %rcx
.LBB21_176:                             # %.loopexit
	movaps	%xmm6, %xmm1
	jmp	.LBB21_153
.LBB21_177:
	leaq	aa(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set2d
.LBB21_178:
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	jmp	.LBB21_164
.LBB21_179:
	leaq	array(%rip), %rdx
	movss	__real@3f800000(%rip), %xmm2    # xmm2 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r9d
	callq	set1ds
	jmp	.LBB21_147
.LBB21_180:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_181:                             # %.loopexit
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	jmp	.LBB21_170
.LBB21_182:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rdx
	movaps	%xmm6, %xmm2
	movl	$2, %r9d
	callq	set1ds
	leaq	b+4(%rip), %rdx
	movss	__real@bf800000(%rip), %xmm2    # xmm2 = [-1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$2, %r9d
	callq	set1ds
	jmp	.LBB21_161
.LBB21_183:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	jmp	.LBB21_178
.LBB21_184:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
.LBB21_185:                             # %.loopexit
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	jmp	.LBB21_188
.LBB21_186:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
.LBB21_187:                             # %.loopexit
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
.LBB21_188:                             # %.loopexit
	callq	set1d
	leaq	d(%rip), %rcx
	jmp	.LBB21_164
.LBB21_189:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	jmp	.LBB21_176
.LBB21_190:
	leaq	aa(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set2d
	leaq	bb(%rip), %rcx
.LBB21_191:                             # %.loopexit
	xorps	%xmm1, %xmm1
	jmp	.LBB21_155
.LBB21_192:
	leaq	aa(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	jmp	.LBB21_194
.LBB21_193:
	leaq	aa(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
.LBB21_194:                             # %.loopexit
	callq	set2d
	leaq	bb(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set2d
	jmp	.LBB21_167
.LBB21_195:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	aa(%rip), %rcx
	movaps	%xmm6, %xmm1
	jmp	.LBB21_158
.LBB21_196:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_198
.LBB21_197:
	leaq	a(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm6    # xmm6 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
.LBB21_198:                             # %.loopexit
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	jmp	.LBB21_174
.LBB21_199:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm6    # xmm6 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_174
.LBB21_200:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	jmp	.LBB21_152
.LBB21_201:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm1    # xmm1 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_185
.LBB21_202:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	aa(%rip), %rcx
	movss	__real@40000000(%rip), %xmm1    # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set2d
	leaq	bb(%rip), %rcx
	jmp	.LBB21_150
.LBB21_203:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	d(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	e(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
.LBB21_204:                             # %.loopexit
	callq	set1d
	leaq	aa(%rip), %rcx
	jmp	.LBB21_168
.LBB21_205:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	jmp	.LBB21_175
.LBB21_206:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	d(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	e(%rip), %rcx
	movss	__real@40000000(%rip), %xmm1    # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_153
.LBB21_207:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	d(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm1    # xmm1 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	jmp	.LBB21_163
.LBB21_208:
	leaq	aa(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set2d
	leaq	bb(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm6    # xmm6 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_149
.LBB21_209:
	leaq	a(%rip), %rdx
	movss	__real@bf800000(%rip), %xmm2    # xmm2 = [-1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r9d
	callq	set1ds
	leaq	a+64000(%rip), %rdx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm2
	movl	$1, %r9d
	callq	set1ds
.LBB21_210:                             # %.loopexit
	leaq	b(%rip), %rcx
	movaps	%xmm6, %xmm1
	jmp	.LBB21_170
.LBB21_211:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rdx
	movaps	%xmm6, %xmm2
	movl	$1, %r9d
	callq	set1ds
	leaq	b+64000(%rip), %rdx
	movss	__real@bf800000(%rip), %xmm2    # xmm2 = [-1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r9d
	callq	set1ds
	jmp	.LBB21_172
.LBB21_212:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	jmp	.LBB21_210
.LBB21_213:
	leaq	a(%rip), %rcx
	jmp	.LBB21_164
.LBB21_214:
	leaq	aa(%rip), %rcx
	jmp	.LBB21_191
.LBB21_215:
	leaq	a(%rip), %rcx
	movss	__real@3f800008(%rip), %xmm1    # xmm1 = [1.00000095E+0,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_153
.LBB21_216:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	jmp	.LBB21_181
.LBB21_217:
	leaq	aa(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set2d
	movl	$1073741824, aa+262140(%rip)    # imm = 0x40000000
	jmp	.LBB21_144
.LBB21_218:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	jmp	.LBB21_221
.LBB21_219:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	movl	$-1073741824, a+127996(%rip)    # imm = 0xC0000000
	jmp	.LBB21_144
.LBB21_220:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
.LBB21_221:                             # %.loopexit
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	jmp	.LBB21_153
.LBB21_222:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	jmp	.LBB21_153
.LBB21_223:
	leaq	a(%rip), %rcx
	jmp	.LBB21_229
.LBB21_224:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	callq	set1d
	movl	$1073741824, a+127996(%rip)     # imm = 0x40000000
	jmp	.LBB21_144
.LBB21_225:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	jmp	.LBB21_239
.LBB21_226:
	leaq	aa(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set2d
	leaq	bb(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_155
.LBB21_227:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	movl	$1065353216, c(%rip)            # imm = 0x3F800000
	jmp	.LBB21_144
.LBB21_228:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
.LBB21_229:                             # %.loopexit
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	movl	$-1082130432, a+127996(%rip)    # imm = 0xBF800000
	jmp	.LBB21_144
.LBB21_230:
	leaq	array(%rip), %rcx
	xorps	%xmm1, %xmm1
	jmp	.LBB21_232
.LBB21_231:
	leaq	array(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_232:                             # %.loopexit
	movl	$1, %r8d
	callq	set1d
.LBB21_233:
	leaq	a(%rip), %rcx
	jmp	.LBB21_142
.LBB21_234:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set1d
	leaq	d(%rip), %rdx
	movss	__real@bf800000(%rip), %xmm2    # xmm2 = [-1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r9d
	callq	set1ds
	leaq	d+42664(%rip), %rdx
	xorps	%xmm2, %xmm2
	movl	$1, %r9d
	callq	set1ds
	leaq	d+85332(%rip), %rdx
	movaps	%xmm6, %xmm2
	movl	$1, %r9d
	callq	set1ds
	jmp	.LBB21_144
.LBB21_235:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	jmp	.LBB21_171
.LBB21_236:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movss	__real@358637bd(%rip), %xmm1    # xmm1 = [9.99999997E-7,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_153
.LBB21_237:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	jmp	.LBB21_160
.LBB21_238:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB21_239:                             # %.loopexit
	movl	$1, %r8d
	jmp	.LBB21_249
.LBB21_240:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	jmp	.LBB21_142
.LBB21_241:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
.LBB21_242:                             # %.loopexit
	movl	$-1, %r8d
	jmp	.LBB21_204
.LBB21_243:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	jmp	.LBB21_187
.LBB21_244:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	jmp	.LBB21_140
.LBB21_245:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	jmp	.LBB21_176
.LBB21_246:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-2, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movss	__real@bf800000(%rip), %xmm1    # xmm1 = [-1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_153
.LBB21_247:
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movss	__real@40000000(%rip), %xmm1    # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movss	__real@3f000000(%rip), %xmm1    # xmm1 = [5.0E-1,0.0E+0,0.0E+0,0.0E+0]
	jmp	.LBB21_153
.LBB21_248:
	leaq	a(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
.LBB21_249:                             # %.loopexit
	callq	set1d
	leaq	b(%rip), %rcx
	jmp	.LBB21_164
	.seh_endproc
                                        # -- End function
	.def	s000;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@412e848000000000         # -- Begin function s000
	.section	.rdata,"dr",discard,__real@412e848000000000
	.p2align	3, 0x0
__real@412e848000000000:
	.quad	0x412e848000000000              # double 1.0E+6
	.text
	.globl	s000
	.p2align	4
s000:                                   # @s000
.seh_proc s000
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05CDGOKACG@s000?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	Y(%rip), %rax
	movaps	__xmm@3f8000003f8000003f8000003f800000(%rip), %xmm0 # xmm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	leaq	X(%rip), %rcx
	.p2align	4
.LBB22_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_2 Depth 2
	movl	$12, %edx
	.p2align	4
.LBB22_2:                               # %vector.body
                                        #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rax,%rdx,4), %xmm1
	addps	%xmm0, %xmm1
	movaps	-32(%rax,%rdx,4), %xmm2
	addps	%xmm0, %xmm2
	movaps	%xmm1, -48(%rcx,%rdx,4)
	movaps	%xmm2, -32(%rcx,%rdx,4)
	movaps	-16(%rax,%rdx,4), %xmm1
	addps	%xmm0, %xmm1
	movaps	(%rax,%rdx,4), %xmm2
	addps	%xmm0, %xmm2
	movaps	%xmm1, -16(%rcx,%rdx,4)
	movaps	%xmm2, (%rcx,%rdx,4)
	addq	$16, %rdx
	cmpq	$32012, %rdx                    # imm = 0x7D0C
	jne	.LBB22_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB22_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB22_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	dummy;
	.scl	2;
	.type	32;
	.endef
	.globl	dummy                           # -- Begin function dummy
	.p2align	4
dummy:                                  # @dummy
# %bb.0:
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	s111;
	.scl	2;
	.type	32;
	.endef
	.globl	s111                            # -- Begin function s111
	.p2align	4
s111:                                   # @s111
.seh_proc s111
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KHHAIEME@s111?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB24_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_2 Depth 2
	movq	$-3, %rdx
	.p2align	4
.LBB24_2:                               #   Parent Loop BB24_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	12(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	20(%rax,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	addss	16(%rcx,%rdx,4), %xmm0
	addss	24(%rcx,%rdx,4), %xmm1
	movss	%xmm0, 16(%rax,%rdx,4)
	movss	%xmm1, 24(%rax,%rdx,4)
	addq	$4, %rdx
	cmpq	$31996, %rdx                    # imm = 0x7CFC
	jb	.LBB24_2
# %bb.3:                                #   in Loop: Header=BB24_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB24_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1111;
	.scl	2;
	.type	32;
	.endef
	.globl	s1111                           # -- Begin function s1111
	.p2align	4
s1111:                                  # @s1111
.seh_proc s1111
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KHHAIEME@s111?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB25_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_2 Depth 2
	xorl	%r9d, %r9d
	.p2align	4
.LBB25_2:                               # %vector.body
                                        #   Parent Loop BB25_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r9,%rax), %xmm0
	movaps	(%r9,%rcx), %xmm1
	movaps	(%r9,%rdx), %xmm2
	movaps	%xmm0, %xmm3
	mulps	%xmm1, %xmm3
	mulps	%xmm2, %xmm1
	addps	%xmm1, %xmm3
	mulps	%xmm0, %xmm2
	mulps	%xmm0, %xmm0
	addps	%xmm3, %xmm0
	addps	%xmm1, %xmm0
	addps	%xmm2, %xmm0
	movss	%xmm0, (%r8,%r9,2)
	movaps	%xmm0, %xmm1
	shufps	$85, %xmm0, %xmm1               # xmm1 = xmm1[1,1],xmm0[1,1]
	movss	%xmm1, 8(%r8,%r9,2)
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	movss	%xmm1, 16(%r8,%r9,2)
	shufps	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	movss	%xmm0, 24(%r8,%r9,2)
	addq	$16, %r9
	cmpq	$64000, %r9                     # imm = 0xFA00
	jne	.LBB25_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB25_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB25_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s112;
	.scl	2;
	.type	32;
	.endef
	.globl	s112                            # -- Begin function s112
	.p2align	4
s112:                                   # @s112
.seh_proc s112
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	movaps	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05KFDGDKJN@s112?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	b+24(%rip), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	b+20(%rip), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	b+16(%rip), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	b+12(%rip), %xmm3               # xmm3 = mem[0],zero,zero,zero
	movss	b+8(%rip), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movss	b+4(%rip), %xmm5                # xmm5 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	movss	b(%rip), %xmm6                  # xmm6 = mem[0],zero,zero,zero
	leaq	a(%rip), %rcx
	leaq	b(%rip), %rdx
	jmp	.LBB26_1
	.p2align	4
.LBB26_4:                               # %scalar.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	movss	a+24(%rip), %xmm7               # xmm7 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm7
	movss	%xmm7, a+28(%rip)
	movss	a+20(%rip), %xmm7               # xmm7 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm7
	movss	%xmm7, a+24(%rip)
	movss	a+16(%rip), %xmm7               # xmm7 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm7
	movss	%xmm7, a+20(%rip)
	movss	a+12(%rip), %xmm7               # xmm7 = mem[0],zero,zero,zero
	addss	%xmm3, %xmm7
	movss	%xmm7, a+16(%rip)
	movss	a+8(%rip), %xmm7                # xmm7 = mem[0],zero,zero,zero
	addss	%xmm4, %xmm7
	movss	%xmm7, a+12(%rip)
	movss	a+4(%rip), %xmm7                # xmm7 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm7
	movss	%xmm7, a+8(%rip)
	movss	a(%rip), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	addss	%xmm6, %xmm7
	movss	%xmm7, a+4(%rip)
	incl	%eax
	cmpl	$768, %eax                      # imm = 0x300
	je	.LBB26_5
.LBB26_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_2 Depth 2
	movl	$31983, %r8d                    # imm = 0x7CEF
	.p2align	4
.LBB26_2:                               # %vector.body
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	32(%rcx,%r8,4), %xmm7
	movups	48(%rcx,%r8,4), %xmm8
	movups	32(%rdx,%r8,4), %xmm9
	addps	%xmm7, %xmm9
	movups	48(%rdx,%r8,4), %xmm7
	addps	%xmm8, %xmm7
	movaps	%xmm7, 52(%rcx,%r8,4)
	movaps	%xmm9, 36(%rcx,%r8,4)
	cmpq	$-1, %r8
	je	.LBB26_4
# %bb.3:                                # %vector.body.1
                                        #   in Loop: Header=BB26_2 Depth=2
	movups	(%rcx,%r8,4), %xmm7
	movups	16(%rcx,%r8,4), %xmm8
	movups	(%rdx,%r8,4), %xmm9
	addps	%xmm7, %xmm9
	movups	16(%rdx,%r8,4), %xmm7
	addps	%xmm8, %xmm7
	movaps	%xmm7, 20(%rcx,%r8,4)
	movaps	%xmm9, 4(%rcx,%r8,4)
	addq	$-16, %r8
	jmp	.LBB26_2
.LBB26_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1112;
	.scl	2;
	.type	32;
	.endef
	.globl	s1112                           # -- Begin function s1112
	.p2align	4
s1112:                                  # @s1112
.seh_proc s1112
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KFDGDKJN@s112?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	movaps	__xmm@3f8000003f8000003f8000003f800000(%rip), %xmm0 # xmm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	leaq	a(%rip), %rcx
	.p2align	4
.LBB27_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_2 Depth 2
	movl	$31984, %edx                    # imm = 0x7CF0
	.p2align	4
.LBB27_2:                               # %vector.body
                                        #   Parent Loop BB27_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	48(%rax,%rdx,4), %xmm1
	addps	%xmm0, %xmm1
	movaps	32(%rax,%rdx,4), %xmm2
	addps	%xmm0, %xmm2
	movaps	%xmm1, 48(%rcx,%rdx,4)
	movaps	%xmm2, 32(%rcx,%rdx,4)
	movaps	16(%rax,%rdx,4), %xmm1
	addps	%xmm0, %xmm1
	movaps	(%rax,%rdx,4), %xmm2
	addps	%xmm0, %xmm2
	movaps	%xmm1, 16(%rcx,%rdx,4)
	movaps	%xmm2, (%rcx,%rdx,4)
	addq	$-16, %rdx
	cmpq	$-16, %rdx
	jne	.LBB27_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB27_1 Depth=1
	incl	%edi
	cmpl	$768, %edi                      # imm = 0x300
	jne	.LBB27_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s113;
	.scl	2;
	.type	32;
	.endef
	.globl	s113                            # -- Begin function s113
	.p2align	4
s113:                                   # @s113
.seh_proc s113
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	movaps	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05KEPEFAKK@s113?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movss	b+127972(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm2
	movss	b+127976(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm3
	movss	b+127980(%rip), %xmm4           # xmm4 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm4
	movss	b+127984(%rip), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	b+127988(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm6
	movss	b+127992(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm7
	addss	b+127996(%rip), %xmm0
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	jmp	.LBB28_1
	.p2align	4
.LBB28_4:                               # %scalar.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	movss	%xmm2, a+127972(%rip)
	movss	%xmm3, a+127976(%rip)
	movss	%xmm4, a+127980(%rip)
	movss	%xmm5, a+127984(%rip)
	movss	%xmm6, a+127988(%rip)
	movss	%xmm7, a+127992(%rip)
	movss	%xmm0, a+127996(%rip)
	incl	%eax
	cmpl	$1024, %eax                     # imm = 0x400
	je	.LBB28_5
.LBB28_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_2 Depth 2
	movl	$13, %r8d
	.p2align	4
.LBB28_2:                               # %vector.body
                                        #   Parent Loop BB28_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rcx,%r8,4), %xmm8
	movups	-32(%rcx,%r8,4), %xmm9
	addps	%xmm1, %xmm8
	addps	%xmm1, %xmm9
	movups	%xmm8, -48(%rdx,%r8,4)
	movups	%xmm9, -32(%rdx,%r8,4)
	cmpq	$31997, %r8                     # imm = 0x7CFD
	je	.LBB28_4
# %bb.3:                                # %vector.body.1
                                        #   in Loop: Header=BB28_2 Depth=2
	movups	-16(%rcx,%r8,4), %xmm8
	movups	(%rcx,%r8,4), %xmm9
	addps	%xmm1, %xmm8
	addps	%xmm1, %xmm9
	movups	%xmm8, -16(%rdx,%r8,4)
	movups	%xmm9, (%rdx,%r8,4)
	addq	$16, %r8
	jmp	.LBB28_2
.LBB28_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1113;
	.scl	2;
	.type	32;
	.endef
	.globl	s1113                           # -- Begin function s1113
	.p2align	4
s1113:                                  # @s1113
.seh_proc s1113
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KEPEFAKK@s113?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB29_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_2 Depth 2
	movl	$1, %edx
	.p2align	4
.LBB29_2:                               #   Parent Loop BB29_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	a+64000(%rip), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	-4(%rcx,%rdx,4), %xmm0
	movss	%xmm0, -4(%rax,%rdx,4)
	movss	a+64000(%rip), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	(%rcx,%rdx,4), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB29_2
# %bb.3:                                #   in Loop: Header=BB29_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB29_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s114;
	.scl	2;
	.type	32;
	.endef
	.globl	s114                            # -- Begin function s114
	.p2align	4
s114:                                   # @s114
.seh_proc s114
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KBLLEGCP@s114?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	aa+4(%rip), %rax
	leaq	bb+4(%rip), %rcx
	leaq	aa+1024(%rip), %rdx
	leaq	aa(%rip), %r8
	leaq	bb(%rip), %r9
	jmp	.LBB30_1
	.p2align	4
.LBB30_10:                              #   in Loop: Header=BB30_1 Depth=1
	incl	%edi
	cmpl	$200, %edi
	je	.LBB30_11
.LBB30_1:                               # %.preheader18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_2 Depth 2
                                        #       Child Loop BB30_6 Depth 3
	movq	%rdx, %r10
	movq	%rcx, %r11
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB30_2
	.p2align	4
.LBB30_4:                               #   in Loop: Header=BB30_2 Depth=2
	xorl	%esi, %esi
.LBB30_8:                               # %.epil.preheader
                                        #   in Loop: Header=BB30_2 Depth=2
	leaq	(%r8,%r14,4), %r12
	movq	%r14, %r13
	shlq	$10, %r13
	leaq	(%r9,%r13), %rbp
	addq	%r8, %r13
	movq	%rsi, %r15
	shlq	$10, %r15
	movss	(%r12,%r15), %xmm0              # xmm0 = mem[0],zero,zero,zero
	addss	(%rbp,%rsi,4), %xmm0
	movss	%xmm0, (%r13,%rsi,4)
.LBB30_9:                               # %._crit_edge
                                        #   in Loop: Header=BB30_2 Depth=2
	incq	%r14
	addq	$1024, %rbx                     # imm = 0x400
	addq	$1024, %r11                     # imm = 0x400
	addq	$4, %r10
	cmpq	$256, %r14                      # imm = 0x100
	je	.LBB30_10
.LBB30_2:                               # %.preheader
                                        #   Parent Loop BB30_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_6 Depth 3
	testq	%r14, %r14
	je	.LBB30_9
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB30_2 Depth=2
	cmpq	$1, %r14
	je	.LBB30_4
# %bb.5:                                # %.lr.ph.new
                                        #   in Loop: Header=BB30_2 Depth=2
	movq	%r14, %r12
	andq	$-2, %r12
	movq	%r10, %r13
	xorl	%esi, %esi
	.p2align	4
.LBB30_6:                               #   Parent Loop BB30_1 Depth=1
                                        #     Parent Loop BB30_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-1024(%r13), %xmm0              # xmm0 = mem[0],zero,zero,zero
	addss	-4(%r11,%rsi,4), %xmm0
	movss	%xmm0, -4(%rbx,%rsi,4)
	movss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	addss	(%r11,%rsi,4), %xmm0
	movss	%xmm0, (%rbx,%rsi,4)
	addq	$2, %rsi
	addq	$2048, %r13                     # imm = 0x800
	cmpq	%rsi, %r12
	jne	.LBB30_6
# %bb.7:                                # %._crit_edge.loopexit.unr-lcssa
                                        #   in Loop: Header=BB30_2 Depth=2
	testb	$1, %r14b
	jne	.LBB30_8
	jmp	.LBB30_9
.LBB30_11:
	callq	clock
	subl	36(%rsp), %eax                  # 4-byte Folded Reload
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s115;
	.scl	2;
	.type	32;
	.endef
	.globl	s115                            # -- Begin function s115
	.p2align	4
s115:                                   # @s115
.seh_proc s115
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KAHJCMBI@s115?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	aa+20(%rip), %rcx
	leaq	aa(%rip), %rdx
	leaq	a(%rip), %r8
	jmp	.LBB31_1
	.p2align	4
.LBB31_10:                              #   in Loop: Header=BB31_1 Depth=1
	incl	%edi
	cmpl	$1000, %edi                     # imm = 0x3E8
	je	.LBB31_11
.LBB31_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_3 Depth 2
                                        #       Child Loop BB31_6 Depth 3
                                        #       Child Loop BB31_9 Depth 3
	movl	$1, %r9d
	movl	$255, %r10d
	xorl	%r11d, %r11d
	movq	%rcx, %rbx
	leaq	a+20(%rip), %r14
	xorl	%r15d, %r15d
	jmp	.LBB31_3
	.p2align	4
.LBB31_2:                               # %.loopexit
                                        #   in Loop: Header=BB31_3 Depth=2
	incq	%r15
	incq	%r9
	decq	%r10
	addq	$4, %r14
	addq	$1028, %rbx                     # imm = 0x404
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$256, %r15                      # imm = 0x100
	je	.LBB31_10
.LBB31_3:                               #   Parent Loop BB31_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_6 Depth 3
                                        #       Child Loop BB31_9 Depth 3
	cmpq	$254, %r15
	ja	.LBB31_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB31_3 Depth=2
	movq	%r9, %r12
	cmpq	$247, %r15
	ja	.LBB31_8
# %bb.5:                                # %vector.ph
                                        #   in Loop: Header=BB31_3 Depth=2
	movq	%r10, %r13
	andq	$-8, %r13
	movq	%r15, %rsi
	xorq	$255, %rsi
	movl	%esi, %ebp
	andl	$248, %ebp
	leaq	(%r9,%rbp), %r12
	xorl	%eax, %eax
	.p2align	4
.LBB31_6:                               # %vector.body
                                        #   Parent Loop BB31_1 Depth=1
                                        #     Parent Loop BB31_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-16(%rbx,%rax,4), %xmm0
	movups	(%rbx,%rax,4), %xmm1
	movss	(%r8,%r15,4), %xmm2             # xmm2 = mem[0],zero,zero,zero
	shufps	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	movups	-16(%r14,%rax,4), %xmm3
	movups	(%r14,%rax,4), %xmm4
	mulps	%xmm2, %xmm0
	subps	%xmm0, %xmm3
	mulps	%xmm1, %xmm2
	subps	%xmm2, %xmm4
	movups	%xmm3, -16(%r14,%rax,4)
	movups	%xmm4, (%r14,%rax,4)
	addq	$8, %rax
	cmpq	%rax, %r13
	jne	.LBB31_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB31_3 Depth=2
	cmpq	%rbp, %rsi
	je	.LBB31_2
.LBB31_8:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB31_3 Depth=2
	shlq	$2, %r12
	.p2align	4
.LBB31_9:                               # %scalar.ph
                                        #   Parent Loop BB31_1 Depth=1
                                        #     Parent Loop BB31_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%r11,%r12), %rax
	movss	(%rdx,%rax), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	(%r12,%r8), %xmm1               # xmm1 = mem[0],zero,zero,zero
	mulss	(%r8,%r15,4), %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, (%r12,%r8)
	addq	$4, %r12
	cmpq	$1024, %r12                     # imm = 0x400
	jne	.LBB31_9
	jmp	.LBB31_2
.LBB31_11:
	callq	clock
	subl	36(%rsp), %eax                  # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s1115;
	.scl	2;
	.type	32;
	.endef
	.globl	s1115                           # -- Begin function s1115
	.p2align	4
s1115:                                  # @s1115
.seh_proc s1115
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
	leaq	"??_C@_05KAHJCMBI@s115?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	bb+16(%rip), %rax
	leaq	cc+7168(%rip), %rcx
	leaq	aa+16(%rip), %rdx
	.p2align	4
.LBB32_1:                               # %.preheader19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_2 Depth 2
                                        #       Child Loop BB32_3 Depth 3
	movq	%rdx, %r8
	movq	%rcx, %r9
	movq	%rax, %r10
	xorl	%r11d, %r11d
	.p2align	4
.LBB32_2:                               # %.preheader
                                        #   Parent Loop BB32_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_3 Depth 3
	movq	%r9, %rbx
	xorl	%r14d, %r14d
	.p2align	4
.LBB32_3:                               # %vector.body
                                        #   Parent Loop BB32_1 Depth=1
                                        #     Parent Loop BB32_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-4096(%rbx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	-5120(%rbx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movss	-6144(%rbx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	-7168(%rbx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movlhps	%xmm1, %xmm2                    # xmm2 = xmm2[0],xmm1[0]
	movss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	-1024(%rbx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movss	-2048(%rbx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	-3072(%rbx), %xmm3              # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movlhps	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0]
	mulps	-16(%r8,%r14,4), %xmm2
	addps	-16(%r10,%r14,4), %xmm2
	mulps	(%r8,%r14,4), %xmm3
	addps	(%r10,%r14,4), %xmm3
	movaps	%xmm2, -16(%r8,%r14,4)
	movaps	%xmm3, (%r8,%r14,4)
	addq	$8, %r14
	addq	$8192, %rbx                     # imm = 0x2000
	cmpq	$256, %r14                      # imm = 0x100
	jne	.LBB32_3
# %bb.4:                                # %middle.block
                                        #   in Loop: Header=BB32_2 Depth=2
	incq	%r11
	addq	$1024, %r10                     # imm = 0x400
	addq	$4, %r9
	addq	$1024, %r8                      # imm = 0x400
	cmpq	$256, %r11                      # imm = 0x100
	jne	.LBB32_2
# %bb.5:                                #   in Loop: Header=BB32_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	jne	.LBB32_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
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
	.def	s116;
	.scl	2;
	.type	32;
	.endef
	.globl	s116                            # -- Begin function s116
	.p2align	4
s116:                                   # @s116
.seh_proc s116
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KCDPJCEB@s116?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	jmp	.LBB33_1
	.p2align	4
.LBB33_4:                               #   in Loop: Header=BB33_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	je	.LBB33_5
.LBB33_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_2 Depth 2
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	.p2align	4
.LBB33_2:                               #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	4(%rax,%rcx,4), %xmm1
	movlhps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	shufps	$152, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[1,2]
	mulps	%xmm1, %xmm0
	movups	%xmm0, (%rax,%rcx,4)
	movss	20(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	16(%rax,%rcx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 16(%rax,%rcx,4)
	cmpq	$31989, %rcx                    # imm = 0x7CF5
	ja	.LBB33_4
# %bb.3:                                #   in Loop: Header=BB33_2 Depth=2
	movups	24(%rax,%rcx,4), %xmm1
	movlhps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	shufps	$152, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[1,2]
	mulps	%xmm1, %xmm0
	movups	%xmm0, 20(%rax,%rcx,4)
	movss	40(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	36(%rax,%rcx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 36(%rax,%rcx,4)
	addq	$10, %rcx
	jmp	.LBB33_2
.LBB33_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s118;
	.scl	2;
	.type	32;
	.endef
	.globl	s118                            # -- Begin function s118
	.p2align	4
s118:                                   # @s118
.seh_proc s118
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KIKBLPEL@s118?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	bb+1028(%rip), %rax
	leaq	a(%rip), %rcx
	leaq	bb(%rip), %rdx
	movabsq	$4611686018427387902, %r8       # imm = 0x3FFFFFFFFFFFFFFE
	jmp	.LBB34_1
	.p2align	4
.LBB34_9:                               #   in Loop: Header=BB34_1 Depth=1
	incl	%edi
	cmpl	$200, %edi
	je	.LBB34_10
.LBB34_1:                               # %.preheader17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_2 Depth 2
                                        #       Child Loop BB34_5 Depth 3
	movl	$1, %r9d
	movq	%rcx, %r10
	movq	%rax, %r11
	xorl	%ebx, %ebx
	jmp	.LBB34_2
	.p2align	4
.LBB34_3:                               #   in Loop: Header=BB34_2 Depth=2
	xorl	%esi, %esi
.LBB34_7:                               # %.epil.preheader
                                        #   in Loop: Header=BB34_2 Depth=2
	movaps	%xmm0, %xmm1
	leaq	(%rdx,%r9,4), %r15
	movq	%rsi, %r12
	shlq	$10, %r12
	movss	(%r15,%r12), %xmm0              # xmm0 = mem[0],zero,zero,zero
	notq	%rsi
	mulss	(%r14,%rsi,4), %xmm0
	addss	%xmm1, %xmm0
.LBB34_8:                               #   in Loop: Header=BB34_2 Depth=2
	movss	%xmm0, (%rcx,%r9,4)
	incq	%r9
	incq	%rbx
	addq	$4, %r11
	addq	$4, %r10
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB34_9
.LBB34_2:                               # %.preheader
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_5 Depth 3
	leaq	(%rcx,%r9,4), %r14
	movss	(%rcx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	testq	%rbx, %rbx
	je	.LBB34_3
# %bb.4:                                # %.preheader.new
                                        #   in Loop: Header=BB34_2 Depth=2
	movq	%r9, %r12
	andq	$-2, %r12
	movq	%r10, %r13
	movq	%r11, %rbp
	xorl	%esi, %esi
	.p2align	4
.LBB34_5:                               #   Parent Loop BB34_1 Depth=1
                                        #     Parent Loop BB34_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-1024(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%r13), %xmm1
	movaps	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movss	(%rbp), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movq	%rsi, %r15
	xorq	%r8, %r15
	mulss	(%r14,%r15,4), %xmm0
	addss	%xmm2, %xmm0
	addq	$2, %rsi
	addq	$2048, %rbp                     # imm = 0x800
	addq	$-8, %r13
	cmpq	%rsi, %r12
	jne	.LBB34_5
# %bb.6:                                # %.unr-lcssa
                                        #   in Loop: Header=BB34_2 Depth=2
	testb	$1, %r9b
	jne	.LBB34_7
	jmp	.LBB34_8
.LBB34_10:
	callq	clock
	subl	36(%rsp), %eax                  # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s119;
	.scl	2;
	.type	32;
	.endef
	.globl	s119                            # -- Begin function s119
	.p2align	4
s119:                                   # @s119
.seh_proc s119
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
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
	.seh_endprologue
	leaq	"??_C@_05KJGDNFHM@s119?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	bb+1076(%rip), %rax
	leaq	aa+1076(%rip), %rcx
	leaq	aa(%rip), %rdx
	leaq	bb(%rip), %r8
	jmp	.LBB35_1
	.p2align	4
.LBB35_6:                               #   in Loop: Header=BB35_1 Depth=1
	incl	%edi
	cmpl	$200, %edi
	je	.LBB35_7
.LBB35_1:                               # %.preheader17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_2 Depth 2
                                        #       Child Loop BB35_3 Depth 3
	movl	$1, %r9d
	movq	%rcx, %r10
	movq	%rax, %r11
	jmp	.LBB35_2
	.p2align	4
.LBB35_5:                               # %scalar.ph
                                        #   in Loop: Header=BB35_2 Depth=2
	movss	-32(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-28(%r14), %xmm1                # xmm1 = mem[0],zero,zero,zero
	addss	996(%rbx), %xmm0
	movss	%xmm0, 996(%r14)
	addss	1000(%rbx), %xmm1
	movss	%xmm1, 1000(%r14)
	movss	-24(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	1004(%rbx), %xmm0
	movss	%xmm0, 1004(%r14)
	movss	-20(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	1008(%rbx), %xmm0
	movss	%xmm0, 1008(%r14)
	movss	-16(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	1012(%rbx), %xmm0
	movss	%xmm0, 1012(%r14)
	movss	-12(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	1016(%rbx), %xmm0
	movss	%xmm0, 1016(%r14)
	movss	-8(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addss	1020(%rbx), %xmm0
	movss	%xmm0, 1020(%r14)
	incq	%r9
	addq	$1024, %r11                     # imm = 0x400
	addq	$1024, %r10                     # imm = 0x400
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB35_6
.LBB35_2:                               # %.preheader
                                        #   Parent Loop BB35_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_3 Depth 3
	movq	%r9, %rbx
	shlq	$10, %rbx
	leaq	(%rdx,%rbx), %r14
	addq	%r8, %rbx
	xorl	%r15d, %r15d
	.p2align	4
.LBB35_3:                               # %vector.body
                                        #   Parent Loop BB35_1 Depth=1
                                        #     Parent Loop BB35_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%r11,%r15,4), %xmm0
	movups	-32(%r11,%r15,4), %xmm1
	addps	-1076(%r10,%r15,4), %xmm0
	addps	-1060(%r10,%r15,4), %xmm1
	movups	%xmm0, -48(%r10,%r15,4)
	movups	%xmm1, -32(%r10,%r15,4)
	cmpq	$240, %r15
	je	.LBB35_5
# %bb.4:                                # %vector.body.1
                                        #   in Loop: Header=BB35_3 Depth=3
	movups	-16(%r11,%r15,4), %xmm0
	movups	(%r11,%r15,4), %xmm1
	addps	-1044(%r10,%r15,4), %xmm0
	addps	-1028(%r10,%r15,4), %xmm1
	movups	%xmm0, -16(%r10,%r15,4)
	movups	%xmm1, (%r10,%r15,4)
	addq	$16, %r15
	jmp	.LBB35_3
.LBB35_7:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1119;
	.scl	2;
	.type	32;
	.endef
	.globl	s1119                           # -- Begin function s1119
	.p2align	4
s1119:                                  # @s1119
.seh_proc s1119
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05KJGDNFHM@s119?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	aa+1072(%rip), %rax
	leaq	bb+1072(%rip), %rcx
	.p2align	4
.LBB36_1:                               # %.preheader17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_2 Depth 2
                                        #       Child Loop BB36_3 Depth 3
	movl	$1, %edx
	movq	%rcx, %r8
	movq	%rax, %r9
	.p2align	4
.LBB36_2:                               # %.preheader
                                        #   Parent Loop BB36_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB36_3 Depth 3
	xorl	%r10d, %r10d
	.p2align	4
.LBB36_3:                               # %vector.body
                                        #   Parent Loop BB36_1 Depth=1
                                        #     Parent Loop BB36_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movaps	-1072(%r9,%r10,4), %xmm0
	movaps	-1056(%r9,%r10,4), %xmm1
	movaps	-1040(%r9,%r10,4), %xmm2
	movaps	-1024(%r9,%r10,4), %xmm3
	addps	-48(%r8,%r10,4), %xmm0
	addps	-32(%r8,%r10,4), %xmm1
	movaps	%xmm0, -48(%r9,%r10,4)
	movaps	%xmm1, -32(%r9,%r10,4)
	addps	-16(%r8,%r10,4), %xmm2
	addps	(%r8,%r10,4), %xmm3
	movaps	%xmm2, -16(%r9,%r10,4)
	movaps	%xmm3, (%r9,%r10,4)
	addq	$16, %r10
	cmpq	$256, %r10                      # imm = 0x100
	jne	.LBB36_3
# %bb.4:                                # %middle.block
                                        #   in Loop: Header=BB36_2 Depth=2
	incq	%rdx
	addq	$1024, %r9                      # imm = 0x400
	addq	$1024, %r8                      # imm = 0x400
	cmpq	$256, %rdx                      # imm = 0x100
	jne	.LBB36_2
# %bb.5:                                #   in Loop: Header=BB36_1 Depth=1
	incl	%edi
	cmpl	$200, %edi
	jne	.LBB36_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s121;
	.scl	2;
	.type	32;
	.endef
	.globl	s121                            # -- Begin function s121
	.p2align	4
s121:                                   # @s121
.seh_proc s121
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$80, %rsp
	.seh_stackalloc 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05LFMFCLCK@s121?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	b+127968(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	b+127972(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	b+127976(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	b+127980(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	b+127984(%rip), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	b+127988(%rip), %xmm5           # xmm5 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	movss	b+127992(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	leaq	a(%rip), %rcx
	leaq	b(%rip), %rdx
	jmp	.LBB37_1
	.p2align	4
.LBB37_4:                               # %scalar.ph
                                        #   in Loop: Header=BB37_1 Depth=1
	movss	a+127972(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm7
	movss	%xmm7, a+127968(%rip)
	movss	a+127976(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm7
	movss	%xmm7, a+127972(%rip)
	movss	a+127980(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm7
	movss	%xmm7, a+127976(%rip)
	movss	a+127984(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm3, %xmm7
	movss	%xmm7, a+127980(%rip)
	movss	a+127988(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm4, %xmm7
	movss	%xmm7, a+127984(%rip)
	movss	a+127992(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm7
	movss	%xmm7, a+127988(%rip)
	movss	a+127996(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm6, %xmm7
	movss	%xmm7, a+127992(%rip)
	incl	%eax
	cmpl	$768, %eax                      # imm = 0x300
	je	.LBB37_5
.LBB37_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_2 Depth 2
	xorl	%r8d, %r8d
	.p2align	4
.LBB37_2:                               # %vector.body
                                        #   Parent Loop BB37_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	4(%rcx,%r8,4), %xmm7
	movups	20(%rcx,%r8,4), %xmm8
	addps	(%rdx,%r8,4), %xmm7
	addps	16(%rdx,%r8,4), %xmm8
	movaps	%xmm7, (%rcx,%r8,4)
	movaps	%xmm8, 16(%rcx,%r8,4)
	cmpq	$31984, %r8                     # imm = 0x7CF0
	je	.LBB37_4
# %bb.3:                                # %vector.body.1
                                        #   in Loop: Header=BB37_2 Depth=2
	movups	36(%rcx,%r8,4), %xmm7
	movups	52(%rcx,%r8,4), %xmm8
	addps	32(%rdx,%r8,4), %xmm7
	addps	48(%rdx,%r8,4), %xmm8
	movaps	%xmm7, 32(%rcx,%r8,4)
	movaps	%xmm8, 48(%rcx,%r8,4)
	addq	$16, %r8
	jmp	.LBB37_2
.LBB37_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	.seh_startepilogue
	addq	$80, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s122;
	.scl	2;
	.type	32;
	.endef
	.globl	s122                            # -- Begin function s122
	.p2align	4
s122:                                   # @s122
.seh_proc s122
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movl	%edx, %esi
	movl	%ecx, %edi
	leaq	"??_C@_05LHIDJFHD@s122?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %ebx
	decl	%edi
	cmpl	$31999, %edi                    # imm = 0x7CFF
	jg	.LBB38_5
# %bb.1:                                # %.lr.ph.preheader
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB38_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_3 Depth 2
	movl	$31999, %r8d                    # imm = 0x7CFF
	movl	%edi, %r9d
	.p2align	4
.LBB38_3:                               #   Parent Loop BB38_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r8d, %r8
	movss	(%rcx,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movslq	%r9d, %r9
	addss	(%rdx,%r9,4), %xmm0
	movss	%xmm0, (%rdx,%r9,4)
	addl	%esi, %r9d
	decl	%r8d
	cmpl	$32000, %r9d                    # imm = 0x7D00
	jl	.LBB38_3
# %bb.4:                                # %._crit_edge
                                        #   in Loop: Header=BB38_2 Depth=1
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB38_2
.LBB38_5:                               # %.split18
	callq	clock
	subl	%ebx, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s123;
	.scl	2;
	.type	32;
	.endef
	.globl	s123                            # -- Begin function s123
	.p2align	4
s123:                                   # @s123
.seh_proc s123
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
	leaq	"??_C@_05LGEBPPEE@s123?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	d(%rip), %rcx
	leaq	e(%rip), %rdx
	leaq	a(%rip), %r8
	leaq	c(%rip), %r9
	xorps	%xmm0, %xmm0
	jmp	.LBB39_1
	.p2align	4
.LBB39_5:                               #   in Loop: Header=BB39_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB39_6
.LBB39_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_2 Depth 2
	movl	$-1, %r11d
	xorl	%r10d, %r10d
	jmp	.LBB39_2
	.p2align	4
.LBB39_4:                               #   in Loop: Header=BB39_2 Depth=2
	addq	$4, %r10
	movl	%ebx, %r11d
	cmpq	$64000, %r10                    # imm = 0xFA00
	je	.LBB39_5
.LBB39_2:                               #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rdx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%r10,%rcx), %xmm1
	leal	1(%r11), %ebx
	movss	(%r10,%rax), %xmm2              # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movslq	%ebx, %r14
	movss	%xmm2, (%r8,%r14,4)
	movss	(%r10,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB39_4
# %bb.3:                                #   in Loop: Header=BB39_2 Depth=2
	addl	$2, %r11d
	addss	%xmm2, %xmm1
	movslq	%r11d, %rbx
	movss	%xmm1, (%r8,%rbx,4)
	movl	%r11d, %ebx
	jmp	.LBB39_4
.LBB39_6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
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
	.def	s124;
	.scl	2;
	.type	32;
	.endef
	.globl	s124                            # -- Begin function s124
	.p2align	4
s124:                                   # @s124
.seh_proc s124
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05LDAOOJMB@s124?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	e(%rip), %r8
	leaq	a(%rip), %r9
	.p2align	4
.LBB40_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_2 Depth 2
	xorl	%r10d, %r10d
	.p2align	4
.LBB40_2:                               # %vector.body
                                        #   Parent Loop BB40_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r10,%rax), %xmm0
	movaps	16(%r10,%rax), %xmm1
	xorps	%xmm2, %xmm2
	cmpltps	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	cmpltps	%xmm1, %xmm3
	andps	%xmm2, %xmm0
	andnps	(%r10,%rcx), %xmm2
	orps	%xmm0, %xmm2
	andps	%xmm3, %xmm1
	andnps	16(%r10,%rcx), %xmm3
	orps	%xmm1, %xmm3
	movaps	(%r10,%rdx), %xmm0
	movaps	16(%r10,%rdx), %xmm1
	mulps	(%r10,%r8), %xmm0
	addps	%xmm2, %xmm0
	mulps	16(%r10,%r8), %xmm1
	addps	%xmm3, %xmm1
	movaps	%xmm0, (%r10,%r9)
	movaps	%xmm1, 16(%r10,%r9)
	addq	$32, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	jne	.LBB40_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB40_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB40_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s125;
	.scl	2;
	.type	32;
	.endef
	.globl	s125                            # -- Begin function s125
	.p2align	4
s125:                                   # @s125
.seh_proc s125
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05LCMMIDPG@s125?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	bb+4(%rip), %r9
	leaq	aa+4(%rip), %r10
	leaq	array(%rip), %r11
	jmp	.LBB41_1
	.p2align	4
.LBB41_9:                               #   in Loop: Header=BB41_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	je	.LBB41_10
.LBB41_1:                               # %.preheader20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_2 Depth 2
                                        #       Child Loop BB41_7 Depth 3
                                        #       Child Loop BB41_4 Depth 3
	movl	$-1, %eax
	movq	%r10, %rbx
	movq	%r9, %r14
	leaq	cc+4(%rip), %r15
	leaq	aa+16(%rip), %r12
	leaq	bb+16(%rip), %r13
	leaq	cc+16(%rip), %rbp
	xorl	%esi, %esi
	jmp	.LBB41_2
	.p2align	4
.LBB41_8:                               # %middle.block
                                        #   in Loop: Header=BB41_2 Depth=2
	incq	%rsi
	addq	$1024, %rbp                     # imm = 0x400
	addq	$1024, %r13                     # imm = 0x400
	addq	$1024, %r12                     # imm = 0x400
	addq	$1024, %r15                     # imm = 0x400
	addq	$1024, %r14                     # imm = 0x400
	addq	$1024, %rbx                     # imm = 0x400
	movl	%ecx, %eax
	cmpq	$256, %rsi                      # imm = 0x100
	je	.LBB41_9
.LBB41_2:                               # %.preheader
                                        #   Parent Loop BB41_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB41_7 Depth 3
                                        #       Child Loop BB41_4 Depth 3
	leal	1(%rax), %edx
	leal	256(%rax), %ecx
	cmpl	%edx, %ecx
	jge	.LBB41_6
# %bb.3:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB41_2 Depth=2
	movl	%eax, %edx
	movq	$-256, %rcx
	.p2align	4
.LBB41_4:                               # %scalar.ph
                                        #   Parent Loop BB41_1 Depth=1
                                        #     Parent Loop BB41_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	1020(%r14,%rcx,4), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	1020(%r15,%rcx,4), %xmm0
	addss	1020(%rbx,%rcx,4), %xmm0
	leal	(%rdx,%rcx), %r8d
	addl	$257, %r8d                      # imm = 0x101
	movslq	%r8d, %r8
	movss	%xmm0, (%r11,%r8,4)
	movss	1024(%r14,%rcx,4), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	1024(%r15,%rcx,4), %xmm0
	addss	1024(%rbx,%rcx,4), %xmm0
	leal	(%rdx,%rcx), %r8d
	addl	$258, %r8d                      # imm = 0x102
	movslq	%r8d, %r8
	movss	%xmm0, (%r11,%r8,4)
	addq	$2, %rcx
	jne	.LBB41_4
# %bb.5:                                # %middle.block.loopexit
                                        #   in Loop: Header=BB41_2 Depth=2
	addl	%eax, %ecx
	addl	$256, %ecx                      # imm = 0x100
	jmp	.LBB41_8
	.p2align	4
.LBB41_6:                               # %vector.ph
                                        #   in Loop: Header=BB41_2 Depth=2
	movl	%edx, %eax
	xorl	%edx, %edx
	.p2align	4
.LBB41_7:                               # %vector.body
                                        #   Parent Loop BB41_1 Depth=1
                                        #     Parent Loop BB41_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movaps	-16(%r13,%rdx,4), %xmm0
	movaps	(%r13,%rdx,4), %xmm1
	mulps	-16(%rbp,%rdx,4), %xmm0
	addps	-16(%r12,%rdx,4), %xmm0
	mulps	(%rbp,%rdx,4), %xmm1
	leal	(%rax,%rdx), %r8d
	addps	(%r12,%rdx,4), %xmm1
	movslq	%r8d, %r8
	movups	%xmm0, (%r11,%r8,4)
	movups	%xmm1, 16(%r11,%r8,4)
	addq	$8, %rdx
	cmpq	$256, %rdx                      # imm = 0x100
	jne	.LBB41_7
	jmp	.LBB41_8
.LBB41_10:
	callq	clock
	subl	36(%rsp), %eax                  # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorl	%ecx, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s126;
	.scl	2;
	.type	32;
	.endef
	.globl	s126                            # -- Begin function s126
	.p2align	4
s126:                                   # @s126
.seh_proc s126
# %bb.0:                                # %.preheader21
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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	leaq	"??_C@_05LAIKDNKP@s126?5?$AA@"(%rip), %rcx
	callq	init
	movl	$1, %edi
	leaq	cc+1024(%rip), %rbx
	leaq	bb+1024(%rip), %r14
	xorl	%esi, %esi
	callq	clock
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	leaq	array(%rip), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movl	$1, %r8d
	movl	$1, %r9d
	movl	$1, %r10d
	movl	$1, %r11d
	movl	$1, %r12d
	movl	$1, %r13d
	movl	$1, %ebp
	.p2align	4
.LBB42_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_2 Depth 2
                                        #     Child Loop BB42_4 Depth 2
                                        #     Child Loop BB42_6 Depth 2
                                        #     Child Loop BB42_8 Depth 2
                                        #     Child Loop BB42_10 Depth 2
                                        #     Child Loop BB42_12 Depth 2
                                        #     Child Loop BB42_14 Depth 2
                                        #     Child Loop BB42_16 Depth 2
                                        #     Child Loop BB42_18 Depth 2
                                        #     Child Loop BB42_20 Depth 2
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	incl	%edi
	xorl	%esi, %esi
	.p2align	4
.LBB42_2:                               #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%rdi), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%edi
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_2
# %bb.3:                                # %.preheader.1
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%ecx
	xorl	%esi, %esi
	.p2align	4
.LBB42_4:                               #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%rcx), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%ecx
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_4
# %bb.5:                                # %.preheader.2
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%edx
	xorl	%esi, %esi
	.p2align	4
.LBB42_6:                               #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%rdx), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%edx
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_6
# %bb.7:                                # %.preheader.3
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%r8d
	xorl	%esi, %esi
	.p2align	4
.LBB42_8:                               #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r8), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%r8d
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_8
# %bb.9:                                # %.preheader.4
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%r9d
	xorl	%esi, %esi
	.p2align	4
.LBB42_10:                              #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r9), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%r9d
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_10
# %bb.11:                               # %.preheader.5
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%r10d
	xorl	%esi, %esi
	.p2align	4
.LBB42_12:                              #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r10), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%r10d
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_12
# %bb.13:                               # %.preheader.6
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%r11d
	xorl	%esi, %esi
	.p2align	4
.LBB42_14:                              #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r11), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%r11d
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_14
# %bb.15:                               # %.preheader.7
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%r12d
	xorl	%esi, %esi
	.p2align	4
.LBB42_16:                              #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r12), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%r12d
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_16
# %bb.17:                               # %.preheader.8
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%r13d
	xorl	%esi, %esi
	.p2align	4
.LBB42_18:                              #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r13), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%r13d
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_18
# %bb.19:                               # %.preheader.9
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%ebp
	xorl	%esi, %esi
	.p2align	4
.LBB42_20:                              #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%rbp), %r15d
	movslq	%r15d, %r15
	movss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi), %xmm0
	addss	-1024(%r14,%rsi), %xmm0
	movss	%xmm0, (%r14,%rsi)
	addq	$1024, %rsi                     # imm = 0x400
	incl	%ebp
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB42_20
# %bb.21:                               #   in Loop: Header=BB42_1 Depth=1
	movq	48(%rsp), %rsi                  # 8-byte Reload
	incq	%rsi
	addq	$4, %rbx
	addq	$4, %r14
	cmpq	$256, %rsi                      # imm = 0x100
	jne	.LBB42_1
# %bb.22:
	callq	clock
	subl	44(%rsp), %eax                  # 4-byte Folded Reload
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$22, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$56, %rsp
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
	.def	s127;
	.scl	2;
	.type	32;
	.endef
	.globl	s127                            # -- Begin function s127
	.p2align	4
s127:                                   # @s127
.seh_proc s127
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05LBEIFHJI@s127?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	e(%rip), %r9
	.p2align	4
.LBB43_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_2 Depth 2
	movq	%rax, %r10
	xorl	%r11d, %r11d
	.p2align	4
.LBB43_2:                               # %vector.body
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r11,%rcx), %xmm0
	movaps	(%r11,%r8), %xmm1
	movaps	(%r11,%rdx), %xmm2
	mulps	%xmm1, %xmm2
	addps	%xmm0, %xmm2
	mulps	(%r11,%r9), %xmm1
	addps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	unpcklps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	unpckhps	%xmm1, %xmm2                    # xmm2 = xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	movaps	%xmm2, 16(%r10)
	movaps	%xmm0, (%r10)
	addq	$16, %r11
	addq	$32, %r10
	cmpq	$64000, %r11                    # imm = 0xFA00
	jne	.LBB43_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB43_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB43_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s128;
	.scl	2;
	.type	32;
	.endef
	.globl	s128                            # -- Begin function s128
	.p2align	4
s128:                                   # @s128
.seh_proc s128
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	movaps	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05LKBEBAKF@s128?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	d+63984(%rip), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	c+127968(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	d+63988(%rip), %xmm2            # xmm2 = mem[0],zero,zero,zero
	movss	c+127976(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	d+63992(%rip), %xmm4            # xmm4 = mem[0],zero,zero,zero
	movss	c+127984(%rip), %xmm5           # xmm5 = mem[0],zero,zero,zero
	movss	d+63996(%rip), %xmm6            # xmm6 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	movss	c+127992(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	leaq	c(%rip), %rcx
	leaq	b(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	a(%rip), %r9
	.p2align	4
.LBB44_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_2 Depth 2
	movq	%rcx, %r10
	xorl	%r11d, %r11d
	.p2align	4
.LBB44_2:                               # %vector.body
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%rdx,%r11,2), %xmm8
	shufps	$136, 16(%rdx,%r11,2), %xmm8    # xmm8 = xmm8[0,2],mem[0,2]
	subps	(%r11,%r8), %xmm8
	movaps	%xmm8, (%r11,%r9)
	movaps	(%r10), %xmm9
	shufps	$136, 16(%r10), %xmm9           # xmm9 = xmm9[0,2],mem[0,2]
	addps	%xmm8, %xmm9
	movss	%xmm9, (%rdx,%r11,2)
	movaps	%xmm9, %xmm8
	shufps	$85, %xmm9, %xmm8               # xmm8 = xmm8[1,1],xmm9[1,1]
	movss	%xmm8, 8(%rdx,%r11,2)
	movaps	%xmm9, %xmm8
	unpckhpd	%xmm9, %xmm8                    # xmm8 = xmm8[1],xmm9[1]
	movss	%xmm8, 16(%rdx,%r11,2)
	shufps	$255, %xmm9, %xmm9              # xmm9 = xmm9[3,3,3,3]
	movss	%xmm9, 24(%rdx,%r11,2)
	addq	$16, %r11
	addq	$32, %r10
	cmpq	$63984, %r11                    # imm = 0xF9F0
	jne	.LBB44_2
# %bb.3:                                # %scalar.ph
                                        #   in Loop: Header=BB44_1 Depth=1
	movss	b+127968(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm8
	movss	%xmm8, a+63984(%rip)
	addss	%xmm1, %xmm8
	movss	%xmm8, b+127968(%rip)
	movss	b+127976(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm8
	movss	%xmm8, a+63988(%rip)
	addss	%xmm3, %xmm8
	movss	%xmm8, b+127976(%rip)
	movss	b+127984(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm8
	movss	%xmm8, a+63992(%rip)
	addss	%xmm5, %xmm8
	movss	%xmm8, b+127984(%rip)
	movss	b+127992(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm8
	movss	%xmm8, a+63996(%rip)
	addss	%xmm7, %xmm8
	movss	%xmm8, b+127992(%rip)
	incl	%eax
	cmpl	$512, %eax                      # imm = 0x200
	jne	.LBB44_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s131;
	.scl	2;
	.type	32;
	.endef
	.globl	s131                            # -- Begin function s131
	.p2align	4
s131:                                   # @s131
.seh_proc s131
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$80, %rsp
	.seh_stackalloc 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NHJEMEP@s131?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	b+127968(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	b+127972(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	b+127976(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	b+127980(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	b+127984(%rip), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	b+127988(%rip), %xmm5           # xmm5 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	movss	b+127992(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	leaq	a(%rip), %rcx
	leaq	b(%rip), %rdx
	jmp	.LBB45_1
	.p2align	4
.LBB45_4:                               # %scalar.ph
                                        #   in Loop: Header=BB45_1 Depth=1
	movss	a+127972(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm7
	movss	%xmm7, a+127968(%rip)
	movss	a+127976(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm7
	movss	%xmm7, a+127972(%rip)
	movss	a+127980(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm7
	movss	%xmm7, a+127976(%rip)
	movss	a+127984(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm3, %xmm7
	movss	%xmm7, a+127980(%rip)
	movss	a+127988(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm4, %xmm7
	movss	%xmm7, a+127984(%rip)
	movss	a+127992(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm7
	movss	%xmm7, a+127988(%rip)
	movss	a+127996(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	addss	%xmm6, %xmm7
	movss	%xmm7, a+127992(%rip)
	incl	%eax
	cmpl	$1280, %eax                     # imm = 0x500
	je	.LBB45_5
.LBB45_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_2 Depth 2
	xorl	%r8d, %r8d
	.p2align	4
.LBB45_2:                               # %vector.body
                                        #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	4(%rcx,%r8,4), %xmm7
	movups	20(%rcx,%r8,4), %xmm8
	addps	(%rdx,%r8,4), %xmm7
	addps	16(%rdx,%r8,4), %xmm8
	movaps	%xmm7, (%rcx,%r8,4)
	movaps	%xmm8, 16(%rcx,%r8,4)
	cmpq	$31984, %r8                     # imm = 0x7CF0
	je	.LBB45_4
# %bb.3:                                # %vector.body.1
                                        #   in Loop: Header=BB45_2 Depth=2
	movups	36(%rcx,%r8,4), %xmm7
	movups	52(%rcx,%r8,4), %xmm8
	addps	32(%rdx,%r8,4), %xmm7
	addps	48(%rdx,%r8,4), %xmm8
	movaps	%xmm7, 32(%rcx,%r8,4)
	movaps	%xmm8, 48(%rcx,%r8,4)
	addq	$16, %r8
	jmp	.LBB45_2
.LBB45_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	.seh_startepilogue
	addq	$80, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s132;
	.scl	2;
	.type	32;
	.endef
	.globl	s132                            # -- Begin function s132
	.p2align	4
s132:                                   # @s132
.seh_proc s132
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	movaps	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05PDPPCBG@s132?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	c+4(%rip), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm0, %xmm1                # xmm1 = xmm1[0,0],xmm0[0,0]
	xorl	%eax, %eax
	leaq	aa(%rip), %rcx
	leaq	b(%rip), %rdx
	movss	b+996(%rip), %xmm2              # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	movss	b+1000(%rip), %xmm3             # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	movss	b+1004(%rip), %xmm4             # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	movss	b+1008(%rip), %xmm5             # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	movss	b+1012(%rip), %xmm6             # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm6
	movss	b+1016(%rip), %xmm7             # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm7
	mulss	b+1020(%rip), %xmm0
	.p2align	4
.LBB46_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_2 Depth 2
	xorl	%r8d, %r8d
	.p2align	4
.LBB46_2:                               # %vector.body
                                        #   Parent Loop BB46_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	4(%rdx,%r8,4), %xmm8
	mulps	%xmm1, %xmm8
	addps	1024(%rcx,%r8,4), %xmm8
	movups	20(%rdx,%r8,4), %xmm9
	mulps	%xmm1, %xmm9
	addps	1040(%rcx,%r8,4), %xmm9
	movups	%xmm8, 4(%rcx,%r8,4)
	movups	%xmm9, 20(%rcx,%r8,4)
	addq	$8, %r8
	cmpq	$248, %r8
	jne	.LBB46_2
# %bb.3:                                # %scalar.ph
                                        #   in Loop: Header=BB46_1 Depth=1
	movss	aa+2016(%rip), %xmm8            # xmm8 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm8
	movss	%xmm8, aa+996(%rip)
	movss	aa+2020(%rip), %xmm8            # xmm8 = mem[0],zero,zero,zero
	addss	%xmm3, %xmm8
	movss	%xmm8, aa+1000(%rip)
	movss	aa+2024(%rip), %xmm8            # xmm8 = mem[0],zero,zero,zero
	addss	%xmm4, %xmm8
	movss	%xmm8, aa+1004(%rip)
	movss	aa+2028(%rip), %xmm8            # xmm8 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm8
	movss	%xmm8, aa+1008(%rip)
	movss	aa+2032(%rip), %xmm8            # xmm8 = mem[0],zero,zero,zero
	addss	%xmm6, %xmm8
	movss	%xmm8, aa+1012(%rip)
	movss	aa+2036(%rip), %xmm8            # xmm8 = mem[0],zero,zero,zero
	addss	%xmm7, %xmm8
	movss	%xmm8, aa+1016(%rip)
	movss	aa+2040(%rip), %xmm8            # xmm8 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm8
	movss	%xmm8, aa+1020(%rip)
	incl	%eax
	cmpl	$102400, %eax                   # imm = 0x19000
	jne	.LBB46_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s141;
	.scl	2;
	.type	32;
	.endef
	.globl	s141                            # -- Begin function s141
	.p2align	4
s141:                                   # @s141
.seh_proc s141
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05JAKOHEPG@s141?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	bb(%rip), %rax
	leaq	array(%rip), %rcx
	jmp	.LBB47_1
	.p2align	4
.LBB47_9:                               #   in Loop: Header=BB47_1 Depth=1
	incl	%edi
	cmpl	$200, %edi
	je	.LBB47_10
.LBB47_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_3 Depth 2
                                        #       Child Loop BB47_8 Depth 3
	movq	%rax, %rdx
	xorl	%r8d, %r8d
	jmp	.LBB47_3
	.p2align	4
.LBB47_2:                               # %.loopexit
                                        #   in Loop: Header=BB47_3 Depth=2
	addq	$4, %rdx
	cmpq	$256, %r8                       # imm = 0x100
	je	.LBB47_9
.LBB47_3:                               #   Parent Loop BB47_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_8 Depth 3
	movq	%r8, %r11
	incq	%r8
	movl	%r8d, %r9d
	imull	%r11d, %r9d
	shrl	%r9d
	addl	%r11d, %r9d
	testb	$1, %r11b
	jne	.LBB47_5
# %bb.4:                                #   in Loop: Header=BB47_3 Depth=2
	movq	%r11, %r10
	cmpq	$255, %r11
	je	.LBB47_2
	jmp	.LBB47_7
	.p2align	4
.LBB47_5:                               # %.prol.loopexit.unr-lcssa
                                        #   in Loop: Header=BB47_3 Depth=2
	leaq	(%rax,%r11,4), %r10
	movq	%r11, %rbx
	shlq	$10, %rbx
	movss	(%r10,%rbx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movslq	%r9d, %r9
	addss	(%rcx,%r9,4), %xmm0
	movss	%xmm0, (%rcx,%r9,4)
	leaq	1(%r11), %r10
	addl	%r10d, %r9d
	cmpq	$255, %r11
	je	.LBB47_2
.LBB47_7:                               # %.new.preheader
                                        #   in Loop: Header=BB47_3 Depth=2
	leaq	-256(%r10), %r11
	shlq	$10, %r10
	addq	%rdx, %r10
	.p2align	4
.LBB47_8:                               # %.new
                                        #   Parent Loop BB47_1 Depth=1
                                        #     Parent Loop BB47_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%r10), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r9d, %r9
	addss	(%rcx,%r9,4), %xmm0
	movss	%xmm0, (%rcx,%r9,4)
	leal	(%r9,%r11), %ebx
	leal	257(%r11,%r9), %r9d
	movss	1024(%r10), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movslq	%r9d, %r9
	addss	(%rcx,%r9,4), %xmm0
	movss	%xmm0, (%rcx,%r9,4)
	leal	(%r11,%rbx), %r9d
	addl	$515, %r9d                      # imm = 0x203
	addq	$2048, %r10                     # imm = 0x800
	addq	$2, %r11
	jne	.LBB47_8
	jmp	.LBB47_2
.LBB47_10:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorl	%ecx, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s151s;
	.scl	2;
	.type	32;
	.endef
	.globl	s151s                           # -- Begin function s151s
	.p2align	4
s151s:                                  # @s151s
# %bb.0:                                # %vector.scevcheck
                                        # kill: def $r8d killed $r8d def $r8
	cmpl	$2147451649, %r8d               # imm = 0x7FFF8301
	jg	.LBB48_1
# %bb.2:                                # %vector.memcheck
	movslq	%r8d, %rax
	shlq	$2, %rax
	cmpq	$-31, %rax
	setae	%al
	movq	%rdx, %r9
	subq	%rcx, %r9
	cmpq	$-31, %r9
	setae	%r9b
	orb	%al, %r9b
	je	.LBB48_4
.LBB48_1:
	xorl	%eax, %eax
	jmp	.LBB48_8
.LBB48_4:                               # %vector.body.preheader
	movl	$48, %eax
	movl	%r8d, %r9d
	.p2align	4
.LBB48_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %r10
	movups	(%rcx,%r10,4), %xmm0
	movups	16(%rcx,%r10,4), %xmm1
	movups	-48(%rdx,%rax), %xmm2
	addps	%xmm0, %xmm2
	movups	-32(%rdx,%rax), %xmm0
	addps	%xmm1, %xmm0
	movups	%xmm2, -48(%rcx,%rax)
	movups	%xmm0, -32(%rcx,%rax)
	cmpq	$127984, %rax                   # imm = 0x1F3F0
	je	.LBB48_7
# %bb.6:                                # %vector.body.1
                                        #   in Loop: Header=BB48_5 Depth=1
	leal	8(%r9), %r10d
	movslq	%r10d, %r10
	movups	(%rcx,%r10,4), %xmm0
	movups	16(%rcx,%r10,4), %xmm1
	movups	-16(%rdx,%rax), %xmm2
	addps	%xmm0, %xmm2
	movups	(%rdx,%rax), %xmm0
	addps	%xmm1, %xmm0
	movups	%xmm2, -16(%rcx,%rax)
	movups	%xmm0, (%rcx,%rax)
	addq	$64, %rax
	addl	$16, %r9d
	jmp	.LBB48_5
.LBB48_7:
	movl	$31992, %eax                    # imm = 0x7CF8
.LBB48_8:                               # %scalar.ph.prol
	leal	(%r8,%rax), %r9d
	movslq	%r9d, %r9
	movss	(%rcx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	leal	(,%rax,4), %r9d
	addss	(%rdx,%r9), %xmm0
	movss	%xmm0, (%rcx,%r9)
	addq	$-31998, %rax                   # imm = 0x8302
	movl	%r8d, %r8d
	.p2align	4
.LBB48_9:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r8,%rax), %r9d
	addl	$31999, %r9d                    # imm = 0x7CFF
	movslq	%r9d, %r9
	movss	(%rcx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	127996(%rdx,%rax,4), %xmm0
	movss	%xmm0, 127996(%rcx,%rax,4)
	leal	32000(%r8,%rax), %r9d
	movslq	%r9d, %r9
	movss	(%rcx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	128000(%rdx,%rax,4), %xmm0
	movss	%xmm0, 128000(%rcx,%rax,4)
	addq	$2, %rax
	jne	.LBB48_9
# %bb.10:                               # %.unr-lcssa
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	s151;
	.scl	2;
	.type	32;
	.endef
	.globl	s151                            # -- Begin function s151
	.p2align	4
s151:                                   # @s151
.seh_proc s151
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05CIBCBDJD@s151?5?$AA@"(%rip), %rcx
	callq	init
	movl	$1280, %ebp                     # imm = 0x500
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rdi
	leaq	b(%rip), %rbx
	.p2align	4
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	movl	$1, %r8d
	callq	s151s
	decl	%ebp
	jne	.LBB49_1
# %bb.2:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s152s;
	.scl	2;
	.type	32;
	.endef
	.globl	s152s                           # -- Begin function s152s
	.p2align	4
s152s:                                  # @s152s
# %bb.0:
	movslq	%r9d, %rax
	movss	(%rdx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%r8,%rax,4), %xmm0
	addss	(%rcx,%rax,4), %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	s152;
	.scl	2;
	.type	32;
	.endef
	.globl	s152                            # -- Begin function s152
	.p2align	4
s152:                                   # @s152
.seh_proc s152
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05CKFEKNMK@s152?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%r15d, %r15d
	callq	clock
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	d(%rip), %r12
	leaq	e(%rip), %r13
	leaq	b(%rip), %rdi
	leaq	a(%rip), %rbx
	leaq	c(%rip), %r14
	.p2align	4
.LBB51_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_2 Depth 2
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	.p2align	4
.LBB51_2:                               #   Parent Loop BB51_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rsi,%r12), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	(%rsi,%r13), %xmm0
	movss	%xmm0, (%rsi,%rdi)
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	movq	%r14, %r8
	movl	%ebp, %r9d
	callq	s152s
	addq	$4, %rsi
	incl	%ebp
	cmpq	$128000, %rsi                   # imm = 0x1F400
	jne	.LBB51_2
# %bb.3:                                #   in Loop: Header=BB51_1 Depth=1
	incl	%r15d
	cmpl	$256, %r15d                     # imm = 0x100
	jne	.LBB51_1
# %bb.4:
	callq	clock
	subl	36(%rsp), %eax                  # 4-byte Folded Reload
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s161;
	.scl	2;
	.type	32;
	.endef
	.globl	s161                            # -- Begin function s161
	.p2align	4
s161:                                   # @s161
.seh_proc s161
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05DKKHLMHN@s161?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	d(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	c(%rip), %r8
	leaq	e(%rip), %r9
	jmp	.LBB52_1
	.p2align	4
.LBB52_6:                               #   in Loop: Header=BB52_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	je	.LBB52_7
.LBB52_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB52_2
	.p2align	4
.LBB52_4:                               #   in Loop: Header=BB52_2 Depth=2
	mulss	%xmm1, %xmm1
	addss	(%r10,%rdx), %xmm1
	movss	%xmm1, 4(%r10,%r8)
	addq	$4, %r10
	cmpq	$127996, %r10                   # imm = 0x1F3FC
	je	.LBB52_6
.LBB52_2:                               #   Parent Loop BB52_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ucomiss	(%r10,%rax), %xmm0
	movss	(%r10,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	ja	.LBB52_4
# %bb.3:                                #   in Loop: Header=BB52_2 Depth=2
	mulss	(%r10,%r9), %xmm1
	addss	(%r10,%r8), %xmm1
	movss	%xmm1, (%r10,%rdx)
	addq	$4, %r10
	cmpq	$127996, %r10                   # imm = 0x1F3FC
	jne	.LBB52_2
	jmp	.LBB52_6
.LBB52_7:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$13, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1161;
	.scl	2;
	.type	32;
	.endef
	.globl	s1161                           # -- Begin function s1161
	.p2align	4
s1161:                                  # @s1161
.seh_proc s1161
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05DKKHLMHN@s161?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	a(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	b(%rip), %r8
	leaq	e(%rip), %r9
	jmp	.LBB53_1
	.p2align	4
.LBB53_6:                               #   in Loop: Header=BB53_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB53_7
.LBB53_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB53_2
	.p2align	4
.LBB53_4:                               #   in Loop: Header=BB53_2 Depth=2
	movss	(%r10,%rdx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	addss	(%r10,%rcx), %xmm1
	movq	%r8, %r11
	movss	%xmm1, (%r11,%r10)
	addq	$4, %r10
	cmpq	$127996, %r10                   # imm = 0x1F3FC
	je	.LBB53_6
.LBB53_2:                               #   Parent Loop BB53_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rax), %xmm2              # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	ja	.LBB53_4
# %bb.3:                                #   in Loop: Header=BB53_2 Depth=2
	movss	(%r10,%rdx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%r10,%r9), %xmm1
	addss	%xmm2, %xmm1
	movq	%rcx, %r11
	movss	%xmm1, (%r11,%r10)
	addq	$4, %r10
	cmpq	$127996, %r10                   # imm = 0x1F3FC
	jne	.LBB53_2
	jmp	.LBB53_6
.LBB53_7:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$13, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s162;
	.scl	2;
	.type	32;
	.endef
	.globl	s162                            # -- Begin function s162
	.p2align	4
s162:                                   # @s162
.seh_proc s162
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%ecx, %esi
	leaq	"??_C@_05DIOBACCE@s162?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %edi
	testl	%esi, %esi
	jle	.LBB54_8
# %bb.1:                                # %vector.scevcheck.preheader
	movl	%esi, %eax
	xorl	%ecx, %ecx
	leaq	a(%rip), %rdx
	leaq	b(%rip), %r8
	leaq	c(%rip), %r9
	.p2align	4
.LBB54_2:                               # %vector.scevcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_3 Depth 2
                                        #     Child Loop BB54_6 Depth 2
	xorl	%r10d, %r10d
	cmpl	$2147451649, %esi               # imm = 0x7FFF8301
	jg	.LBB54_5
	.p2align	4
.LBB54_3:                               # %vector.body
                                        #   Parent Loop BB54_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%rax,%r10), %r11d
	movslq	%r11d, %r11
	movups	(%rdx,%r11,4), %xmm0
	movups	16(%rdx,%r11,4), %xmm1
	movaps	(%r8,%r10,4), %xmm2
	movaps	16(%r8,%r10,4), %xmm3
	mulps	(%r9,%r10,4), %xmm2
	addps	%xmm0, %xmm2
	mulps	16(%r9,%r10,4), %xmm3
	addps	%xmm1, %xmm3
	movaps	%xmm2, (%rdx,%r10,4)
	movaps	%xmm3, 16(%rdx,%r10,4)
	addq	$8, %r10
	cmpq	$31992, %r10                    # imm = 0x7CF8
	jne	.LBB54_3
# %bb.4:                                #   in Loop: Header=BB54_2 Depth=1
	movl	$31992, %r10d                   # imm = 0x7CF8
.LBB54_5:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB54_2 Depth=1
	leal	(,%r10,4), %r11d
	addl	%esi, %r10d
	.p2align	4
.LBB54_6:                               # %scalar.ph
                                        #   Parent Loop BB54_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r10d, %r10
	movss	(%r11,%r8), %xmm0               # xmm0 = mem[0],zero,zero,zero
	mulss	(%r11,%r9), %xmm0
	addss	(%rdx,%r10,4), %xmm0
	movss	%xmm0, (%r11,%rdx)
	addq	$4, %r11
	incl	%r10d
	cmpq	$127996, %r11                   # imm = 0x1F3FC
	jne	.LBB54_6
# %bb.7:                                # %.loopexit
                                        #   in Loop: Header=BB54_2 Depth=1
	incl	%ecx
	cmpl	$256, %ecx                      # imm = 0x100
	jne	.LBB54_2
.LBB54_8:                               # %.split17
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s171;
	.scl	2;
	.type	32;
	.endef
	.globl	s171                            # -- Begin function s171
	.p2align	4
s171:                                   # @s171
.seh_proc s171
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%ecx, %esi
	leaq	"??_C@_05ICBLNLBI@s171?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %edi
	leal	(%rsi,%rsi), %eax
	xorl	%ecx, %ecx
	leaq	b(%rip), %rdx
	leaq	a(%rip), %r8
	jmp	.LBB55_1
	.p2align	4
.LBB55_6:                               # %middle.block
                                        #   in Loop: Header=BB55_1 Depth=1
	incl	%ecx
	cmpl	$256, %ecx                      # imm = 0x100
	je	.LBB55_7
.LBB55_1:                               # %vector.scevcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_3 Depth 2
                                        #     Child Loop BB55_5 Depth 2
	cmpl	$1, %esi
	jne	.LBB55_2
# %bb.4:                                # %vector.body.preheader
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	$12, %r9d
	.p2align	4
.LBB55_5:                               # %vector.body
                                        #   Parent Loop BB55_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rdx,%r9,4), %xmm0
	movaps	-32(%rdx,%r9,4), %xmm1
	movaps	-16(%rdx,%r9,4), %xmm2
	movaps	(%rdx,%r9,4), %xmm3
	addps	-48(%r8,%r9,4), %xmm0
	addps	-32(%r8,%r9,4), %xmm1
	movaps	%xmm0, -48(%r8,%r9,4)
	movaps	%xmm1, -32(%r8,%r9,4)
	addps	-16(%r8,%r9,4), %xmm2
	addps	(%r8,%r9,4), %xmm3
	movaps	%xmm2, -16(%r8,%r9,4)
	movaps	%xmm3, (%r8,%r9,4)
	addq	$16, %r9
	cmpq	$32012, %r9                     # imm = 0x7D0C
	jne	.LBB55_5
	jmp	.LBB55_6
	.p2align	4
.LBB55_2:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	$1, %r9d
	xorl	%r10d, %r10d
	.p2align	4
.LBB55_3:                               # %scalar.ph
                                        #   Parent Loop BB55_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r10d, %r10
	movss	-4(%rdx,%r9,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	(%rdx,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	addss	(%r8,%r10,4), %xmm0
	movss	%xmm0, (%r8,%r10,4)
	leal	(%rsi,%r10), %r11d
	movslq	%r11d, %r11
	addss	(%r8,%r11,4), %xmm1
	movss	%xmm1, (%r8,%r11,4)
	addq	$2, %r9
	addl	%eax, %r10d
	cmpq	$32001, %r9                     # imm = 0x7D01
	jne	.LBB55_3
	jmp	.LBB55_6
.LBB55_7:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s172;
	.scl	2;
	.type	32;
	.endef
	.globl	s172                            # -- Begin function s172
	.p2align	4
s172:                                   # @s172
.seh_proc s172
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movl	%edx, %esi
	movl	%ecx, %edi
	leaq	"??_C@_05IAFNGFEB@s172?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %ebx
	decl	%edi
	cmpl	$31999, %edi                    # imm = 0x7CFF
	jg	.LBB56_7
# %bb.1:                                # %.lr.ph.preheader
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB56_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_3 Depth 2
                                        #     Child Loop BB56_5 Depth 2
	movl	%edi, %r8d
	.p2align	4
.LBB56_3:                               #   Parent Loop BB56_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r8d, %r8
	movss	(%rcx,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	(%rdx,%r8,4), %xmm0
	movss	%xmm0, (%rdx,%r8,4)
	addl	%esi, %r8d
	cmpl	$32000, %r8d                    # imm = 0x7D00
	jl	.LBB56_3
# %bb.4:                                # %._crit_edge.preheader
                                        #   in Loop: Header=BB56_2 Depth=1
	movl	%edi, %r8d
	.p2align	4
.LBB56_5:                               # %._crit_edge
                                        #   Parent Loop BB56_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r8d, %r8
	movss	(%rcx,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	(%rdx,%r8,4), %xmm0
	movss	%xmm0, (%rdx,%r8,4)
	addl	%esi, %r8d
	cmpl	$32000, %r8d                    # imm = 0x7D00
	jl	.LBB56_5
# %bb.6:                                # %._crit_edge.1
                                        #   in Loop: Header=BB56_2 Depth=1
	addl	$2, %eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB56_2
.LBB56_7:                               # %.split14
	callq	clock
	subl	%ebx, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s173;
	.scl	2;
	.type	32;
	.endef
	.globl	s173                            # -- Begin function s173
	.p2align	4
s173:                                   # @s173
.seh_proc s173
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05IBJPAPHG@s173?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB57_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_2 Depth 2
	movl	$12, %edx
	.p2align	4
.LBB57_2:                               # %vector.body
                                        #   Parent Loop BB57_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rax,%rdx,4), %xmm0
	movaps	-32(%rax,%rdx,4), %xmm1
	movaps	-16(%rax,%rdx,4), %xmm2
	movaps	(%rax,%rdx,4), %xmm3
	addps	-48(%rcx,%rdx,4), %xmm0
	addps	-32(%rcx,%rdx,4), %xmm1
	movaps	%xmm0, 63952(%rax,%rdx,4)
	movaps	%xmm1, 63968(%rax,%rdx,4)
	addps	-16(%rcx,%rdx,4), %xmm2
	addps	(%rcx,%rdx,4), %xmm3
	movaps	%xmm2, 63984(%rax,%rdx,4)
	movaps	%xmm3, 64000(%rax,%rdx,4)
	addq	$16, %rdx
	cmpq	$16012, %rdx                    # imm = 0x3E8C
	jne	.LBB57_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB57_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	jne	.LBB57_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s174;
	.scl	2;
	.type	32;
	.endef
	.globl	s174                            # -- Begin function s174
	.p2align	4
s174:                                   # @s174
.seh_proc s174
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movl	%ecx, %esi
	leaq	"??_C@_05IENABJPD@s174?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %edi
	testl	%esi, %esi
	jle	.LBB58_12
# %bb.1:                                # %.preheader.preheader
	movl	%esi, %eax
	leaq	-1(%rax), %rcx
	leal	(%rcx,%rsi), %edx
	cmpl	%esi, %edx
	setl	%r8b
	movq	%rcx, %rdx
	shrq	$32, %rdx
	setne	%dl
	orb	%r8b, %dl
	movl	%eax, %r8d
	andl	$2147483640, %r8d               # imm = 0x7FFFFFF8
	xorl	%r9d, %r9d
	leaq	a(%rip), %r10
	leaq	b(%rip), %r11
	jmp	.LBB58_2
	.p2align	4
.LBB58_11:                              # %._crit_edge
                                        #   in Loop: Header=BB58_2 Depth=1
	incl	%r9d
	cmpl	$2560, %r9d                     # imm = 0xA00
	je	.LBB58_12
.LBB58_2:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_5 Depth 2
                                        #     Child Loop BB58_10 Depth 2
	cmpl	$8, %esi
	setb	%bl
	orb	%dl, %bl
	testb	$1, %bl
	je	.LBB58_4
# %bb.3:                                #   in Loop: Header=BB58_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB58_7
	.p2align	4
.LBB58_4:                               # %vector.body.preheader
                                        #   in Loop: Header=BB58_2 Depth=1
	xorl	%ebx, %ebx
	.p2align	4
.LBB58_5:                               # %vector.body
                                        #   Parent Loop BB58_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r10,%rbx,4), %xmm0
	movaps	16(%r10,%rbx,4), %xmm1
	addps	(%r11,%rbx,4), %xmm0
	addps	16(%r11,%rbx,4), %xmm1
	leal	(%rax,%rbx), %ebp
	movslq	%ebp, %r14
	movups	%xmm0, (%r10,%r14,4)
	movups	%xmm1, 16(%r10,%r14,4)
	addq	$8, %rbx
	cmpq	%rbx, %r8
	jne	.LBB58_5
# %bb.6:                                # %middle.block
                                        #   in Loop: Header=BB58_2 Depth=1
	movq	%r8, %r14
	cmpl	%eax, %r8d
	je	.LBB58_11
.LBB58_7:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB58_2 Depth=1
	movq	%r14, %rbx
	testb	$1, %al
	je	.LBB58_9
# %bb.8:                                # %scalar.ph.prol
                                        #   in Loop: Header=BB58_2 Depth=1
	movss	(%r10,%r14,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	(%r11,%r14,4), %xmm0
	leal	(%rsi,%r14), %ebx
	movslq	%ebx, %rbx
	movss	%xmm0, (%r10,%rbx,4)
	leaq	1(%r14), %rbx
.LBB58_9:                               # %scalar.ph.prol.loopexit
                                        #   in Loop: Header=BB58_2 Depth=1
	cmpq	%rcx, %r14
	je	.LBB58_11
	.p2align	4
.LBB58_10:                              # %scalar.ph
                                        #   Parent Loop BB58_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	(%r11,%rbx,4), %xmm0
	leal	(%rax,%rbx), %ebp
	movslq	%ebp, %r14
	movss	%xmm0, (%r10,%r14,4)
	movss	4(%r10,%rbx,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	4(%r11,%rbx,4), %xmm0
	leal	(%rax,%rbx), %ebp
	incl	%ebp
	movslq	%ebp, %r14
	movss	%xmm0, (%r10,%r14,4)
	addq	$2, %rbx
	cmpq	%rbx, %rax
	jne	.LBB58_10
	jmp	.LBB58_11
.LBB58_12:                              # %.split16
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s175;
	.scl	2;
	.type	32;
	.endef
	.globl	s175                            # -- Begin function s175
	.p2align	4
s175:                                   # @s175
.seh_proc s175
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movl	%ecx, %esi
	leaq	"??_C@_05IFBCHDME@s175?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB59_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_2 Depth 2
	xorl	%edx, %edx
	.p2align	4
.LBB59_2:                               #   Parent Loop BB59_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %r8
	addl	%esi, %edx
	movslq	%edx, %r9
	movss	(%rax,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	(%rcx,%r8,4), %xmm0
	movss	%xmm0, (%rax,%r8,4)
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$31999, %r9d                    # imm = 0x7CFF
	jl	.LBB59_2
# %bb.3:                                #   in Loop: Header=BB59_1 Depth=1
	incl	%ebx
	cmpl	$256, %ebx                      # imm = 0x100
	jne	.LBB59_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s176;
	.scl	2;
	.type	32;
	.endef
	.globl	s176                            # -- Begin function s176
	.p2align	4
s176:                                   # @s176
.seh_proc s176
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05IHFEMNJN@s176?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s211;
	.scl	2;
	.type	32;
	.endef
	.globl	s211                            # -- Begin function s211
	.p2align	4
s211:                                   # @s211
.seh_proc s211
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05OANAPOBE@s211?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	leaq	e(%rip), %r9
	.p2align	4
.LBB61_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_2 Depth 2
	movss	b(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	xorl	%r10d, %r10d
	.p2align	4
.LBB61_2:                               #   Parent Loop BB61_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	4(%r10,%rdx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movss	4(%r10,%rcx), %xmm2             # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 4(%r10,%r8)
	movss	8(%r10,%rax), %xmm0             # xmm0 = mem[0],zero,zero,zero
	mulss	4(%r10,%r9), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 4(%r10,%rax)
	addq	$4, %r10
	cmpq	$127992, %r10                   # imm = 0x1F3F8
	jne	.LBB61_2
# %bb.3:                                #   in Loop: Header=BB61_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB61_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s212;
	.scl	2;
	.type	32;
	.endef
	.globl	s212                            # -- Begin function s212
	.p2align	4
s212:                                   # @s212
.seh_proc s212
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05OCJGEAEN@s212?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rax
	leaq	a(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	b(%rip), %r8
	.p2align	4
.LBB62_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_2 Depth 2
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB62_2:                               #   Parent Loop BB62_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulss	(%r9,%rax), %xmm0
	movss	%xmm0, (%r9,%rcx)
	movss	4(%r9,%rcx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	(%r9,%r8), %xmm1
	movss	%xmm1, (%r9,%r8)
	addq	$4, %r9
	cmpq	$127996, %r9                    # imm = 0x1F3FC
	jne	.LBB62_2
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB62_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1213;
	.scl	2;
	.type	32;
	.endef
	.globl	s1213                           # -- Begin function s1213
	.p2align	4
s1213:                                  # @s1213
.seh_proc s1213
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05OCJGEAEN@s212?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	d(%rip), %r8
	.p2align	4
.LBB63_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_2 Depth 2
	movss	b(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB63_2:                               #   Parent Loop BB63_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addss	4(%rcx,%r9,4), %xmm0
	movss	%xmm0, 4(%rdx,%r9,4)
	movss	8(%rdx,%r9,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	4(%r8,%r9,4), %xmm0
	movss	%xmm0, 4(%rax,%r9,4)
	incq	%r9
	cmpq	$31998, %r9                     # imm = 0x7CFE
	jne	.LBB63_2
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB63_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s221;
	.scl	2;
	.type	32;
	.endef
	.globl	s221                            # -- Begin function s221
	.p2align	4
s221:                                   # @s221
.seh_proc s221
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05PCGFFBPK@s221?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rax
	leaq	d(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	b(%rip), %r8
	.p2align	4
.LBB64_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_2 Depth 2
	movl	$1, %r9d
	movss	b(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	.p2align	4
.LBB64_2:                               #   Parent Loop BB64_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movss	(%rax,%r9,4), %xmm2             # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	(%rdx,%r9,4), %xmm2
	movss	%xmm2, (%rdx,%r9,4)
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%r8,%r9,4)
	incq	%r9
	cmpq	$32000, %r9                     # imm = 0x7D00
	jne	.LBB64_2
# %bb.3:                                #   in Loop: Header=BB64_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	jne	.LBB64_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1221;
	.scl	2;
	.type	32;
	.endef
	.globl	s1221                           # -- Begin function s1221
	.p2align	4
s1221:                                  # @s1221
.seh_proc s1221
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05PCGFFBPK@s221?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	jmp	.LBB65_1
	.p2align	4
.LBB65_4:                               # %middle.block
                                        #   in Loop: Header=BB65_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB65_5
.LBB65_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_3 Depth 2
	movl	$8, %edx
	movaps	b(%rip), %xmm0
	addps	-16(%rcx,%rdx,4), %xmm0
	movaps	%xmm0, -16(%rax,%rdx,4)
	cmpq	$32000, %rdx                    # imm = 0x7D00
	je	.LBB65_4
	.p2align	4
.LBB65_3:                               # %vector.body.1
                                        #   Parent Loop BB65_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addps	(%rcx,%rdx,4), %xmm0
	movaps	%xmm0, (%rax,%rdx,4)
	addq	$8, %rdx
	addps	-16(%rcx,%rdx,4), %xmm0
	movaps	%xmm0, -16(%rax,%rdx,4)
	cmpq	$32000, %rdx                    # imm = 0x7D00
	jne	.LBB65_3
	jmp	.LBB65_4
.LBB65_5:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s222;
	.scl	2;
	.type	32;
	.endef
	.globl	s222                            # -- Begin function s222
	.p2align	4
s222:                                   # @s222
.seh_proc s222
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05PACDOPKD@s222?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	e(%rip), %r8
	.p2align	4
.LBB66_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_2 Depth 2
	movl	$1, %r9d
	movss	e(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	.p2align	4
.LBB66_2:                               #   Parent Loop BB66_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rax,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	mulss	(%rcx,%r9,4), %xmm1
	movss	(%rdx,%r9,4), %xmm2             # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	mulss	%xmm0, %xmm0
	movss	%xmm0, (%r8,%r9,4)
	subss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r9,4)
	incq	%r9
	cmpq	$32000, %r9                     # imm = 0x7D00
	jne	.LBB66_2
# %bb.3:                                #   in Loop: Header=BB66_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	jne	.LBB66_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s231;
	.scl	2;
	.type	32;
	.endef
	.globl	s231                            # -- Begin function s231
	.p2align	4
s231:                                   # @s231
.seh_proc s231
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05EKNJDGJP@s231?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	bb+3072(%rip), %rax
	leaq	aa+3072(%rip), %rcx
	.p2align	4
.LBB67_1:                               # %.preheader17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_2 Depth 2
                                        #       Child Loop BB67_3 Depth 3
	movq	%rcx, %rdx
	movq	%rax, %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB67_2:                               # %.preheader
                                        #   Parent Loop BB67_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_3 Depth 3
	xorl	%r10d, %r10d
	.p2align	4
.LBB67_3:                               #   Parent Loop BB67_1 Depth=1
                                        #     Parent Loop BB67_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-3072(%rdx,%r10), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-2048(%r8,%r10), %xmm0
	movss	%xmm0, -2048(%rdx,%r10)
	addss	-1024(%r8,%r10), %xmm0
	movss	%xmm0, -1024(%rdx,%r10)
	addss	(%r8,%r10), %xmm0
	movss	%xmm0, (%rdx,%r10)
	addq	$3072, %r10                     # imm = 0xC00
	cmpq	$261120, %r10                   # imm = 0x3FC00
	jne	.LBB67_3
# %bb.4:                                #   in Loop: Header=BB67_2 Depth=2
	incq	%r9
	addq	$4, %r8
	addq	$4, %rdx
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB67_2
# %bb.5:                                #   in Loop: Header=BB67_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	jne	.LBB67_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s232;
	.scl	2;
	.type	32;
	.endef
	.globl	s232                            # -- Begin function s232
	.p2align	4
s232:                                   # @s232
.seh_proc s232
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05EIJPIIMG@s232?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	bb+1040(%rip), %rax
	leaq	aa+1040(%rip), %rcx
	leaq	aa(%rip), %rdx
	leaq	bb(%rip), %r8
	jmp	.LBB68_1
	.p2align	4
.LBB68_11:                              #   in Loop: Header=BB68_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	je	.LBB68_12
.LBB68_1:                               # %.preheader20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_2 Depth 2
                                        #       Child Loop BB68_5 Depth 3
                                        #       Child Loop BB68_9 Depth 3
	movl	$1, %r9d
	movl	$1024, %r10d                    # imm = 0x400
	movq	%rcx, %r11
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB68_2
	.p2align	4
.LBB68_10:                              # %.epilog-lcssa
                                        #   in Loop: Header=BB68_2 Depth=2
	incq	%r9
	addq	$1024, %rbx                     # imm = 0x400
	addq	$1024, %r11                     # imm = 0x400
	addq	$1024, %r10                     # imm = 0x400
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB68_11
.LBB68_2:                               # %.preheader
                                        #   Parent Loop BB68_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_5 Depth 3
                                        #       Child Loop BB68_9 Depth 3
	movq	%r9, %r15
	shlq	$10, %r15
	movss	(%r15,%rdx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cmpq	$3, %r14
	leaq	1(%r14), %r14
	jae	.LBB68_4
# %bb.3:                                #   in Loop: Header=BB68_2 Depth=2
	movl	$1, %r15d
	jmp	.LBB68_8
	.p2align	4
.LBB68_4:                               # %.preheader.new
                                        #   in Loop: Header=BB68_2 Depth=2
	movq	%r9, %r12
	andq	$-4, %r12
	xorl	%r15d, %r15d
	.p2align	4
.LBB68_5:                               #   Parent Loop BB68_1 Depth=1
                                        #     Parent Loop BB68_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mulss	%xmm0, %xmm0
	addss	-12(%rbx,%r15,4), %xmm0
	movss	%xmm0, -12(%r11,%r15,4)
	mulss	%xmm0, %xmm0
	addss	-8(%rbx,%r15,4), %xmm0
	movss	%xmm0, -8(%r11,%r15,4)
	mulss	%xmm0, %xmm0
	addss	-4(%rbx,%r15,4), %xmm0
	movss	%xmm0, -4(%r11,%r15,4)
	mulss	%xmm0, %xmm0
	addss	(%rbx,%r15,4), %xmm0
	movss	%xmm0, (%r11,%r15,4)
	addq	$4, %r15
	cmpq	%r15, %r12
	jne	.LBB68_5
# %bb.6:                                # %.unr-lcssa
                                        #   in Loop: Header=BB68_2 Depth=2
	testb	$3, %r14b
	je	.LBB68_10
# %bb.7:                                #   in Loop: Header=BB68_2 Depth=2
	incq	%r15
.LBB68_8:                               # %.epil.preheader
                                        #   in Loop: Header=BB68_2 Depth=2
	movl	%r9d, %r12d
	andl	$3, %r12d
	shll	$2, %r12d
	leaq	(%r10,%r15,4), %r15
	xorl	%r13d, %r13d
	.p2align	4
.LBB68_9:                               #   Parent Loop BB68_1 Depth=1
                                        #     Parent Loop BB68_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%r15,%r13), %rbp
	mulss	%xmm0, %xmm0
	addss	(%r8,%rbp), %xmm0
	movss	%xmm0, (%rdx,%rbp)
	addq	$4, %r13
	cmpq	%r13, %r12
	jne	.LBB68_9
	jmp	.LBB68_10
.LBB68_12:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s1232;
	.scl	2;
	.type	32;
	.endef
	.globl	s1232                           # -- Begin function s1232
	.p2align	4
s1232:                                  # @s1232
.seh_proc s1232
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05EIJPIIMG@s232?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	aa(%rip), %rax
	leaq	cc+1024(%rip), %rcx
	leaq	bb+1024(%rip), %rdx
	leaq	bb(%rip), %r8
	leaq	cc(%rip), %r9
	jmp	.LBB69_1
	.p2align	4
.LBB69_8:                               #   in Loop: Header=BB69_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	je	.LBB69_9
.LBB69_1:                               # %.preheader18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_2 Depth 2
                                        #       Child Loop BB69_6 Depth 3
	movq	%rdx, %r10
	movq	%rcx, %r11
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB69_2
	.p2align	4
.LBB69_7:                               # %.unr-lcssa
                                        #   in Loop: Header=BB69_2 Depth=2
	incq	%r14
	addq	$4, %rbx
	addq	$4, %r11
	addq	$4, %r10
	cmpq	$256, %r14                      # imm = 0x100
	je	.LBB69_8
.LBB69_2:                               # %.preheader
                                        #   Parent Loop BB69_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_6 Depth 3
	movq	%r14, %r15
	testb	$1, %r14b
	je	.LBB69_4
# %bb.3:                                # %.prol.loopexit.unr-lcssa
                                        #   in Loop: Header=BB69_2 Depth=2
	leaq	(%r8,%r14,4), %r15
	leaq	(%r9,%r14,4), %r12
	leaq	(%rax,%r14,4), %r13
	movq	%r14, %rbp
	shlq	$10, %rbp
	movss	(%r15,%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	addss	(%r12,%rbp), %xmm0
	movss	%xmm0, (%r13,%rbp)
	leaq	1(%r14), %r15
.LBB69_4:                               # %.prol.loopexit
                                        #   in Loop: Header=BB69_2 Depth=2
	cmpq	$255, %r14
	je	.LBB69_7
# %bb.5:                                # %.preheader.new.preheader
                                        #   in Loop: Header=BB69_2 Depth=2
	shlq	$10, %r15
	leaq	(%rbx,%r15), %r12
	.p2align	4
.LBB69_6:                               # %.preheader.new
                                        #   Parent Loop BB69_1 Depth=1
                                        #     Parent Loop BB69_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-1024(%r10,%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-1024(%r11,%r15), %xmm0
	movss	%xmm0, (%r12)
	movss	(%r10,%r15), %xmm0              # xmm0 = mem[0],zero,zero,zero
	addss	(%r11,%r15), %xmm0
	movss	%xmm0, 1024(%r12)
	addq	$2048, %r15                     # imm = 0x800
	addq	$2048, %r12                     # imm = 0x800
	cmpq	$262144, %r15                   # imm = 0x40000
	jne	.LBB69_6
	jmp	.LBB69_7
.LBB69_9:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s233;
	.scl	2;
	.type	32;
	.endef
	.globl	s233                            # -- Begin function s233
	.p2align	4
s233:                                   # @s233
.seh_proc s233
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05EJFNOCPB@s233?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	cc+1028(%rip), %rax
	leaq	aa+1028(%rip), %rcx
	leaq	bb+1028(%rip), %rdx
	.p2align	4
.LBB70_1:                               # %.preheader27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_2 Depth 2
                                        #       Child Loop BB70_3 Depth 3
	movl	$1, %r8d
	movq	%rdx, %r9
	movq	%rcx, %r10
	movq	%rax, %r11
	.p2align	4
.LBB70_2:                               # %.preheader26
                                        #   Parent Loop BB70_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB70_3 Depth 3
	xorl	%ebx, %ebx
	.p2align	4
.LBB70_3:                               #   Parent Loop BB70_1 Depth=1
                                        #     Parent Loop BB70_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-1024(%r10,%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	(%r11,%rbx), %xmm0
	movss	-4(%r9,%rbx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	addss	(%r11,%rbx), %xmm1
	movss	%xmm0, (%r10,%rbx)
	movss	%xmm1, (%r9,%rbx)
	addq	$1024, %rbx                     # imm = 0x400
	cmpq	$261120, %rbx                   # imm = 0x3FC00
	jne	.LBB70_3
# %bb.4:                                #   in Loop: Header=BB70_2 Depth=2
	incq	%r8
	addq	$4, %r11
	addq	$4, %r10
	addq	$4, %r9
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB70_2
# %bb.5:                                #   in Loop: Header=BB70_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	jne	.LBB70_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1122, %ecx                     # imm = 0x462
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2233;
	.scl	2;
	.type	32;
	.endef
	.globl	s2233                           # -- Begin function s2233
	.p2align	4
s2233:                                  # @s2233
.seh_proc s2233
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05EJFNOCPB@s233?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leaq	cc+3076(%rip), %rax
	leaq	aa+3076(%rip), %rcx
	leaq	bb+1076(%rip), %rdx
	leaq	cc+1076(%rip), %r8
	leaq	bb(%rip), %r9
	leaq	cc(%rip), %r10
	jmp	.LBB71_1
	.p2align	4
.LBB71_8:                               #   in Loop: Header=BB71_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	je	.LBB71_9
.LBB71_1:                               # %.preheader27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_2 Depth 2
                                        #       Child Loop BB71_3 Depth 3
                                        #       Child Loop BB71_5 Depth 3
	movl	$1, %r11d
	movq	%r8, %rbx
	movq	%rdx, %r14
	movq	%rcx, %r15
	movq	%rax, %r12
	jmp	.LBB71_2
	.p2align	4
.LBB71_7:                               # %scalar.ph
                                        #   in Loop: Header=BB71_2 Depth=2
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	996(%r13), %xmm0
	movss	-24(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, 996(%rbp)
	addss	1000(%r13), %xmm1
	movss	%xmm1, 1000(%rbp)
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	1004(%r13), %xmm0
	movss	%xmm0, 1004(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	1008(%r13), %xmm0
	movss	%xmm0, 1008(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	1012(%r13), %xmm0
	movss	%xmm0, 1012(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addss	1016(%r13), %xmm0
	movss	%xmm0, 1016(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addss	1020(%r13), %xmm0
	movss	%xmm0, 1020(%rbp)
	incq	%r11
	addq	$4, %r12
	addq	$4, %r15
	addq	$1024, %r14                     # imm = 0x400
	addq	$1024, %rbx                     # imm = 0x400
	cmpq	$256, %r11                      # imm = 0x100
	je	.LBB71_8
.LBB71_2:                               # %.preheader26
                                        #   Parent Loop BB71_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB71_3 Depth 3
                                        #       Child Loop BB71_5 Depth 3
	xorl	%esi, %esi
	.p2align	4
.LBB71_3:                               #   Parent Loop BB71_1 Depth=1
                                        #     Parent Loop BB71_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-3072(%r15,%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-2048(%r12,%rsi), %xmm0
	movss	%xmm0, -2048(%r15,%rsi)
	addss	-1024(%r12,%rsi), %xmm0
	movss	%xmm0, -1024(%r15,%rsi)
	addss	(%r12,%rsi), %xmm0
	movss	%xmm0, (%r15,%rsi)
	addq	$3072, %rsi                     # imm = 0xC00
	cmpq	$261120, %rsi                   # imm = 0x3FC00
	jne	.LBB71_3
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB71_2 Depth=2
	movq	%r11, %r13
	shlq	$10, %r13
	leaq	(%r9,%r13), %rbp
	addq	%r10, %r13
	xorl	%esi, %esi
	.p2align	4
.LBB71_5:                               # %vector.body
                                        #   Parent Loop BB71_1 Depth=1
                                        #     Parent Loop BB71_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-1072(%r14,%rsi,4), %xmm0
	movups	-1056(%r14,%rsi,4), %xmm1
	movups	-48(%rbx,%rsi,4), %xmm2
	addps	%xmm0, %xmm2
	movups	-32(%rbx,%rsi,4), %xmm0
	addps	%xmm1, %xmm0
	movups	%xmm2, -48(%r14,%rsi,4)
	movups	%xmm0, -32(%r14,%rsi,4)
	cmpq	$240, %rsi
	je	.LBB71_7
# %bb.6:                                # %vector.body.1
                                        #   in Loop: Header=BB71_5 Depth=3
	movups	-1040(%r14,%rsi,4), %xmm0
	movups	-1024(%r14,%rsi,4), %xmm1
	movups	-16(%rbx,%rsi,4), %xmm2
	addps	%xmm0, %xmm2
	movups	(%rbx,%rsi,4), %xmm0
	addps	%xmm1, %xmm0
	movups	%xmm2, -16(%r14,%rsi,4)
	movups	%xmm0, (%r14,%rsi,4)
	addq	$16, %rsi
	jmp	.LBB71_5
.LBB71_9:
	callq	clock
	subl	36(%rsp), %eax                  # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1122, %ecx                     # imm = 0x462
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s235;
	.scl	2;
	.type	32;
	.endef
	.globl	s235                            # -- Begin function s235
	.p2align	4
s235:                                   # @s235
.seh_proc s235
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
	leaq	"??_C@_05ENNAJOED@s235?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	bb+2048(%rip), %rax
	leaq	aa+2048(%rip), %rcx
	leaq	b(%rip), %rdx
	leaq	c(%rip), %r8
	leaq	a(%rip), %r9
	jmp	.LBB72_1
	.p2align	4
.LBB72_6:                               #   in Loop: Header=BB72_1 Depth=1
	incl	%edi
	cmpl	$200, %edi
	je	.LBB72_7
.LBB72_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_2 Depth 2
                                        #       Child Loop BB72_3 Depth 3
	movq	%rcx, %r10
	movq	%rax, %r11
	xorl	%ebx, %ebx
	jmp	.LBB72_2
	.p2align	4
.LBB72_5:                               #   in Loop: Header=BB72_2 Depth=2
	incq	%rbx
	addq	$4, %r11
	addq	$4, %r10
	cmpq	$256, %rbx                      # imm = 0x100
	je	.LBB72_6
.LBB72_2:                               #   Parent Loop BB72_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB72_3 Depth 3
	movss	(%rdx,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%r8,%rbx,4), %xmm0
	addss	(%r9,%rbx,4), %xmm0
	movss	%xmm0, (%r9,%rbx,4)
	xorl	%r14d, %r14d
	.p2align	4
.LBB72_3:                               #   Parent Loop BB72_1 Depth=1
                                        #     Parent Loop BB72_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-1024(%r11,%r14), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	-2048(%r10,%r14), %xmm1
	movss	%xmm1, -1024(%r10,%r14)
	cmpq	$260096, %r14                   # imm = 0x3F800
	je	.LBB72_5
# %bb.4:                                #   in Loop: Header=BB72_3 Depth=3
	movss	(%r11,%r14), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	-1024(%r10,%r14), %xmm1
	movss	%xmm1, (%r10,%r14)
	addq	$2048, %r14                     # imm = 0x800
	jmp	.LBB72_3
.LBB72_7:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$111, %ecx
	callq	check
	xorl	%eax, %eax
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
	.def	s241;
	.scl	2;
	.type	32;
	.endef
	.globl	s241                            # -- Begin function s241
	.p2align	4
s241:                                   # @s241
.seh_proc s241
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05NHAOAOCG@s241?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB73_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB73_2 Depth 2
	xorl	%r9d, %r9d
	.p2align	4
.LBB73_2:                               #   Parent Loop BB73_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r9,%rax), %xmm0               # xmm0 = mem[0],zero,zero,zero
	mulss	(%r9,%rcx), %xmm0
	movss	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%r9,%r8)
	mulss	4(%r9,%r8), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%r9,%rax)
	addq	$4, %r9
	cmpq	$127996, %r9                    # imm = 0x1F3FC
	jne	.LBB73_2
# %bb.3:                                #   in Loop: Header=BB73_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB73_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s242;
	.scl	2;
	.type	32;
	.endef
	.globl	s242                            # -- Begin function s242
	.p2align	4
s242:                                   # @s242
.seh_proc s242
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$72, %rsp
	.seh_stackalloc 72
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movaps	%xmm1, %xmm6
	movaps	%xmm0, %xmm7
	leaq	"??_C@_05NFEILAHP@s242?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	d(%rip), %r8
	.p2align	4
.LBB74_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_2 Depth 2
	movl	$1, %r9d
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	.p2align	4
.LBB74_2:                               #   Parent Loop BB74_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addss	%xmm7, %xmm0
	addss	%xmm6, %xmm0
	addss	(%rcx,%r9,4), %xmm0
	addss	(%rdx,%r9,4), %xmm0
	addss	(%r8,%r9,4), %xmm0
	movss	%xmm0, (%rax,%r9,4)
	incq	%r9
	cmpq	$32000, %r9                     # imm = 0x7D00
	jne	.LBB74_2
# %bb.3:                                #   in Loop: Header=BB74_1 Depth=1
	incl	%edi
	cmpl	$51, %edi
	jne	.LBB74_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s243;
	.scl	2;
	.type	32;
	.endef
	.globl	s243                            # -- Begin function s243
	.p2align	4
s243:                                   # @s243
.seh_proc s243
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	addq	$-128, %rsp
	.seh_stackalloc 128
	movaps	%xmm11, 112(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm11, 112
	movaps	%xmm10, 96(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm10, 96
	movaps	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NEIKNKEI@s243?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	d+127984(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	d+127988(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	d+127992(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	a(%rip), %r9
	leaq	e(%rip), %r10
	movss	c+127984(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	movss	e+127984(%rip), %xmm4           # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	movss	c+127988(%rip), %xmm5           # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	movss	e+127988(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm6
	movss	c+127992(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm7
	movss	e+127992(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm8
	.p2align	4
.LBB75_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_2 Depth 2
	xorl	%r11d, %r11d
	.p2align	4
.LBB75_2:                               # %vector.body
                                        #   Parent Loop BB75_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r11,%r8), %xmm9
	movaps	(%r11,%rdx), %xmm10
	mulps	%xmm9, %xmm10
	addps	(%r11,%rcx), %xmm10
	movaps	(%r11,%r10), %xmm11
	mulps	%xmm9, %xmm11
	addps	%xmm10, %xmm11
	movaps	%xmm11, (%r11,%rcx)
	movups	4(%r11,%r9), %xmm10
	mulps	%xmm9, %xmm10
	addps	%xmm11, %xmm10
	movaps	%xmm10, (%r11,%r9)
	addq	$16, %r11
	cmpq	$127984, %r11                   # imm = 0x1F3F0
	jne	.LBB75_2
# %bb.3:                                # %scalar.ph
                                        #   in Loop: Header=BB75_1 Depth=1
	movss	b+127984(%rip), %xmm9           # xmm9 = mem[0],zero,zero,zero
	addss	%xmm3, %xmm9
	addss	%xmm4, %xmm9
	movss	%xmm9, b+127984(%rip)
	movss	a+127988(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm10
	addss	%xmm9, %xmm10
	movss	%xmm10, a+127984(%rip)
	movss	b+127988(%rip), %xmm9           # xmm9 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm9
	addss	%xmm6, %xmm9
	movss	%xmm9, b+127988(%rip)
	movss	a+127992(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm10
	addss	%xmm9, %xmm10
	movss	%xmm10, a+127988(%rip)
	movss	b+127992(%rip), %xmm9           # xmm9 = mem[0],zero,zero,zero
	addss	%xmm7, %xmm9
	addss	%xmm8, %xmm9
	movss	%xmm9, b+127992(%rip)
	movss	a+127996(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm10
	addss	%xmm9, %xmm10
	movss	%xmm10, a+127992(%rip)
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB75_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	movaps	96(%rsp), %xmm10                # 16-byte Reload
	movaps	112(%rsp), %xmm11               # 16-byte Reload
	.seh_startepilogue
	addq	$128, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s244;
	.scl	2;
	.type	32;
	.endef
	.globl	s244                            # -- Begin function s244
	.p2align	4
s244:                                   # @s244
.seh_proc s244
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05NBMFMMMN@s244?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB76_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_2 Depth 2
	xorl	%r9d, %r9d
	.p2align	4
.LBB76_2:                               #   Parent Loop BB76_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r9,%rax), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r9,%rax)
	movss	4(%r9,%r8), %xmm3               # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm1                    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movss	(%r9,%rdx), %xmm3               # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm3                    # xmm3 = xmm3[0,0,1,1]
	mulps	%xmm1, %xmm3
	unpcklps	%xmm2, %xmm0                    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	addps	%xmm3, %xmm0
	movlps	%xmm0, (%r9,%r8)
	addq	$4, %r9
	cmpq	$127996, %r9                    # imm = 0x1F3FC
	jne	.LBB76_2
# %bb.3:                                #   in Loop: Header=BB76_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB76_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1244;
	.scl	2;
	.type	32;
	.endef
	.globl	s1244                           # -- Begin function s1244
	.p2align	4
s1244:                                  # @s1244
.seh_proc s1244
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05NBMFMMMN@s244?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	d(%rip), %r8
	.p2align	4
.LBB77_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_2 Depth 2
	xorl	%r9d, %r9d
	.p2align	4
.LBB77_2:                               #   Parent Loop BB77_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r9,%rax), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm0, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%r9,%rdx)
	addss	4(%r9,%rdx), %xmm0
	movss	%xmm0, (%r9,%r8)
	addq	$4, %r9
	cmpq	$127996, %r9                    # imm = 0x1F3FC
	jne	.LBB77_2
# %bb.3:                                #   in Loop: Header=BB77_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB77_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2244;
	.scl	2;
	.type	32;
	.endef
	.globl	s2244                           # -- Begin function s2244
	.p2align	4
s2244:                                  # @s2244
.seh_proc s2244
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05NBMFMMMN@s244?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	b+127984(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	c+127984(%rip), %xmm0
	movss	b+127988(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addss	c+127988(%rip), %xmm1
	movss	b+127992(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	e+127992(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm3
	addss	c+127992(%rip), %xmm2
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	e(%rip), %rdx
	leaq	a(%rip), %r8
	leaq	c(%rip), %r9
	.p2align	4
.LBB78_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_2 Depth 2
	xorl	%r10d, %r10d
	.p2align	4
.LBB78_2:                               # %vector.body
                                        #   Parent Loop BB78_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r10,%rcx), %xmm4
	movaps	(%r10,%rdx), %xmm5
	addps	%xmm4, %xmm5
	addps	(%r10,%r9), %xmm4
	movups	%xmm5, 4(%r10,%r8)
	movaps	%xmm4, (%r10,%r8)
	addq	$16, %r10
	cmpq	$127984, %r10                   # imm = 0x1F3F0
	jne	.LBB78_2
# %bb.3:                                # %scalar.ph
                                        #   in Loop: Header=BB78_1 Depth=1
	movss	%xmm0, a+127984(%rip)
	movss	%xmm1, a+127988(%rip)
	movss	%xmm3, a+127996(%rip)
	movss	%xmm2, a+127992(%rip)
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB78_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s251;
	.scl	2;
	.type	32;
	.endef
	.globl	s251                            # -- Begin function s251
	.p2align	4
s251:                                   # @s251
.seh_proc s251
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05GPLCGJED@s251?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB79_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_2 Depth 2
	movl	$4, %r9d
	.p2align	4
.LBB79_2:                               # %vector.body
                                        #   Parent Loop BB79_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rcx,%r9,4), %xmm0
	movaps	(%rcx,%r9,4), %xmm1
	mulps	-16(%rdx,%r9,4), %xmm0
	addps	-16(%rax,%r9,4), %xmm0
	mulps	(%rdx,%r9,4), %xmm1
	addps	(%rax,%r9,4), %xmm1
	mulps	%xmm0, %xmm0
	mulps	%xmm1, %xmm1
	movaps	%xmm0, -16(%r8,%r9,4)
	movaps	%xmm1, (%r8,%r9,4)
	addq	$8, %r9
	cmpq	$32004, %r9                     # imm = 0x7D04
	jne	.LBB79_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB79_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB79_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1251;
	.scl	2;
	.type	32;
	.endef
	.globl	s1251                           # -- Begin function s1251
	.p2align	4
s1251:                                  # @s1251
.seh_proc s1251
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05GPLCGJED@s251?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	e(%rip), %r9
	.p2align	4
.LBB80_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB80_2 Depth 2
	xorl	%r10d, %r10d
	.p2align	4
.LBB80_2:                               # %vector.body
                                        #   Parent Loop BB80_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r10,%rax), %xmm0
	addps	(%r10,%rcx), %xmm0
	movaps	(%r10,%rdx), %xmm1
	addps	(%r10,%r8), %xmm1
	mulps	(%r10,%r9), %xmm0
	movaps	%xmm1, (%r10,%rax)
	movaps	%xmm0, (%r10,%rdx)
	addq	$16, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	jne	.LBB80_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB80_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB80_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2251;
	.scl	2;
	.type	32;
	.endef
	.globl	s2251                           # -- Begin function s2251
	.p2align	4
s2251:                                  # @s2251
.seh_proc s2251
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05GPLCGJED@s251?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	e(%rip), %rax
	leaq	a(%rip), %rcx
	leaq	b(%rip), %rdx
	leaq	c(%rip), %r8
	leaq	d(%rip), %r9
	.p2align	4
.LBB81_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB81_2 Depth 2
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	.p2align	4
.LBB81_2:                               #   Parent Loop BB81_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulss	(%r10,%rax), %xmm0
	movss	%xmm0, (%r10,%rcx)
	movss	(%r10,%rdx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	addss	(%r10,%r8), %xmm1
	addss	(%r10,%r9), %xmm0
	movss	%xmm0, (%r10,%rdx)
	addq	$4, %r10
	movaps	%xmm1, %xmm0
	cmpq	$128000, %r10                   # imm = 0x1F400
	jne	.LBB81_2
# %bb.3:                                #   in Loop: Header=BB81_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB81_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s3251;
	.scl	2;
	.type	32;
	.endef
	.globl	s3251                           # -- Begin function s3251
	.p2align	4
s3251:                                  # @s3251
.seh_proc s3251
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$160, %rsp
	.seh_stackalloc 160
	movaps	%xmm13, 144(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm13, 144
	movaps	%xmm12, 128(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm12, 128
	movaps	%xmm11, 112(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm11, 112
	movaps	%xmm10, 96(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm10, 96
	movaps	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05GPLCGJED@s251?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movss	c+127984(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	e+127984(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	movss	c+127988(%rip), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	e+127988(%rip), %xmm5           # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm6
	mulss	%xmm5, %xmm6
	movss	c+127992(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	movss	e+127992(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	movaps	%xmm7, %xmm9
	mulss	%xmm8, %xmm9
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	a(%rip), %r8
	leaq	e(%rip), %r9
	leaq	d(%rip), %r10
	.p2align	4
.LBB82_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB82_2 Depth 2
	xorl	%r11d, %r11d
	movaps	%xmm0, %xmm10
	.p2align	4
.LBB82_2:                               # %vector.body
                                        #   Parent Loop BB82_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm10, %xmm11
	movaps	(%r11,%rdx), %xmm12
	movaps	(%r11,%rcx), %xmm10
	addps	%xmm12, %xmm10
	shufps	$3, %xmm10, %xmm11              # xmm11 = xmm11[3,0],xmm10[0,0]
	shufps	$152, %xmm10, %xmm11            # xmm11 = xmm11[0,2],xmm10[1,2]
	movups	%xmm10, 4(%r11,%r8)
	movaps	(%r11,%r9), %xmm13
	mulps	%xmm13, %xmm12
	movaps	%xmm12, (%r11,%rcx)
	mulps	%xmm13, %xmm11
	movaps	%xmm11, (%r11,%r10)
	addq	$16, %r11
	cmpq	$127984, %r11                   # imm = 0x1F3F0
	jne	.LBB82_2
# %bb.3:                                # %scalar.ph
                                        #   in Loop: Header=BB82_1 Depth=1
	shufps	$255, %xmm10, %xmm10            # xmm10 = xmm10[3,3,3,3]
	movss	b+127984(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm11
	movss	%xmm11, a+127988(%rip)
	movss	%xmm3, b+127984(%rip)
	mulss	%xmm2, %xmm10
	movss	%xmm10, d+127984(%rip)
	movss	b+127988(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	addss	%xmm4, %xmm10
	movss	%xmm10, a+127992(%rip)
	movss	%xmm6, b+127988(%rip)
	mulss	%xmm5, %xmm11
	movss	%xmm11, d+127988(%rip)
	movss	b+127992(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	addss	%xmm7, %xmm11
	movss	%xmm11, a+127996(%rip)
	movss	%xmm9, b+127992(%rip)
	mulss	%xmm8, %xmm10
	movss	%xmm10, d+127992(%rip)
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB82_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	movaps	96(%rsp), %xmm10                # 16-byte Reload
	movaps	112(%rsp), %xmm11               # 16-byte Reload
	movaps	128(%rsp), %xmm12               # 16-byte Reload
	movaps	144(%rsp), %xmm13               # 16-byte Reload
	.seh_startepilogue
	addq	$160, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s252;
	.scl	2;
	.type	32;
	.endef
	.globl	s252                            # -- Begin function s252
	.p2align	4
s252:                                   # @s252
.seh_proc s252
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05GNPENHBK@s252?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB83_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB83_2 Depth 2
	xorps	%xmm0, %xmm0
	movl	$4, %r8d
	.p2align	4
.LBB83_2:                               # %vector.body
                                        #   Parent Loop BB83_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rax,%r8,4), %xmm1
	movaps	(%rax,%r8,4), %xmm2
	mulps	-16(%rcx,%r8,4), %xmm1
	mulps	(%rcx,%r8,4), %xmm2
	shufps	$3, %xmm1, %xmm0                # xmm0 = xmm0[3,0],xmm1[0,0]
	shufps	$152, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[1,2]
	addps	%xmm1, %xmm0
	shufps	$3, %xmm2, %xmm1                # xmm1 = xmm1[3,0],xmm2[0,0]
	shufps	$152, %xmm2, %xmm1              # xmm1 = xmm1[0,2],xmm2[1,2]
	addps	%xmm2, %xmm1
	movaps	%xmm0, -16(%rdx,%r8,4)
	movaps	%xmm1, (%rdx,%r8,4)
	addq	$8, %r8
	movaps	%xmm2, %xmm0
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB83_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB83_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB83_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s253;
	.scl	2;
	.type	32;
	.endef
	.globl	s253                            # -- Begin function s253
	.p2align	4
s253:                                   # @s253
.seh_proc s253
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05GMDGLNCN@s253?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	c(%rip), %r8
	jmp	.LBB84_1
	.p2align	4
.LBB84_5:                               #   in Loop: Header=BB84_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB84_6
.LBB84_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_2 Depth 2
	xorl	%r9d, %r9d
	jmp	.LBB84_2
	.p2align	4
.LBB84_4:                               #   in Loop: Header=BB84_2 Depth=2
	addq	$4, %r9
	cmpq	$128000, %r9                    # imm = 0x1F400
	je	.LBB84_5
.LBB84_2:                               #   Parent Loop BB84_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r9,%rax), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB84_4
# %bb.3:                                #   in Loop: Header=BB84_2 Depth=2
	mulss	(%r9,%rdx), %xmm1
	subss	%xmm1, %xmm0
	movss	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r9,%r8)
	movss	%xmm0, (%r9,%rax)
	jmp	.LBB84_4
.LBB84_6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$13, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s254;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@3f0000003f0000003f0000003f000000 # -- Begin function s254
	.section	.rdata,"dr",discard,__xmm@3f0000003f0000003f0000003f000000
	.p2align	4, 0x0
__xmm@3f0000003f0000003f0000003f000000:
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.text
	.globl	s254
	.p2align	4
s254:                                   # @s254
.seh_proc s254
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05GJHJKLKI@s254?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	b+127996(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	movaps	__xmm@3f0000003f0000003f0000003f000000(%rip), %xmm1 # xmm1 = [5.0E-1,5.0E-1,5.0E-1,5.0E-1]
	leaq	a(%rip), %rdx
	.p2align	4
.LBB85_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB85_2 Depth 2
	movl	$4, %r8d
	movaps	%xmm0, %xmm2
	.p2align	4
.LBB85_2:                               # %vector.body
                                        #   Parent Loop BB85_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rcx,%r8,4), %xmm3
	movaps	(%rcx,%r8,4), %xmm4
	shufps	$3, %xmm3, %xmm2                # xmm2 = xmm2[3,0],xmm3[0,0]
	shufps	$152, %xmm3, %xmm2              # xmm2 = xmm2[0,2],xmm3[1,2]
	addps	%xmm3, %xmm2
	shufps	$3, %xmm4, %xmm3                # xmm3 = xmm3[3,0],xmm4[0,0]
	shufps	$152, %xmm4, %xmm3              # xmm3 = xmm3[0,2],xmm4[1,2]
	addps	%xmm4, %xmm3
	mulps	%xmm1, %xmm2
	mulps	%xmm1, %xmm3
	movaps	%xmm2, -16(%rdx,%r8,4)
	movaps	%xmm3, (%rdx,%r8,4)
	addq	$8, %r8
	movaps	%xmm4, %xmm2
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB85_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB85_1 Depth=1
	incl	%eax
	cmpl	$1024, %eax                     # imm = 0x400
	jne	.LBB85_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s255;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@3eaa7efa3eaa7efa3eaa7efa3eaa7efa # -- Begin function s255
	.section	.rdata,"dr",discard,__xmm@3eaa7efa3eaa7efa3eaa7efa3eaa7efa
	.p2align	4, 0x0
__xmm@3eaa7efa3eaa7efa3eaa7efa3eaa7efa:
	.long	0x3eaa7efa                      # float 0.333000004
	.long	0x3eaa7efa                      # float 0.333000004
	.long	0x3eaa7efa                      # float 0.333000004
	.long	0x3eaa7efa                      # float 0.333000004
	.text
	.globl	s255
	.p2align	4
s255:                                   # @s255
.seh_proc s255
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05GILLMBJP@s255?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	b+127996(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movss	b+127992(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	movaps	__xmm@3eaa7efa3eaa7efa3eaa7efa3eaa7efa(%rip), %xmm2 # xmm2 = [3.33000004E-1,3.33000004E-1,3.33000004E-1,3.33000004E-1]
	leaq	a(%rip), %rdx
	.p2align	4
.LBB86_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB86_2 Depth 2
	movl	$4, %r8d
	movaps	%xmm0, %xmm3
	movaps	%xmm1, %xmm5
	.p2align	4
.LBB86_2:                               # %vector.body
                                        #   Parent Loop BB86_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rcx,%r8,4), %xmm6
	movaps	(%rcx,%r8,4), %xmm4
	shufps	$255, %xmm3, %xmm5              # xmm5 = xmm5[3,3],xmm3[3,3]
	shufps	$3, %xmm6, %xmm3                # xmm3 = xmm3[3,0],xmm6[0,0]
	shufps	$152, %xmm6, %xmm3              # xmm3 = xmm3[0,2],xmm6[1,2]
	movaps	%xmm6, %xmm7
	shufps	$3, %xmm4, %xmm7                # xmm7 = xmm7[3,0],xmm4[0,0]
	shufps	$152, %xmm4, %xmm7              # xmm7 = xmm7[0,2],xmm4[1,2]
	shufps	$72, %xmm6, %xmm5               # xmm5 = xmm5[0,2],xmm6[0,1]
	addps	%xmm6, %xmm3
	shufps	$78, %xmm4, %xmm6               # xmm6 = xmm6[2,3],xmm4[0,1]
	addps	%xmm5, %xmm3
	movaps	%xmm7, %xmm5
	addps	%xmm4, %xmm7
	addps	%xmm6, %xmm7
	mulps	%xmm2, %xmm3
	mulps	%xmm2, %xmm7
	movaps	%xmm3, -16(%rdx,%r8,4)
	movaps	%xmm7, (%rdx,%r8,4)
	addq	$8, %r8
	movaps	%xmm4, %xmm3
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB86_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB86_1 Depth=1
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB86_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	.seh_startepilogue
	addq	$64, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s256;
	.scl	2;
	.type	32;
	.endef
	.globl	s256                            # -- Begin function s256
	.p2align	4
s256:                                   # @s256
.seh_proc s256
# %bb.0:                                # %.preheader19
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
	leaq	"??_C@_05GKPNHPMG@s256?5?$AA@"(%rip), %rcx
	callq	init
	leaq	cc+1024(%rip), %rdi
	leaq	bb+1024(%rip), %rbx
	xorl	%r14d, %r14d
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	leaq	d(%rip), %rcx
	.p2align	4
.LBB87_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_2 Depth 2
	movl	$1, %edx
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r8d, %r8d
	.p2align	4
.LBB87_2:                               #   Parent Loop BB87_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%rdx,4)
	movss	(%rbx,%r8), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%rdx,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdi,%r8)
	incq	%rdx
	addq	$1024, %r8                      # imm = 0x400
	cmpq	$261120, %r8                    # imm = 0x3FC00
	jne	.LBB87_2
# %bb.3:                                #   in Loop: Header=BB87_1 Depth=1
	incq	%r14
	addq	$4, %rdi
	addq	$4, %rbx
	cmpq	$256, %r14                      # imm = 0x100
	jne	.LBB87_1
# %bb.4:                                # %.preheader.1.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_5:                               # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_6 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_6:                               #   Parent Loop BB87_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_6
# %bb.7:                                #   in Loop: Header=BB87_5 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_5
# %bb.8:                                # %.preheader.2.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_9:                               # %.preheader.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_10 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_10:                              #   Parent Loop BB87_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_10
# %bb.11:                               #   in Loop: Header=BB87_9 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_9
# %bb.12:                               # %.preheader.3.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_13:                              # %.preheader.3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_14 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_14:                              #   Parent Loop BB87_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_14
# %bb.15:                               #   in Loop: Header=BB87_13 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_13
# %bb.16:                               # %.preheader.4.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_17:                              # %.preheader.4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_18 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_18:                              #   Parent Loop BB87_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_18
# %bb.19:                               #   in Loop: Header=BB87_17 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_17
# %bb.20:                               # %.preheader.5.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_21:                              # %.preheader.5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_22 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_22:                              #   Parent Loop BB87_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_22
# %bb.23:                               #   in Loop: Header=BB87_21 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_21
# %bb.24:                               # %.preheader.6.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_25:                              # %.preheader.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_26 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_26:                              #   Parent Loop BB87_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_26
# %bb.27:                               #   in Loop: Header=BB87_25 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_25
# %bb.28:                               # %.preheader.7.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_29:                              # %.preheader.7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_30 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_30:                              #   Parent Loop BB87_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_30
# %bb.31:                               #   in Loop: Header=BB87_29 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_29
# %bb.32:                               # %.preheader.8.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_33:                              # %.preheader.8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_34 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_34:                              #   Parent Loop BB87_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_34
# %bb.35:                               #   in Loop: Header=BB87_33 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_33
# %bb.36:                               # %.preheader.9.preheader
	leaq	cc+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	.p2align	4
.LBB87_37:                              # %.preheader.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_38 Depth 2
	movl	$1, %r10d
	movss	a(%rip), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	.p2align	4
.LBB87_38:                              #   Parent Loop BB87_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%r10,4)
	movss	(%r8,%r11), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	(%rcx,%r10,4), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rdx,%r11)
	incq	%r10
	addq	$1024, %r11                     # imm = 0x400
	cmpq	$261120, %r11                   # imm = 0x3FC00
	jne	.LBB87_38
# %bb.39:                               #   in Loop: Header=BB87_37 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB87_37
# %bb.40:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$111, %ecx
	callq	check
	xorl	%eax, %eax
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
	.def	s257;
	.scl	2;
	.type	32;
	.endef
	.globl	s257                            # -- Begin function s257
	.p2align	4
s257:                                   # @s257
.seh_proc s257
# %bb.0:                                # %.preheader20
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
	leaq	"??_C@_05GLDPBFPB@s257?5?$AA@"(%rip), %rcx
	callq	init
	movl	$1, %edi
	leaq	bb+1028(%rip), %rbx
	leaq	aa+1028(%rip), %r14
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	.p2align	4
.LBB88_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_2 Depth 2
	movss	-4(%rax,%rdi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	.p2align	4
.LBB88_2:                               #   Parent Loop BB88_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r14,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rbx,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	movss	(%r14,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rbx,%rcx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	cmpq	$262144, %rcx                   # imm = 0x40000
	jne	.LBB88_2
# %bb.3:                                #   in Loop: Header=BB88_1 Depth=1
	movss	%xmm1, (%rax,%rdi,4)
	incq	%rdi
	addq	$4, %rbx
	addq	$4, %r14
	cmpq	$256, %rdi                      # imm = 0x100
	jne	.LBB88_1
# %bb.4:                                # %.preheader.1.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_5:                               # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_6 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_6:                               #   Parent Loop BB88_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_6
# %bb.7:                                #   in Loop: Header=BB88_5 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_5
# %bb.8:                                # %.preheader.2.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_9:                               # %.preheader.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_10 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_10:                              #   Parent Loop BB88_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_10
# %bb.11:                               #   in Loop: Header=BB88_9 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_9
# %bb.12:                               # %.preheader.3.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_13:                              # %.preheader.3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_14 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_14:                              #   Parent Loop BB88_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_14
# %bb.15:                               #   in Loop: Header=BB88_13 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_13
# %bb.16:                               # %.preheader.4.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_17:                              # %.preheader.4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_18 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_18:                              #   Parent Loop BB88_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_18
# %bb.19:                               #   in Loop: Header=BB88_17 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_17
# %bb.20:                               # %.preheader.5.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_21:                              # %.preheader.5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_22 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_22:                              #   Parent Loop BB88_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_22
# %bb.23:                               #   in Loop: Header=BB88_21 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_21
# %bb.24:                               # %.preheader.6.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_25:                              # %.preheader.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_26 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_26:                              #   Parent Loop BB88_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_26
# %bb.27:                               #   in Loop: Header=BB88_25 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_25
# %bb.28:                               # %.preheader.7.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_29:                              # %.preheader.7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_30 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_30:                              #   Parent Loop BB88_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_30
# %bb.31:                               #   in Loop: Header=BB88_29 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_29
# %bb.32:                               # %.preheader.8.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_33:                              # %.preheader.8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_34 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_34:                              #   Parent Loop BB88_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_34
# %bb.35:                               #   in Loop: Header=BB88_33 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_33
# %bb.36:                               # %.preheader.9.preheader
	movl	$1, %ecx
	leaq	bb+1028(%rip), %rdx
	leaq	aa+1028(%rip), %r8
	.p2align	4
.LBB88_37:                              # %.preheader.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_38 Depth 2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4
.LBB88_38:                              #   Parent Loop BB88_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	addss	-1024(%rdx,%r9), %xmm1
	movss	%xmm1, -1024(%r8,%r9)
	movss	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	(%rdx,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r8,%r9)
	addq	$2048, %r9                      # imm = 0x800
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB88_38
# %bb.39:                               #   in Loop: Header=BB88_37 Depth=1
	movss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB88_37
# %bb.40:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$111, %ecx
	callq	check
	xorl	%eax, %eax
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
	.def	s258;
	.scl	2;
	.type	32;
	.endef
	.globl	s258                            # -- Begin function s258
	.p2align	4
s258:                                   # @s258
.seh_proc s258
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05GAGDFCMM@s258?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	d(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	b(%rip), %r8
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	leaq	aa(%rip), %r9
	leaq	e(%rip), %r10
	.p2align	4
.LBB89_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB89_2 Depth 2
	xorl	%r11d, %r11d
	xorps	%xmm1, %xmm1
	.p2align	4
.LBB89_2:                               # %._crit_edge
                                        #   Parent Loop BB89_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r11,%rcx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	mulss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cmpltss	(%r11,%rax), %xmm4
	movaps	%xmm4, %xmm5
	andnps	%xmm1, %xmm5
	andps	%xmm3, %xmm4
	orps	%xmm5, %xmm4
	movss	(%r11,%rdx), %xmm3              # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm3
	addss	%xmm2, %xmm3
	movaps	%xmm4, %xmm1
	addss	%xmm0, %xmm4
	mulss	(%r11,%r9), %xmm4
	movss	%xmm3, (%r11,%r8)
	movss	%xmm4, (%r11,%r10)
	addq	$4, %r11
	cmpq	$1024, %r11                     # imm = 0x400
	jne	.LBB89_2
# %bb.3:                                #   in Loop: Header=BB89_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB89_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$25, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s261;
	.scl	2;
	.type	32;
	.endef
	.globl	s261                            # -- Begin function s261
	.p2align	4
s261:                                   # @s261
.seh_proc s261
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05HNAHMGKN@s261?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	d(%rip), %r8
	.p2align	4
.LBB90_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_2 Depth 2
	movl	$1, %r9d
	movss	c(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	.p2align	4
.LBB90_2:                               #   Parent Loop BB90_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rax,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	addss	(%rcx,%r9,4), %xmm1
	addss	%xmm0, %xmm1
	movss	(%rdx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	mulss	(%r8,%r9,4), %xmm0
	movss	%xmm1, (%rax,%r9,4)
	movss	%xmm0, (%rdx,%r9,4)
	incq	%r9
	cmpq	$32000, %r9                     # imm = 0x7D00
	jne	.LBB90_2
# %bb.3:                                #   in Loop: Header=BB90_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB90_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$13, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s271;
	.scl	2;
	.type	32;
	.endef
	.globl	s271                            # -- Begin function s271
	.p2align	4
s271:                                   # @s271
.seh_proc s271
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MFLLKBMI@s271?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	xorps	%xmm0, %xmm0
	jmp	.LBB91_1
	.p2align	4
.LBB91_11:                              # %middle.block
                                        #   in Loop: Header=BB91_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	je	.LBB91_12
.LBB91_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_2 Depth 2
	xorl	%r8d, %r8d
	jmp	.LBB91_2
	.p2align	4
.LBB91_10:                              # %pred.store.continue25
                                        #   in Loop: Header=BB91_2 Depth=2
	addq	$16, %r8
	cmpq	$128000, %r8                    # imm = 0x1F400
	je	.LBB91_11
.LBB91_2:                               # %vector.body
                                        #   Parent Loop BB91_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r8,%rax), %xmm3
	movaps	(%r8,%rcx), %xmm1
	mulps	%xmm3, %xmm1
	addps	(%r8,%rdx), %xmm1
	ucomiss	%xmm0, %xmm3
	jbe	.LBB91_4
# %bb.3:                                # %pred.store.if
                                        #   in Loop: Header=BB91_2 Depth=2
	movss	%xmm1, (%r8,%rdx)
.LBB91_4:                               # %pred.store.continue
                                        #   in Loop: Header=BB91_2 Depth=2
	xorps	%xmm2, %xmm2
	cmpltps	%xmm3, %xmm2
	pextrw	$2, %xmm2, %r9d
	testb	$1, %r9b
	jne	.LBB91_5
# %bb.6:                                # %pred.store.continue21
                                        #   in Loop: Header=BB91_2 Depth=2
	pextrw	$4, %xmm2, %r9d
	testb	$1, %r9b
	jne	.LBB91_7
.LBB91_8:                               # %pred.store.continue23
                                        #   in Loop: Header=BB91_2 Depth=2
	pextrw	$6, %xmm2, %r9d
	testb	$1, %r9b
	je	.LBB91_10
	jmp	.LBB91_9
	.p2align	4
.LBB91_5:                               # %pred.store.if20
                                        #   in Loop: Header=BB91_2 Depth=2
	movaps	%xmm1, %xmm3
	shufps	$85, %xmm1, %xmm3               # xmm3 = xmm3[1,1],xmm1[1,1]
	movss	%xmm3, 4(%r8,%rdx)
	pextrw	$4, %xmm2, %r9d
	testb	$1, %r9b
	je	.LBB91_8
.LBB91_7:                               # %pred.store.if22
                                        #   in Loop: Header=BB91_2 Depth=2
	movaps	%xmm1, %xmm3
	unpckhpd	%xmm1, %xmm3                    # xmm3 = xmm3[1],xmm1[1]
	movss	%xmm3, 8(%r8,%rdx)
	pextrw	$6, %xmm2, %r9d
	testb	$1, %r9b
	je	.LBB91_10
.LBB91_9:                               # %pred.store.if24
                                        #   in Loop: Header=BB91_2 Depth=2
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movss	%xmm1, 12(%r8,%rdx)
	jmp	.LBB91_10
.LBB91_12:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s272;
	.scl	2;
	.type	32;
	.endef
	.globl	s272                            # -- Begin function s272
	.p2align	4
s272:                                   # @s272
.seh_proc s272
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movaps	%xmm0, %xmm6
	leaq	"??_C@_05MHPNBPJB@s272?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	e(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	leaq	b(%rip), %r9
	jmp	.LBB92_1
	.p2align	4
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB92_6
.LBB92_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB92_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB92_2
	.p2align	4
.LBB92_4:                               #   in Loop: Header=BB92_2 Depth=2
	addq	$4, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	je	.LBB92_5
.LBB92_2:                               #   Parent Loop BB92_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rax), %xmm0              # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm0
	jb	.LBB92_4
# %bb.3:                                #   in Loop: Header=BB92_2 Depth=2
	movss	(%r10,%rcx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	(%r10,%rdx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	(%r10,%r8), %xmm1
	movss	%xmm1, (%r10,%r8)
	mulss	%xmm0, %xmm0
	addss	(%r10,%r9), %xmm0
	movss	%xmm0, (%r10,%r9)
	jmp	.LBB92_4
.LBB92_6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s273;
	.scl	2;
	.type	32;
	.endef
	.globl	s273                            # -- Begin function s273
	.p2align	4
s273:                                   # @s273
.seh_proc s273
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05MGDPHFKG@s273?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	d(%rip), %rax
	leaq	e(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	b(%rip), %r8
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	leaq	c(%rip), %r9
	jmp	.LBB93_1
	.p2align	4
.LBB93_11:                              # %middle.block
                                        #   in Loop: Header=BB93_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB93_12
.LBB93_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB93_2
	.p2align	4
.LBB93_10:                              # %pred.store.continue30
                                        #   in Loop: Header=BB93_2 Depth=2
	mulps	%xmm2, %xmm3
	addps	(%r10,%r9), %xmm3
	movaps	%xmm3, (%r10,%r9)
	addq	$16, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	je	.LBB93_11
.LBB93_2:                               # %vector.body
                                        #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r10,%rax), %xmm2
	movaps	(%r10,%rcx), %xmm4
	mulps	%xmm2, %xmm4
	movaps	(%r10,%rdx), %xmm3
	addps	%xmm4, %xmm3
	movaps	%xmm3, (%r10,%rdx)
	addps	(%r10,%r8), %xmm4
	ucomiss	%xmm3, %xmm0
	jbe	.LBB93_4
# %bb.3:                                # %pred.store.if
                                        #   in Loop: Header=BB93_2 Depth=2
	movss	%xmm4, (%r10,%r8)
.LBB93_4:                               # %pred.store.continue
                                        #   in Loop: Header=BB93_2 Depth=2
	movaps	%xmm3, %xmm5
	cmpltps	%xmm1, %xmm5
	pextrw	$2, %xmm5, %r11d
	testb	$1, %r11b
	jne	.LBB93_5
# %bb.6:                                # %pred.store.continue26
                                        #   in Loop: Header=BB93_2 Depth=2
	pextrw	$4, %xmm5, %r11d
	testb	$1, %r11b
	jne	.LBB93_7
.LBB93_8:                               # %pred.store.continue28
                                        #   in Loop: Header=BB93_2 Depth=2
	pextrw	$6, %xmm5, %r11d
	testb	$1, %r11b
	je	.LBB93_10
	jmp	.LBB93_9
	.p2align	4
.LBB93_5:                               # %pred.store.if25
                                        #   in Loop: Header=BB93_2 Depth=2
	movaps	%xmm4, %xmm6
	shufps	$85, %xmm4, %xmm6               # xmm6 = xmm6[1,1],xmm4[1,1]
	movss	%xmm6, 4(%r10,%r8)
	pextrw	$4, %xmm5, %r11d
	testb	$1, %r11b
	je	.LBB93_8
.LBB93_7:                               # %pred.store.if27
                                        #   in Loop: Header=BB93_2 Depth=2
	movaps	%xmm4, %xmm6
	unpckhpd	%xmm4, %xmm6                    # xmm6 = xmm6[1],xmm4[1]
	movss	%xmm6, 8(%r10,%r8)
	pextrw	$6, %xmm5, %r11d
	testb	$1, %r11b
	je	.LBB93_10
.LBB93_9:                               # %pred.store.if29
                                        #   in Loop: Header=BB93_2 Depth=2
	shufps	$255, %xmm4, %xmm4              # xmm4 = xmm4[3,3,3,3]
	movss	%xmm4, 12(%r10,%r8)
	jmp	.LBB93_10
.LBB93_12:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$123, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s274;
	.scl	2;
	.type	32;
	.endef
	.globl	s274                            # -- Begin function s274
	.p2align	4
s274:                                   # @s274
.seh_proc s274
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MDHAGDCD@s274?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rax
	leaq	e(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	xorps	%xmm0, %xmm0
	leaq	b(%rip), %r9
	jmp	.LBB94_1
	.p2align	4
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB94_7
.LBB94_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB94_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB94_2
	.p2align	4
.LBB94_4:                               #   in Loop: Header=BB94_2 Depth=2
	movss	%xmm1, (%r10,%r8)
	addq	$4, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	je	.LBB94_6
.LBB94_2:                               #   Parent Loop BB94_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rdx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%r10,%rcx), %xmm1
	movss	(%r10,%rax), %xmm2              # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r10,%r8)
	ucomiss	%xmm0, %xmm2
	jbe	.LBB94_4
# %bb.3:                                #   in Loop: Header=BB94_2 Depth=2
	addss	(%r10,%r9), %xmm2
	movss	%xmm2, (%r10,%r9)
	addq	$4, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	jne	.LBB94_2
	jmp	.LBB94_6
.LBB94_7:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s275;
	.scl	2;
	.type	32;
	.endef
	.globl	s275                            # -- Begin function s275
	.p2align	4
s275:                                   # @s275
.seh_proc s275
# %bb.0:                                # %.preheader20
	pushq	%r15
	.seh_pushreg %r15
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
	.seh_endprologue
	leaq	"??_C@_05MCLCAJBE@s275?5?$AA@"(%rip), %rcx
	callq	init
	leaq	cc+2048(%rip), %rdi
	leaq	bb+2048(%rip), %rbx
	leaq	aa+2048(%rip), %r14
	xorl	%r15d, %r15d
	callq	clock
	movl	%eax, %esi
	leaq	aa(%rip), %rax
	xorps	%xmm0, %xmm0
	jmp	.LBB95_1
	.p2align	4
.LBB95_41:                              # %.loopexit.9
                                        #   in Loop: Header=BB95_1 Depth=1
	incq	%r15
	addq	$4, %rdi
	addq	$4, %rbx
	addq	$4, %r14
	cmpq	$256, %r15                      # imm = 0x100
	je	.LBB95_42
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
                                        #     Child Loop BB95_7 Depth 2
                                        #     Child Loop BB95_11 Depth 2
                                        #     Child Loop BB95_15 Depth 2
                                        #     Child Loop BB95_19 Depth 2
                                        #     Child Loop BB95_23 Depth 2
                                        #     Child Loop BB95_27 Depth 2
                                        #     Child Loop BB95_31 Depth 2
                                        #     Child Loop BB95_35 Depth 2
                                        #     Child Loop BB95_39 Depth 2
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_5
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_5
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_3
	.p2align	4
.LBB95_5:                               # %.loopexit
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_9
# %bb.6:                                # %.preheader.1
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_7:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_9
# %bb.8:                                #   in Loop: Header=BB95_7 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_7
	.p2align	4
.LBB95_9:                               # %.loopexit.1
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_13
# %bb.10:                               # %.preheader.2
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_11:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_13
# %bb.12:                               #   in Loop: Header=BB95_11 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_11
	.p2align	4
.LBB95_13:                              # %.loopexit.2
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_17
# %bb.14:                               # %.preheader.3
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_15:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_17
# %bb.16:                               #   in Loop: Header=BB95_15 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_15
	.p2align	4
.LBB95_17:                              # %.loopexit.3
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_21
# %bb.18:                               # %.preheader.4
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_19:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_21
# %bb.20:                               #   in Loop: Header=BB95_19 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_19
	.p2align	4
.LBB95_21:                              # %.loopexit.4
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_25
# %bb.22:                               # %.preheader.5
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_23:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_25
# %bb.24:                               #   in Loop: Header=BB95_23 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_23
	.p2align	4
.LBB95_25:                              # %.loopexit.5
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_29
# %bb.26:                               # %.preheader.6
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_27:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_29
# %bb.28:                               #   in Loop: Header=BB95_27 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_27
	.p2align	4
.LBB95_29:                              # %.loopexit.6
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_33
# %bb.30:                               # %.preheader.7
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_31:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_33
# %bb.32:                               #   in Loop: Header=BB95_31 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_31
	.p2align	4
.LBB95_33:                              # %.loopexit.7
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_37
# %bb.34:                               # %.preheader.8
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_35:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_37
# %bb.36:                               #   in Loop: Header=BB95_35 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_35
	.p2align	4
.LBB95_37:                              # %.loopexit.8
                                        #   in Loop: Header=BB95_1 Depth=1
	movss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB95_41
# %bb.38:                               # %.preheader.9
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4
.LBB95_39:                              #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-1024(%rdi,%rcx), %xmm1
	addss	-2048(%r14,%rcx), %xmm1
	movss	%xmm1, -1024(%r14,%rcx)
	cmpq	$260096, %rcx                   # imm = 0x3F800
	je	.LBB95_41
# %bb.40:                               #   in Loop: Header=BB95_39 Depth=2
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdi,%rcx), %xmm1
	addss	-1024(%r14,%rcx), %xmm1
	movss	%xmm1, (%r14,%rcx)
	addq	$2048, %rcx                     # imm = 0x800
	jmp	.LBB95_39
.LBB95_42:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2275;
	.scl	2;
	.type	32;
	.endef
	.globl	s2275                           # -- Begin function s2275
	.p2align	4
s2275:                                  # @s2275
.seh_proc s2275
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05MCLCAJBE@s275?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	cc+1024(%rip), %rax
	leaq	bb+1024(%rip), %rcx
	leaq	aa+1024(%rip), %rdx
	leaq	b(%rip), %r8
	leaq	c(%rip), %r9
	leaq	d(%rip), %r10
	leaq	a(%rip), %r11
	.p2align	4
.LBB96_1:                               # %.preheader23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB96_2 Depth 2
                                        #       Child Loop BB96_3 Depth 3
	movq	%rdx, %rbx
	movq	%rcx, %r14
	movq	%rax, %r15
	xorl	%r12d, %r12d
	.p2align	4
.LBB96_2:                               # %.preheader
                                        #   Parent Loop BB96_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB96_3 Depth 3
	xorl	%r13d, %r13d
	.p2align	4
.LBB96_3:                               #   Parent Loop BB96_1 Depth=1
                                        #     Parent Loop BB96_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-1024(%r14,%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	-1024(%r15,%r13), %xmm0
	addss	-1024(%rbx,%r13), %xmm0
	movss	%xmm0, -1024(%rbx,%r13)
	movss	(%r14,%r13), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	(%r15,%r13), %xmm0
	addss	(%rbx,%r13), %xmm0
	movss	%xmm0, (%rbx,%r13)
	addq	$2048, %r13                     # imm = 0x800
	cmpq	$262144, %r13                   # imm = 0x40000
	jne	.LBB96_3
# %bb.4:                                #   in Loop: Header=BB96_2 Depth=2
	movss	(%r9,%r12,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	mulss	(%r10,%r12,4), %xmm0
	addss	(%r8,%r12,4), %xmm0
	movss	%xmm0, (%r11,%r12,4)
	incq	%r12
	addq	$4, %r15
	addq	$4, %r14
	addq	$4, %rbx
	cmpq	$256, %r12                      # imm = 0x100
	jne	.LBB96_2
# %bb.5:                                #   in Loop: Header=BB96_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	jne	.LBB96_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
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
	.def	s276;
	.scl	2;
	.type	32;
	.endef
	.globl	s276                            # -- Begin function s276
	.p2align	4
s276:                                   # @s276
.seh_proc s276
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MAPELHEN@s276?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	d(%rip), %r8
	.p2align	4
.LBB97_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB97_2 Depth 2
	xorl	%r9d, %r9d
	.p2align	4
.LBB97_2:                               #   Parent Loop BB97_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$15999, %r9                     # imm = 0x3E7F
	movq	%r8, %r10
	cmovbq	%rdx, %r10
	movss	(%rax,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movss	4(%rax,%r9,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	(%r10,%r9,4), %xmm0
	addss	(%rcx,%r9,4), %xmm0
	movss	%xmm0, (%rcx,%r9,4)
	leaq	1(%r9), %r10
	cmpq	$15999, %r10                    # imm = 0x3E7F
	movq	%r8, %r10
	cmovbq	%rdx, %r10
	mulss	4(%r10,%r9,4), %xmm1
	addss	4(%rcx,%r9,4), %xmm1
	movss	%xmm1, 4(%rcx,%r9,4)
	addq	$2, %r9
	cmpq	$32000, %r9                     # imm = 0x7D00
	jne	.LBB97_2
# %bb.3:                                #   in Loop: Header=BB97_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB97_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s277;
	.scl	2;
	.type	32;
	.endef
	.globl	s277                            # -- Begin function s277
	.p2align	4
s277:                                   # @s277
.seh_proc s277
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MBDGNNHK@s277?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	e(%rip), %r9
	jmp	.LBB98_1
	.p2align	4
.LBB98_7:                               #   in Loop: Header=BB98_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB98_8
.LBB98_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB98_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB98_2
	.p2align	4
.LBB98_5:                               # %._crit_edge
                                        #   in Loop: Header=BB98_2 Depth=2
	mulss	(%r10,%r9), %xmm3
	addss	%xmm2, %xmm3
	movss	%xmm3, 4(%r10,%rcx)
.LBB98_6:                               #   in Loop: Header=BB98_2 Depth=2
	addq	$4, %r10
	cmpq	$127996, %r10                   # imm = 0x1F3FC
	je	.LBB98_7
.LBB98_2:                               #   Parent Loop BB98_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rax), %xmm1              # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB98_6
# %bb.3:                                #   in Loop: Header=BB98_2 Depth=2
	movss	(%r10,%rcx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	movss	(%r10,%rdx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movss	(%r10,%r8), %xmm3               # xmm3 = mem[0],zero,zero,zero
	jae	.LBB98_5
# %bb.4:                                #   in Loop: Header=BB98_2 Depth=2
	movaps	%xmm2, %xmm4
	mulss	%xmm3, %xmm4
	addss	%xmm1, %xmm4
	movss	%xmm4, (%r10,%rax)
	jmp	.LBB98_5
.LBB98_8:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s278;
	.scl	2;
	.type	32;
	.endef
	.globl	s278                            # -- Begin function s278
	.p2align	4
s278:                                   # @s278
.seh_proc s278
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MKGKJKEH@s278?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	d(%rip), %rcx
	leaq	e(%rip), %rdx
	leaq	c(%rip), %r8
	leaq	b(%rip), %r9
	jmp	.LBB99_1
	.p2align	4
.LBB99_6:                               #   in Loop: Header=BB99_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB99_7
.LBB99_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB99_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB99_2
	.p2align	4
.LBB99_4:                               #   in Loop: Header=BB99_2 Depth=2
	subss	(%r10,%r8), %xmm2
	movss	%xmm2, (%r10,%r8)
	movaps	%xmm2, %xmm3
	movss	(%r10,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
.LBB99_5:                               #   in Loop: Header=BB99_2 Depth=2
	mulss	%xmm1, %xmm3
	addss	%xmm2, %xmm3
	movss	%xmm3, (%r10,%rax)
	addq	$4, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	je	.LBB99_6
.LBB99_2:                               #   Parent Loop BB99_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rax), %xmm1              # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movss	(%r10,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movss	(%r10,%rdx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	ja	.LBB99_4
# %bb.3:                                #   in Loop: Header=BB99_2 Depth=2
	subss	(%r10,%r9), %xmm2
	movss	%xmm2, (%r10,%r9)
	movss	(%r10,%r8), %xmm3               # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB99_5
.LBB99_7:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$123, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s279;
	.scl	2;
	.type	32;
	.endef
	.globl	s279                            # -- Begin function s279
	.p2align	4
s279:                                   # @s279
.seh_proc s279
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MLKIPAHA@s279?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	c(%rip), %rcx
	leaq	e(%rip), %rdx
	leaq	b(%rip), %r8
	leaq	d(%rip), %r9
	jmp	.LBB100_1
	.p2align	4
.LBB100_8:                              #   in Loop: Header=BB100_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	je	.LBB100_9
.LBB100_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB100_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB100_2
	.p2align	4
.LBB100_6:                              #   in Loop: Header=BB100_2 Depth=2
	movss	(%r10,%rdx), %xmm3              # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm3
	subss	(%r10,%rcx), %xmm3
	movss	%xmm3, (%r10,%rcx)
	movss	(%r10,%r8), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	(%r10,%r9), %xmm1               # xmm1 = mem[0],zero,zero,zero
.LBB100_7:                              #   in Loop: Header=BB100_2 Depth=2
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, (%r10,%rax)
	addq	$4, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	je	.LBB100_8
.LBB100_2:                              #   Parent Loop BB100_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rax), %xmm3              # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm3
	ja	.LBB100_6
# %bb.3:                                #   in Loop: Header=BB100_2 Depth=2
	movss	(%r10,%r9), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	subss	(%r10,%r8), %xmm2
	movss	%xmm2, (%r10,%r8)
	ucomiss	%xmm2, %xmm3
	jae	.LBB100_4
# %bb.5:                                #   in Loop: Header=BB100_2 Depth=2
	movss	(%r10,%rdx), %xmm3              # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	(%r10,%rcx), %xmm3
	movss	%xmm3, (%r10,%rcx)
	jmp	.LBB100_7
	.p2align	4
.LBB100_4:                              # %._crit_edge
                                        #   in Loop: Header=BB100_2 Depth=2
	movss	(%r10,%rcx), %xmm3              # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB100_7
.LBB100_9:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$123, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1279;
	.scl	2;
	.type	32;
	.endef
	.globl	s1279                           # -- Begin function s1279
	.p2align	4
s1279:                                  # @s1279
.seh_proc s1279
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$72, %rsp
	.seh_stackalloc 72
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05MLKIPAHA@s279?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	b(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	e(%rip), %r8
	leaq	c(%rip), %r9
	jmp	.LBB101_1
	.p2align	4
.LBB101_19:                             # %middle.block
                                        #   in Loop: Header=BB101_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB101_20
.LBB101_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_2 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB101_2
	.p2align	4
.LBB101_18:                             # %pred.store.continue42
                                        #   in Loop: Header=BB101_2 Depth=2
	addq	$32, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	je	.LBB101_19
.LBB101_2:                              # %vector.body
                                        #   Parent Loop BB101_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r10,%rax), %xmm4
	movaps	%xmm4, %xmm1
	cmpltps	%xmm0, %xmm1
	cmpltps	(%r10,%rcx), %xmm4
	andps	%xmm1, %xmm4
	movaps	(%r10,%rdx), %xmm2
	movaps	(%r10,%r8), %xmm1
	movaps	(%r10,%r9), %xmm3
	movd	%xmm4, %r11d
	testb	$1, %r11b
	jne	.LBB101_3
# %bb.4:                                # %pred.store.continue
                                        #   in Loop: Header=BB101_2 Depth=2
	pextrw	$2, %xmm4, %r11d
	testb	$1, %r11b
	jne	.LBB101_5
.LBB101_6:                              # %pred.store.continue30
                                        #   in Loop: Header=BB101_2 Depth=2
	pextrw	$4, %xmm4, %r11d
	testb	$1, %r11b
	jne	.LBB101_7
.LBB101_8:                              # %pred.store.continue32
                                        #   in Loop: Header=BB101_2 Depth=2
	pextrw	$6, %xmm4, %r11d
	testb	$1, %r11b
	je	.LBB101_10
.LBB101_9:                              # %pred.store.if33
                                        #   in Loop: Header=BB101_2 Depth=2
	shufps	$255, %xmm2, %xmm2              # xmm2 = xmm2[3,3,3,3]
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	shufps	$255, %xmm3, %xmm3              # xmm3 = xmm3[3,3,3,3]
	mulss	%xmm2, %xmm1
	addss	%xmm3, %xmm1
	movss	%xmm1, 12(%r10,%r9)
.LBB101_10:                             # %pred.store.continue34
                                        #   in Loop: Header=BB101_2 Depth=2
	movaps	16(%r10,%rax), %xmm4
	movaps	%xmm4, %xmm1
	cmpltps	%xmm0, %xmm1
	cmpltps	16(%r10,%rcx), %xmm4
	andps	%xmm1, %xmm4
	movaps	16(%r10,%rdx), %xmm2
	movaps	16(%r10,%r8), %xmm1
	movaps	16(%r10,%r9), %xmm3
	movd	%xmm4, %r11d
	testb	$1, %r11b
	jne	.LBB101_11
# %bb.12:                               # %pred.store.continue36
                                        #   in Loop: Header=BB101_2 Depth=2
	pextrw	$2, %xmm4, %r11d
	testb	$1, %r11b
	jne	.LBB101_13
.LBB101_14:                             # %pred.store.continue38
                                        #   in Loop: Header=BB101_2 Depth=2
	pextrw	$4, %xmm4, %r11d
	testb	$1, %r11b
	jne	.LBB101_15
.LBB101_16:                             # %pred.store.continue40
                                        #   in Loop: Header=BB101_2 Depth=2
	pextrw	$6, %xmm4, %r11d
	testb	$1, %r11b
	je	.LBB101_18
	jmp	.LBB101_17
	.p2align	4
.LBB101_3:                              # %pred.store.if
                                        #   in Loop: Header=BB101_2 Depth=2
	movaps	%xmm2, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm3, %xmm5
	movss	%xmm5, (%r10,%r9)
	pextrw	$2, %xmm4, %r11d
	testb	$1, %r11b
	je	.LBB101_6
.LBB101_5:                              # %pred.store.if29
                                        #   in Loop: Header=BB101_2 Depth=2
	movaps	%xmm2, %xmm5
	shufps	$85, %xmm2, %xmm5               # xmm5 = xmm5[1,1],xmm2[1,1]
	movaps	%xmm1, %xmm6
	shufps	$85, %xmm1, %xmm6               # xmm6 = xmm6[1,1],xmm1[1,1]
	movaps	%xmm3, %xmm7
	shufps	$85, %xmm3, %xmm7               # xmm7 = xmm7[1,1],xmm3[1,1]
	mulss	%xmm5, %xmm6
	addss	%xmm7, %xmm6
	movss	%xmm6, 4(%r10,%r9)
	pextrw	$4, %xmm4, %r11d
	testb	$1, %r11b
	je	.LBB101_8
.LBB101_7:                              # %pred.store.if31
                                        #   in Loop: Header=BB101_2 Depth=2
	movaps	%xmm2, %xmm5
	unpckhpd	%xmm2, %xmm5                    # xmm5 = xmm5[1],xmm2[1]
	movaps	%xmm1, %xmm6
	unpckhpd	%xmm1, %xmm6                    # xmm6 = xmm6[1],xmm1[1]
	movaps	%xmm3, %xmm7
	unpckhpd	%xmm3, %xmm7                    # xmm7 = xmm7[1],xmm3[1]
	mulss	%xmm5, %xmm6
	addss	%xmm7, %xmm6
	movss	%xmm6, 8(%r10,%r9)
	pextrw	$6, %xmm4, %r11d
	testb	$1, %r11b
	jne	.LBB101_9
	jmp	.LBB101_10
	.p2align	4
.LBB101_11:                             # %pred.store.if35
                                        #   in Loop: Header=BB101_2 Depth=2
	movaps	%xmm2, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm3, %xmm5
	movss	%xmm5, 16(%r10,%r9)
	pextrw	$2, %xmm4, %r11d
	testb	$1, %r11b
	je	.LBB101_14
.LBB101_13:                             # %pred.store.if37
                                        #   in Loop: Header=BB101_2 Depth=2
	movaps	%xmm2, %xmm5
	shufps	$85, %xmm2, %xmm5               # xmm5 = xmm5[1,1],xmm2[1,1]
	movaps	%xmm1, %xmm6
	shufps	$85, %xmm1, %xmm6               # xmm6 = xmm6[1,1],xmm1[1,1]
	movaps	%xmm3, %xmm7
	shufps	$85, %xmm3, %xmm7               # xmm7 = xmm7[1,1],xmm3[1,1]
	mulss	%xmm5, %xmm6
	addss	%xmm7, %xmm6
	movss	%xmm6, 20(%r10,%r9)
	pextrw	$4, %xmm4, %r11d
	testb	$1, %r11b
	je	.LBB101_16
.LBB101_15:                             # %pred.store.if39
                                        #   in Loop: Header=BB101_2 Depth=2
	movaps	%xmm2, %xmm5
	unpckhpd	%xmm2, %xmm5                    # xmm5 = xmm5[1],xmm2[1]
	movaps	%xmm1, %xmm6
	unpckhpd	%xmm1, %xmm6                    # xmm6 = xmm6[1],xmm1[1]
	movaps	%xmm3, %xmm7
	unpckhpd	%xmm3, %xmm7                    # xmm7 = xmm7[1],xmm3[1]
	mulss	%xmm5, %xmm6
	addss	%xmm7, %xmm6
	movss	%xmm6, 24(%r10,%r9)
	pextrw	$6, %xmm4, %r11d
	testb	$1, %r11b
	je	.LBB101_18
.LBB101_17:                             # %pred.store.if41
                                        #   in Loop: Header=BB101_2 Depth=2
	shufps	$255, %xmm2, %xmm2              # xmm2 = xmm2[3,3,3,3]
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	shufps	$255, %xmm3, %xmm3              # xmm3 = xmm3[3,3,3,3]
	mulss	%xmm2, %xmm1
	addss	%xmm3, %xmm1
	movss	%xmm1, 28(%r10,%r9)
	jmp	.LBB101_18
.LBB101_20:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$123, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	.seh_startepilogue
	addq	$72, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2710;
	.scl	2;
	.type	32;
	.endef
	.globl	s2710                           # -- Begin function s2710
	.p2align	4
s2710:                                  # @s2710
.seh_proc s2710
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movaps	%xmm0, %xmm6
	leaq	"??_C@_05IPHJLDJJ@s2710?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	leaq	a(%rip), %rcx
	leaq	b(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	c(%rip), %r9
	leaq	e(%rip), %r10
	ucomiss	%xmm0, %xmm6
	ja	.LBB102_4
	jmp	.LBB102_1
	.p2align	4
.LBB102_9:                              # %.split.us.us
                                        #   in Loop: Header=BB102_4 Depth=1
	incl	%eax
	cmpl	$128, %eax
	je	.LBB102_13
.LBB102_4:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB102_5 Depth 2
	xorl	%r11d, %r11d
	jmp	.LBB102_5
	.p2align	4
.LBB102_7:                              #   in Loop: Header=BB102_5 Depth=2
	movss	(%r11,%r8), %xmm2               # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r11,%rcx)
	mulss	%xmm2, %xmm2
	addss	(%r11,%r9), %xmm2
	movss	%xmm2, (%r11,%r9)
	addq	$4, %r11
	cmpq	$128000, %r11                   # imm = 0x1F400
	je	.LBB102_9
.LBB102_5:                              #   Parent Loop BB102_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r11,%rcx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	(%r11,%rdx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB102_7
# %bb.6:                                #   in Loop: Header=BB102_5 Depth=2
	movss	(%r11,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r11,%rdx)
	movss	(%r11,%r8), %xmm1               # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r11,%r9)
	addq	$4, %r11
	cmpq	$128000, %r11                   # imm = 0x1F400
	jne	.LBB102_5
	jmp	.LBB102_9
	.p2align	4
.LBB102_12:                             # %.split
                                        #   in Loop: Header=BB102_1 Depth=1
	incl	%eax
	cmpl	$128, %eax
	je	.LBB102_13
.LBB102_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB102_2 Depth 2
	xorl	%r11d, %r11d
	jmp	.LBB102_2
	.p2align	4
.LBB102_3:                              #   in Loop: Header=BB102_2 Depth=2
	movss	(%r11,%r8), %xmm0               # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r11,%rcx)
	mulss	%xmm0, %xmm0
	addss	(%r11,%r9), %xmm0
	movss	%xmm0, (%r11,%r9)
	addq	$4, %r11
	cmpq	$128000, %r11                   # imm = 0x1F400
	je	.LBB102_12
.LBB102_2:                              #   Parent Loop BB102_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r11,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movss	(%r11,%rdx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	ja	.LBB102_3
# %bb.10:                               #   in Loop: Header=BB102_2 Depth=2
	movss	(%r11,%r10), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	(%r11,%r9), %xmm2               # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	mulss	%xmm0, %xmm0
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	addps	%xmm1, %xmm0
	movss	%xmm0, (%r11,%rdx)
	shufps	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	movss	%xmm0, (%r11,%r9)
	addq	$4, %r11
	cmpq	$128000, %r11                   # imm = 0x1F400
	jne	.LBB102_2
	jmp	.LBB102_12
.LBB102_13:                             # %.split34.us
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$123, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2711;
	.scl	2;
	.type	32;
	.endef
	.globl	s2711                           # -- Begin function s2711
	.p2align	4
s2711:                                  # @s2711
.seh_proc s2711
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05JGGCICNI@s2711?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	jmp	.LBB103_1
	.p2align	4
.LBB103_11:                             # %middle.block
                                        #   in Loop: Header=BB103_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	je	.LBB103_12
.LBB103_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB103_2 Depth 2
	xorl	%r8d, %r8d
	jmp	.LBB103_2
	.p2align	4
.LBB103_10:                             # %pred.store.continue25
                                        #   in Loop: Header=BB103_2 Depth=2
	addq	$16, %r8
	cmpq	$128000, %r8                    # imm = 0x1F400
	je	.LBB103_11
.LBB103_2:                              # %vector.body
                                        #   Parent Loop BB103_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r8,%rax), %xmm3
	movaps	(%r8,%rcx), %xmm2
	mulps	%xmm3, %xmm2
	addps	(%r8,%rdx), %xmm2
	ucomiss	%xmm0, %xmm3
	jne	.LBB103_3
	jp	.LBB103_3
# %bb.4:                                # %pred.store.continue
                                        #   in Loop: Header=BB103_2 Depth=2
	cmpneqps	%xmm1, %xmm3
	pextrw	$2, %xmm3, %r9d
	testb	$1, %r9b
	jne	.LBB103_5
.LBB103_6:                              # %pred.store.continue21
                                        #   in Loop: Header=BB103_2 Depth=2
	pextrw	$4, %xmm3, %r9d
	testb	$1, %r9b
	jne	.LBB103_7
.LBB103_8:                              # %pred.store.continue23
                                        #   in Loop: Header=BB103_2 Depth=2
	pextrw	$6, %xmm3, %r9d
	testb	$1, %r9b
	je	.LBB103_10
	jmp	.LBB103_9
	.p2align	4
.LBB103_3:                              # %pred.store.if
                                        #   in Loop: Header=BB103_2 Depth=2
	movss	%xmm2, (%r8,%rdx)
	cmpneqps	%xmm1, %xmm3
	pextrw	$2, %xmm3, %r9d
	testb	$1, %r9b
	je	.LBB103_6
.LBB103_5:                              # %pred.store.if20
                                        #   in Loop: Header=BB103_2 Depth=2
	movaps	%xmm2, %xmm4
	shufps	$85, %xmm2, %xmm4               # xmm4 = xmm4[1,1],xmm2[1,1]
	movss	%xmm4, 4(%r8,%rdx)
	pextrw	$4, %xmm3, %r9d
	testb	$1, %r9b
	je	.LBB103_8
.LBB103_7:                              # %pred.store.if22
                                        #   in Loop: Header=BB103_2 Depth=2
	movaps	%xmm2, %xmm4
	unpckhpd	%xmm2, %xmm4                    # xmm4 = xmm4[1],xmm2[1]
	movss	%xmm4, 8(%r8,%rdx)
	pextrw	$6, %xmm3, %r9d
	testb	$1, %r9b
	je	.LBB103_10
.LBB103_9:                              # %pred.store.if24
                                        #   in Loop: Header=BB103_2 Depth=2
	shufps	$255, %xmm2, %xmm2              # xmm2 = xmm2[3,3,3,3]
	movss	%xmm2, 12(%r8,%rdx)
	jmp	.LBB103_10
.LBB103_12:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2712;
	.scl	2;
	.type	32;
	.endef
	.globl	s2712                           # -- Begin function s2712
	.p2align	4
s2712:                                  # @s2712
.seh_proc s2712
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05LNEPNBBL@s2712?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	jmp	.LBB104_1
	.p2align	4
.LBB104_11:                             # %middle.block
                                        #   in Loop: Header=BB104_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	je	.LBB104_12
.LBB104_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB104_2 Depth 2
	xorl	%r8d, %r8d
	jmp	.LBB104_2
	.p2align	4
.LBB104_10:                             # %pred.store.continue28
                                        #   in Loop: Header=BB104_2 Depth=2
	addq	$16, %r8
	cmpq	$128000, %r8                    # imm = 0x1F400
	je	.LBB104_11
.LBB104_2:                              # %vector.body
                                        #   Parent Loop BB104_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r8,%rax), %xmm2
	movaps	(%r8,%rcx), %xmm1
	movaps	(%r8,%rdx), %xmm0
	mulps	%xmm1, %xmm0
	addps	%xmm2, %xmm0
	ucomiss	%xmm1, %xmm2
	ja	.LBB104_3
# %bb.4:                                # %pred.store.continue
                                        #   in Loop: Header=BB104_2 Depth=2
	cmpltps	%xmm2, %xmm1
	pextrw	$2, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB104_5
.LBB104_6:                              # %pred.store.continue24
                                        #   in Loop: Header=BB104_2 Depth=2
	pextrw	$4, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB104_7
.LBB104_8:                              # %pred.store.continue26
                                        #   in Loop: Header=BB104_2 Depth=2
	pextrw	$6, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB104_10
	jmp	.LBB104_9
	.p2align	4
.LBB104_3:                              # %pred.store.if
                                        #   in Loop: Header=BB104_2 Depth=2
	movss	%xmm0, (%r8,%rax)
	cmpltps	%xmm2, %xmm1
	pextrw	$2, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB104_6
.LBB104_5:                              # %pred.store.if23
                                        #   in Loop: Header=BB104_2 Depth=2
	movaps	%xmm0, %xmm2
	shufps	$85, %xmm0, %xmm2               # xmm2 = xmm2[1,1],xmm0[1,1]
	movss	%xmm2, 4(%r8,%rax)
	pextrw	$4, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB104_8
.LBB104_7:                              # %pred.store.if25
                                        #   in Loop: Header=BB104_2 Depth=2
	movaps	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2                    # xmm2 = xmm2[1],xmm0[1]
	movss	%xmm2, 8(%r8,%rax)
	pextrw	$6, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB104_10
.LBB104_9:                              # %pred.store.if27
                                        #   in Loop: Header=BB104_2 Depth=2
	shufps	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	movss	%xmm0, 12(%r8,%rax)
	jmp	.LBB104_10
.LBB104_12:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s281;
	.scl	2;
	.type	32;
	.endef
	.globl	s281                            # -- Begin function s281
	.p2align	4
s281:                                   # @s281
.seh_proc s281
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05JNNILBJO@s281?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a+127996(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	movss	__real@bf800000(%rip), %xmm0    # xmm0 = [-1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	leaq	a(%rip), %r8
	.p2align	4
.LBB105_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB105_2 Depth 2
	movq	%rax, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB105_2:                              #   Parent Loop BB105_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	(%r10,%rdx), %xmm1
	addss	(%r9), %xmm1
	movss	%xmm1, (%r10,%rcx)
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r10,%r8)
	addq	$4, %r10
	addq	$-4, %r9
	cmpq	$128000, %r10                   # imm = 0x1F400
	jne	.LBB105_2
# %bb.3:                                #   in Loop: Header=BB105_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB105_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1281;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@bf800000bf800000bf800000bf800000 # -- Begin function s1281
	.section	.rdata,"dr",discard,__xmm@bf800000bf800000bf800000bf800000
	.p2align	4, 0x0
__xmm@bf800000bf800000bf800000bf800000:
	.long	0xbf800000                      # float -1
	.long	0xbf800000                      # float -1
	.long	0xbf800000                      # float -1
	.long	0xbf800000                      # float -1
	.text
	.globl	s1281
	.p2align	4
s1281:                                  # @s1281
.seh_proc s1281
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05JNNILBJO@s281?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	e(%rip), %r9
	movaps	__xmm@bf800000bf800000bf800000bf800000(%rip), %xmm0 # xmm0 = [-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0]
	.p2align	4
.LBB106_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB106_2 Depth 2
	xorl	%r10d, %r10d
	.p2align	4
.LBB106_2:                              # %vector.body
                                        #   Parent Loop BB106_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r10,%rdx), %xmm1
	mulps	(%r10,%r8), %xmm1
	movaps	(%r10,%rax), %xmm2
	mulps	(%r10,%rcx), %xmm2
	addps	%xmm1, %xmm2
	addps	(%r10,%r9), %xmm2
	movaps	%xmm2, (%r10,%rax)
	addps	%xmm0, %xmm2
	movaps	%xmm2, (%r10,%rdx)
	addq	$16, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	jne	.LBB106_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB106_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB106_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s291;
	.scl	2;
	.type	32;
	.endef
	.globl	s291                            # -- Begin function s291
	.p2align	4
s291:                                   # @s291
.seh_proc s291
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05CFGENGPL@s291?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	b+127996(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	movaps	__xmm@3f0000003f0000003f0000003f000000(%rip), %xmm1 # xmm1 = [5.0E-1,5.0E-1,5.0E-1,5.0E-1]
	leaq	a(%rip), %rdx
	.p2align	4
.LBB107_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB107_2 Depth 2
	movl	$4, %r8d
	movaps	%xmm0, %xmm2
	.p2align	4
.LBB107_2:                              # %vector.body
                                        #   Parent Loop BB107_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rcx,%r8,4), %xmm3
	movaps	(%rcx,%r8,4), %xmm4
	shufps	$3, %xmm3, %xmm2                # xmm2 = xmm2[3,0],xmm3[0,0]
	shufps	$152, %xmm3, %xmm2              # xmm2 = xmm2[0,2],xmm3[1,2]
	addps	%xmm3, %xmm2
	shufps	$3, %xmm4, %xmm3                # xmm3 = xmm3[3,0],xmm4[0,0]
	shufps	$152, %xmm4, %xmm3              # xmm3 = xmm3[0,2],xmm4[1,2]
	addps	%xmm4, %xmm3
	mulps	%xmm1, %xmm2
	mulps	%xmm1, %xmm3
	movaps	%xmm2, -16(%rdx,%r8,4)
	movaps	%xmm3, (%rdx,%r8,4)
	addq	$8, %r8
	movaps	%xmm4, %xmm2
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB107_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB107_1 Depth=1
	incl	%eax
	cmpl	$512, %eax                      # imm = 0x200
	jne	.LBB107_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s292;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3eaa7efa                 # -- Begin function s292
	.section	.rdata,"dr",discard,__real@3eaa7efa
	.p2align	2, 0x0
__real@3eaa7efa:
	.long	0x3eaa7efa                      # float 0.333000004
	.text
	.globl	s292
	.p2align	4
s292:                                   # @s292
.seh_proc s292
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05CHCCGIKC@s292?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	xorl	%eax, %eax
	movss	b+127996(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	leaq	b(%rip), %rcx
	movss	__real@3eaa7efa(%rip), %xmm1    # xmm1 = [3.33000004E-1,0.0E+0,0.0E+0,0.0E+0]
	leaq	a(%rip), %rdx
	.p2align	4
.LBB108_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB108_2 Depth 2
	movl	$31999, %r8d                    # imm = 0x7CFF
	movl	$31998, %r11d                   # imm = 0x7CFE
	movl	$1, %r10d
	movaps	%xmm0, %xmm2
	.p2align	4
.LBB108_2:                              #   Parent Loop BB108_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%r10), %r9
	movss	-4(%rcx,%r10,4), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movss	(%rcx,%r10,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	addss	%xmm3, %xmm2
	andl	$-2, %r11d
	addss	(%rcx,%r11,4), %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm4, %xmm3
	movl	%r8d, %r8d
	addss	(%rcx,%r8,4), %xmm3
	movss	%xmm2, -4(%rdx,%r10,4)
	mulss	%xmm1, %xmm3
	movss	%xmm3, (%rdx,%r10,4)
	movq	%r10, %r8
	addq	$2, %r10
	movaps	%xmm4, %xmm2
	movq	%r9, %r11
	cmpq	$32001, %r10                    # imm = 0x7D01
	jne	.LBB108_2
# %bb.3:                                #   in Loop: Header=BB108_1 Depth=1
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB108_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s293;
	.scl	2;
	.type	32;
	.endef
	.globl	s293                            # -- Begin function s293
	.p2align	4
s293:                                   # @s293
.seh_proc s293
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05CGOAACJF@s293?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	.p2align	4
.LBB109_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB109_2 Depth 2
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movl	$36, %ecx
	.p2align	4
.LBB109_2:                              # %vector.body
                                        #   Parent Loop BB109_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm0, -144(%rax,%rcx,4)
	movaps	%xmm0, -128(%rax,%rcx,4)
	movaps	%xmm0, -112(%rax,%rcx,4)
	movaps	%xmm0, -96(%rax,%rcx,4)
	movaps	%xmm0, -80(%rax,%rcx,4)
	movaps	%xmm0, -64(%rax,%rcx,4)
	movaps	%xmm0, -48(%rax,%rcx,4)
	movaps	%xmm0, -32(%rax,%rcx,4)
	movaps	%xmm0, -16(%rax,%rcx,4)
	movaps	%xmm0, (%rax,%rcx,4)
	addq	$40, %rcx
	cmpq	$32036, %rcx                    # imm = 0x7D24
	jne	.LBB109_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB109_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB109_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2101;
	.scl	2;
	.type	32;
	.endef
	.globl	s2101                           # -- Begin function s2101
	.p2align	4
s2101:                                  # @s2101
.seh_proc s2101
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05LCMLLHDD@s2101?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	bb(%rip), %rax
	leaq	cc(%rip), %rcx
	leaq	aa(%rip), %rdx
	.p2align	4
.LBB110_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_2 Depth 2
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4
.LBB110_2:                              #   Parent Loop BB110_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r8,%rax), %xmm0               # xmm0 = mem[0],zero,zero,zero
	mulss	(%r8,%rcx), %xmm0
	addss	(%r8,%rdx), %xmm0
	movss	%xmm0, (%r8,%rdx)
	movss	1028(%r8,%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	1028(%r8,%rcx), %xmm0
	addss	1028(%r8,%rdx), %xmm0
	movss	%xmm0, 1028(%r8,%rdx)
	addq	$2048, %r9                      # imm = 0x800
	addq	$2056, %r8                      # imm = 0x808
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB110_2
# %bb.3:                                #   in Loop: Header=BB110_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	jne	.LBB110_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2102;
	.scl	2;
	.type	32;
	.endef
	.globl	s2102                           # -- Begin function s2102
	.p2align	4
s2102:                                  # @s2102
.seh_proc s2102
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05JJOGOEPA@s2102?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	aa+3072(%rip), %rax
	leaq	aa(%rip), %rcx
	.p2align	4
.LBB111_1:                              # %.preheader15
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB111_2 Depth 2
                                        #       Child Loop BB111_3 Depth 3
	movq	%rax, %rdx
	xorl	%r8d, %r8d
	.p2align	4
.LBB111_2:                              # %.preheader
                                        #   Parent Loop BB111_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB111_3 Depth 3
	xorl	%r9d, %r9d
	.p2align	4
.LBB111_3:                              #   Parent Loop BB111_1 Depth=1
                                        #     Parent Loop BB111_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, -3072(%rdx,%r9)
	movl	$0, -2048(%rdx,%r9)
	movl	$0, -1024(%rdx,%r9)
	movl	$0, (%rdx,%r9)
	addq	$4096, %r9                      # imm = 0x1000
	cmpq	$262144, %r9                    # imm = 0x40000
	jne	.LBB111_3
# %bb.4:                                #   in Loop: Header=BB111_2 Depth=2
	movq	%r8, %r9
	shlq	$10, %r9
	addq	%rcx, %r9
	movl	$1065353216, (%r9,%r8,4)        # imm = 0x3F800000
	incq	%r8
	addq	$4, %rdx
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB111_2
# %bb.5:                                #   in Loop: Header=BB111_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	jne	.LBB111_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$11, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s2111;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@40400000                 # -- Begin function s2111
	.section	.rdata,"dr",discard,__real@40400000
	.p2align	2, 0x0
__real@40400000:
	.long	0x40400000                      # float 3
	.text
	.globl	s2111
	.p2align	4
s2111:                                  # @s2111
.seh_proc s2111
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05LDAJNNAE@s2111?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	aa+1044(%rip), %rax
	leaq	aa(%rip), %rcx
	.p2align	4
.LBB112_1:                              # %.preheader26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB112_2 Depth 2
                                        #       Child Loop BB112_3 Depth 3
	movl	$1, %edx
	movq	%rax, %r8
	.p2align	4
.LBB112_2:                              # %.preheader25
                                        #   Parent Loop BB112_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB112_3 Depth 3
	movq	%rdx, %r9
	shlq	$10, %r9
	movss	(%r9,%rcx), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	$-1020, %r9                     # imm = 0xFC04
	.p2align	4
.LBB112_3:                              #   Parent Loop BB112_1 Depth=1
                                        #     Parent Loop BB112_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addss	-20(%r8,%r9), %xmm0
	movss	%xmm0, 1004(%r8,%r9)
	addss	-16(%r8,%r9), %xmm0
	movss	%xmm0, 1008(%r8,%r9)
	addss	-12(%r8,%r9), %xmm0
	movss	%xmm0, 1012(%r8,%r9)
	addss	-8(%r8,%r9), %xmm0
	movss	%xmm0, 1016(%r8,%r9)
	addss	-4(%r8,%r9), %xmm0
	movss	%xmm0, 1020(%r8,%r9)
	addq	$20, %r9
	jne	.LBB112_3
# %bb.4:                                #   in Loop: Header=BB112_2 Depth=2
	incq	%rdx
	addq	$1024, %r8                      # imm = 0x400
	cmpq	$256, %rdx                      # imm = 0x100
	jne	.LBB112_2
# %bb.5:                                #   in Loop: Header=BB112_1 Depth=1
	incl	%edi
	cmpl	$100, %edi
	jne	.LBB112_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorps	%xmm0, %xmm0
	leaq	aa+28(%rip), %rax
	xorl	%ecx, %ecx
	.p2align	4
.LBB112_7:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB112_8 Depth 2
	xorl	%edx, %edx
	.p2align	4
.LBB112_8:                              #   Parent Loop BB112_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addss	-28(%rax,%rdx,4), %xmm0
	addss	-24(%rax,%rdx,4), %xmm0
	addss	-20(%rax,%rdx,4), %xmm0
	addss	-16(%rax,%rdx,4), %xmm0
	addss	-12(%rax,%rdx,4), %xmm0
	addss	-8(%rax,%rdx,4), %xmm0
	addss	-4(%rax,%rdx,4), %xmm0
	addss	(%rax,%rdx,4), %xmm0
	addq	$8, %rdx
	cmpq	$256, %rdx                      # imm = 0x100
	jne	.LBB112_8
# %bb.9:                                #   in Loop: Header=BB112_7 Depth=1
	incq	%rcx
	addq	$1024, %rax                     # imm = 0x400
	cmpq	$256, %rcx                      # imm = 0x100
	jne	.LBB112_7
# %bb.10:
	xorpd	%xmm1, %xmm1
	cmpeqss	%xmm0, %xmm1
	movss	__real@40400000(%rip), %xmm2    # xmm2 = [3.0E+0,0.0E+0,0.0E+0,0.0E+0]
	andps	%xmm1, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	movss	%xmm1, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s311;
	.scl	2;
	.type	32;
	.endef
	.globl	s311                            # -- Begin function s311
	.p2align	4
s311:                                   # @s311
.seh_proc s311
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05NNLANHKE@s311?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	test;
	.scl	2;
	.type	32;
	.endef
	.globl	test                            # -- Begin function test
	.p2align	4
test:                                   # @test
# %bb.0:
	xorps	%xmm0, %xmm0
	addss	(%rcx), %xmm0
	addss	4(%rcx), %xmm0
	addss	8(%rcx), %xmm0
	addss	12(%rcx), %xmm0
	retq
                                        # -- End function
	.def	s31111;
	.scl	2;
	.type	32;
	.endef
	.globl	s31111                          # -- Begin function s31111
	.p2align	4
s31111:                                 # @s31111
.seh_proc s31111
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05NNLANHKE@s311?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s312;
	.scl	2;
	.type	32;
	.endef
	.globl	s312                            # -- Begin function s312
	.p2align	4
s312:                                   # @s312
.seh_proc s312
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NPPGGJPN@s312?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	leaq	a(%rip), %rax
	.p2align	4
.LBB116_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB116_2 Depth 2
	movl	$4, %ecx
	movaps	%xmm0, %xmm6
	.p2align	4
.LBB116_2:                              #   Parent Loop BB116_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulss	-16(%rax,%rcx,4), %xmm6
	mulss	-12(%rax,%rcx,4), %xmm6
	mulss	-8(%rax,%rcx,4), %xmm6
	mulss	-4(%rax,%rcx,4), %xmm6
	mulss	(%rax,%rcx,4), %xmm6
	addq	$5, %rcx
	cmpq	$32004, %rcx                    # imm = 0x7D04
	jne	.LBB116_2
# %bb.3:                                #   in Loop: Header=BB116_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	jne	.LBB116_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s313;
	.scl	2;
	.type	32;
	.endef
	.globl	s313                            # -- Begin function s313
	.p2align	4
s313:                                   # @s313
.seh_proc s313
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NODEADMK@s313?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB117_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB117_2 Depth 2
	xorps	%xmm6, %xmm6
	movl	$1, %edx
	.p2align	4
.LBB117_2:                              #   Parent Loop BB117_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rcx,%rdx,4), %xmm0
	movaps	%xmm6, %xmm1
	movss	(%rax,%rdx,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	mulss	(%rcx,%rdx,4), %xmm6
	addss	%xmm1, %xmm6
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB117_2
# %bb.3:                                #   in Loop: Header=BB117_1 Depth=1
	incl	%edi
	cmpl	$1280, %edi                     # imm = 0x500
	jne	.LBB117_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s314;
	.scl	2;
	.type	32;
	.endef
	.globl	s314                            # -- Begin function s314
	.p2align	4
s314:                                   # @s314
.seh_proc s314
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NLHLBFEP@s314?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	xorl	%eax, %eax
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	leaq	a(%rip), %rcx
	.p2align	4
.LBB118_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB118_2 Depth 2
	movl	$1, %edx
	movaps	%xmm0, %xmm6
	.p2align	4
.LBB118_2:                              #   Parent Loop BB118_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rcx,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	maxss	%xmm6, %xmm1
	movss	(%rcx,%rdx,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	maxss	%xmm1, %xmm6
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB118_2
# %bb.3:                                #   in Loop: Header=BB118_1 Depth=1
	incl	%eax
	cmpl	$1280, %eax                     # imm = 0x500
	jne	.LBB118_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s315;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@10624dd310624dd310624dd310624dd3 # -- Begin function s315
	.section	.rdata,"dr",discard,__xmm@10624dd310624dd310624dd310624dd3
	.p2align	4, 0x0
__xmm@10624dd310624dd310624dd310624dd3:
	.long	274877907                       # 0x10624dd3
	.long	274877907                       # 0x10624dd3
	.long	274877907                       # 0x10624dd3
	.long	274877907                       # 0x10624dd3
	.globl	__xmm@00007d0000007d0000007d0000007d00
	.section	.rdata,"dr",discard,__xmm@00007d0000007d0000007d0000007d00
	.p2align	4, 0x0
__xmm@00007d0000007d0000007d0000007d00:
	.long	32000                           # 0x7d00
	.long	32000                           # 0x7d00
	.long	32000                           # 0x7d00
	.long	32000                           # 0x7d00
	.text
	.globl	s315
	.p2align	4
s315:                                   # @s315
.seh_proc s315
# %bb.0:                                # %vector.ph
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	movdqa	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NKLJHPHI@s315?5?$AA@"(%rip), %rcx
	callq	init
	movdqa	__xmm@00000003000000020000000100000000(%rip), %xmm0 # xmm0 = [0,1,2,3]
	xorl	%eax, %eax
	movdqa	__xmm@10624dd310624dd310624dd310624dd3(%rip), %xmm1 # xmm1 = [274877907,274877907,274877907,274877907]
	movdqa	__xmm@00007d0000007d0000007d0000007d00(%rip), %xmm2 # xmm2 = [32000,32000,32000,32000]
	leaq	a(%rip), %rdi
	movdqa	__xmm@00000004000000040000000400000004(%rip), %xmm3 # xmm3 = [4,4,4,4]
	.p2align	4
.LBB119_1:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm4
	pslld	$3, %xmm4
	psubd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm5
	pmuludq	%xmm1, %xmm5
	pshufd	$237, %xmm5, %xmm5              # xmm5 = xmm5[1,3,2,3]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$237, %xmm6, %xmm6              # xmm6 = xmm6[1,3,2,3]
	punpckldq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	psrld	$11, %xmm5
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm2, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	psubd	%xmm5, %xmm4
	cvtdq2ps	%xmm4, %xmm4
	movaps	%xmm4, (%rax,%rdi)
	paddd	%xmm3, %xmm0
	addq	$16, %rax
	cmpq	$128000, %rax                   # imm = 0x1F400
	jne	.LBB119_1
# %bb.2:                                # %middle.block
	callq	clock
	movl	%eax, %esi
	xorl	%eax, %eax
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	.p2align	4
.LBB119_3:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB119_4 Depth 2
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movaps	%xmm0, %xmm6
	.p2align	4
.LBB119_4:                              #   Parent Loop BB119_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rdi,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm1
	movl	%ebx, %edx
	cmoval	%ecx, %edx
	maxss	%xmm6, %xmm1
	movss	4(%rdi,%rcx,4), %xmm6           # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm6
	leal	1(%rcx), %ebx
	cmovbel	%edx, %ebx
	maxss	%xmm1, %xmm6
	addq	$2, %rcx
	cmpq	$32000, %rcx                    # imm = 0x7D00
	jne	.LBB119_4
# %bb.5:                                #   in Loop: Header=BB119_3 Depth=1
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB119_3
# %bb.6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	addss	%xmm0, %xmm6
	addss	__real@3f800000(%rip), %xmm6
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s316;
	.scl	2;
	.type	32;
	.endef
	.globl	s316                            # -- Begin function s316
	.p2align	4
s316:                                   # @s316
.seh_proc s316
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NIPPMBCB@s316?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	xorl	%eax, %eax
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	leaq	a(%rip), %rcx
	jmp	.LBB120_1
	.p2align	4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	incl	%eax
	cmpl	$1280, %eax                     # imm = 0x500
	je	.LBB120_5
.LBB120_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB120_3 Depth 2
	movl	$2, %edx
	movaps	%xmm0, %xmm1
	movss	-4(%rcx,%rdx,4), %xmm6          # xmm6 = mem[0],zero,zero,zero
	minss	%xmm1, %xmm6
	cmpq	$32000, %rdx                    # imm = 0x7D00
	je	.LBB120_4
	.p2align	4
.LBB120_3:                              #   Parent Loop BB120_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	minss	%xmm6, %xmm1
	addq	$2, %rdx
	movss	-4(%rcx,%rdx,4), %xmm6          # xmm6 = mem[0],zero,zero,zero
	minss	%xmm1, %xmm6
	cmpq	$32000, %rdx                    # imm = 0x7D00
	jne	.LBB120_3
	jmp	.LBB120_4
.LBB120_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s317;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3f7d70a4                 # -- Begin function s317
	.section	.rdata,"dr",discard,__real@3f7d70a4
	.p2align	2, 0x0
__real@3f7d70a4:
	.long	0x3f7d70a4                      # float 0.990000009
	.text
	.globl	s317
	.p2align	4
s317:                                   # @s317
.seh_proc s317
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NJDNKLBG@s317?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movss	__real@3f7d70a4(%rip), %xmm1    # xmm1 = [9.90000009E-1,0.0E+0,0.0E+0,0.0E+0]
	.p2align	4
.LBB121_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB121_2 Depth 2
	movl	$16000, %eax                    # imm = 0x3E80
	movaps	%xmm0, %xmm6
	.p2align	4
.LBB121_2:                              #   Parent Loop BB121_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	addl	$-10, %eax
	jne	.LBB121_2
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	incl	%edi
	cmpl	$1280, %edi                     # imm = 0x500
	jne	.LBB121_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s318;
	.scl	2;
	.type	32;
	.endef
	.globl	s318                            # -- Begin function s318
	.p2align	4
s318:                                   # @s318
.seh_proc s318
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movl	%ecx, %esi
	leaq	"??_C@_05NCGBOMCL@s318?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	cvttss2si	a(%rip), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovsl	%ecx, %edx
	cvtsi2ss	%edx, %xmm0
	movl	%eax, %edi
	xorl	%eax, %eax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB122_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB122_2 Depth 2
	movl	$1, %edx
	movl	%esi, %r8d
	movaps	%xmm0, %xmm1
	xorl	%ebx, %ebx
	.p2align	4
.LBB122_2:                              #   Parent Loop BB122_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r8d, %r8
	cvttss2si	(%rcx,%r8,4), %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	xorps	%xmm2, %xmm2
	cvtsi2ss	%r10d, %xmm2
	ucomiss	%xmm2, %xmm1
	cmovbl	%edx, %ebx
	movaps	%xmm2, %xmm6
	cmpnless	%xmm1, %xmm6
	andps	%xmm6, %xmm2
	andnps	%xmm1, %xmm6
	orps	%xmm2, %xmm6
	addl	%esi, %r8d
	incl	%edx
	movaps	%xmm6, %xmm1
	cmpl	$32000, %edx                    # imm = 0x7D00
	jne	.LBB122_2
# %bb.3:                                #   in Loop: Header=BB122_1 Depth=1
	incl	%eax
	cmpl	$128, %eax
	jne	.LBB122_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	addss	%xmm6, %xmm0
	addss	__real@3f800000(%rip), %xmm0
	movss	%xmm0, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s319;
	.scl	2;
	.type	32;
	.endef
	.globl	s319                            # -- Begin function s319
	.p2align	4
s319:                                   # @s319
.seh_proc s319
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NDKDIGBM@s319?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rax
	leaq	d(%rip), %rcx
	leaq	a(%rip), %rdx
	leaq	e(%rip), %r8
	leaq	b(%rip), %r9
	.p2align	4
.LBB123_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB123_2 Depth 2
	xorps	%xmm6, %xmm6
	xorl	%r10d, %r10d
	.p2align	4
.LBB123_2:                              #   Parent Loop BB123_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm6, %xmm0
	movss	(%r10,%rax), %xmm6              # xmm6 = mem[0],zero,zero,zero
	movss	(%r10,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	addss	%xmm6, %xmm1
	movss	%xmm1, (%r10,%rdx)
	addss	%xmm1, %xmm0
	addss	(%r10,%r8), %xmm6
	movss	%xmm6, (%r10,%r9)
	addss	%xmm0, %xmm6
	addq	$4, %r10
	cmpq	$128000, %r10                   # imm = 0x1F400
	jne	.LBB123_2
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB123_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s3110;
	.scl	2;
	.type	32;
	.endef
	.globl	s3110                           # -- Begin function s3110
	.p2align	4
s3110:                                  # @s3110
.seh_proc s3110
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05JHHCMFPF@s3110?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	xorl	%eax, %eax
	movss	aa(%rip), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	leaq	aa+4(%rip), %rcx
	.p2align	4
.LBB124_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB124_2 Depth 2
                                        #       Child Loop BB124_3 Depth 3
	movq	%rcx, %rdx
	xorl	%r8d, %r8d
	xorl	%ebx, %ebx
	movaps	%xmm0, %xmm6
	xorl	%edi, %edi
	.p2align	4
.LBB124_2:                              # %.preheader
                                        #   Parent Loop BB124_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB124_3 Depth 3
	xorl	%r9d, %r9d
	.p2align	4
.LBB124_3:                              #   Parent Loop BB124_1 Depth=1
                                        #     Parent Loop BB124_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-4(%rdx,%r9,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm1
	cmoval	%r9d, %edi
	cmoval	%r8d, %ebx
	maxss	%xmm6, %xmm1
	movss	(%rdx,%r9,4), %xmm6             # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm6
	leal	1(%r9), %r10d
	cmoval	%r10d, %edi
	cmoval	%r8d, %ebx
	maxss	%xmm1, %xmm6
	addq	$2, %r9
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB124_3
# %bb.4:                                #   in Loop: Header=BB124_2 Depth=2
	incq	%r8
	addq	$1024, %rdx                     # imm = 0x400
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB124_2
# %bb.5:                                #   in Loop: Header=BB124_1 Depth=1
	incl	%eax
	cmpl	$100, %eax
	jne	.LBB124_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	addss	%xmm0, %xmm6
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	xorps	%xmm1, %xmm1
	cvtsi2ss	%edi, %xmm1
	addss	%xmm0, %xmm6
	addss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s13110;
	.scl	2;
	.type	32;
	.endef
	.globl	s13110                          # -- Begin function s13110
	.p2align	4
s13110:                                 # @s13110
.seh_proc s13110
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05JHHCMFPF@s3110?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	xorl	%eax, %eax
	movss	aa(%rip), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	leaq	aa+12(%rip), %rcx
	.p2align	4
.LBB125_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB125_2 Depth 2
                                        #       Child Loop BB125_3 Depth 3
	movq	%rcx, %rdx
	xorl	%r8d, %r8d
	movaps	%xmm0, %xmm6
	.p2align	4
.LBB125_2:                              # %.preheader
                                        #   Parent Loop BB125_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB125_3 Depth 3
	xorl	%r9d, %r9d
	.p2align	4
.LBB125_3:                              #   Parent Loop BB125_1 Depth=1
                                        #     Parent Loop BB125_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-12(%rdx,%r9,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	maxss	%xmm6, %xmm1
	movss	-8(%rdx,%r9,4), %xmm2           # xmm2 = mem[0],zero,zero,zero
	maxss	%xmm1, %xmm2
	movss	-4(%rdx,%r9,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	maxss	%xmm2, %xmm1
	movss	(%rdx,%r9,4), %xmm6             # xmm6 = mem[0],zero,zero,zero
	maxss	%xmm1, %xmm6
	addq	$4, %r9
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB125_3
# %bb.4:                                #   in Loop: Header=BB125_2 Depth=2
	incq	%r8
	addq	$1024, %rdx                     # imm = 0x400
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB125_2
# %bb.5:                                #   in Loop: Header=BB125_1 Depth=1
	incl	%eax
	cmpl	$100, %eax
	jne	.LBB125_1
# %bb.6:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	__real@3f800000(%rip), %xmm0    # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	addss	%xmm0, %xmm6
	addss	%xmm0, %xmm6
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s3111;
	.scl	2;
	.type	32;
	.endef
	.globl	s3111                           # -- Begin function s3111
	.p2align	4
s3111:                                  # @s3111
.seh_proc s3111
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05IOGJPELE@s3111?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	.p2align	4
.LBB126_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB126_2 Depth 2
	movl	$1, %ecx
	xorps	%xmm6, %xmm6
	.p2align	4
.LBB126_2:                              #   Parent Loop BB126_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rax,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm2
	addss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	cmpltss	%xmm0, %xmm3
	andps	%xmm3, %xmm2
	andnps	%xmm6, %xmm3
	orps	%xmm2, %xmm3
	xorps	%xmm6, %xmm6
	cmpltss	%xmm1, %xmm6
	movaps	%xmm6, %xmm0
	andnps	%xmm3, %xmm0
	addss	%xmm1, %xmm3
	andps	%xmm3, %xmm6
	orps	%xmm0, %xmm6
	addq	$2, %rcx
	cmpq	$32001, %rcx                    # imm = 0x7D01
	jne	.LBB126_2
# %bb.3:                                #   in Loop: Header=BB126_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	jne	.LBB126_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s3112;
	.scl	2;
	.type	32;
	.endef
	.globl	s3112                           # -- Begin function s3112
	.p2align	4
s3112:                                  # @s3112
.seh_proc s3112
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05KFEEKHHH@s3112?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB127_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB127_2 Depth 2
	xorps	%xmm6, %xmm6
	movl	$1, %edx
	.p2align	4
.LBB127_2:                              #   Parent Loop BB127_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addss	-4(%rax,%rdx,4), %xmm6
	movss	%xmm6, -4(%rcx,%rdx,4)
	addss	(%rax,%rdx,4), %xmm6
	movss	%xmm6, (%rcx,%rdx,4)
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB127_2
# %bb.3:                                #   in Loop: Header=BB127_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB127_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-12, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s3113;
	.scl	2;
	.type	32;
	.endef
	.globl	s3113                           # -- Begin function s3113
	.p2align	4
s3113:                                  # @s3113
.seh_proc s3113
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05LMFPJGDG@s3113?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	cvttss2si	a(%rip), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovsl	%ecx, %edx
	cvtsi2ss	%edx, %xmm0
	movl	%eax, %esi
	xorl	%eax, %eax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB128_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB128_2 Depth 2
	movl	$1, %edx
	movaps	%xmm0, %xmm6
	.p2align	4
.LBB128_2:                              #   Parent Loop BB128_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cvttss2si	-4(%rcx,%rdx,4), %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r9d, %xmm1
	cvttss2si	(%rcx,%rdx,4), %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	maxss	%xmm6, %xmm1
	xorps	%xmm6, %xmm6
	cvtsi2ss	%r9d, %xmm6
	maxss	%xmm1, %xmm6
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB128_2
# %bb.3:                                #   in Loop: Header=BB128_1 Depth=1
	incl	%eax
	cmpl	$1024, %eax                     # imm = 0x400
	jne	.LBB128_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s321;
	.scl	2;
	.type	32;
	.endef
	.globl	s321                            # -- Begin function s321
	.p2align	4
s321:                                   # @s321
.seh_proc s321
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MPAFHIEK@s321?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	jmp	.LBB129_1
	.p2align	4
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB129_5
.LBB129_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB129_2 Depth 2
	movl	$2, %edx
	movss	a(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	.p2align	4
.LBB129_2:                              #   Parent Loop BB129_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulss	-4(%rcx,%rdx,4), %xmm0
	addss	-4(%rax,%rdx,4), %xmm0
	movss	%xmm0, -4(%rax,%rdx,4)
	cmpq	$32000, %rdx                    # imm = 0x7D00
	je	.LBB129_4
# %bb.3:                                #   in Loop: Header=BB129_2 Depth=2
	mulss	(%rcx,%rdx,4), %xmm0
	addss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addq	$2, %rdx
	jmp	.LBB129_2
.LBB129_5:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s322;
	.scl	2;
	.type	32;
	.endef
	.globl	s322                            # -- Begin function s322
	.p2align	4
s322:                                   # @s322
.seh_proc s322
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MNEDMGBD@s322?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	.p2align	4
.LBB130_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB130_2 Depth 2
	movl	$2, %r8d
	movss	a+4(%rip), %xmm0                # xmm0 = mem[0],zero,zero,zero
	.p2align	4
.LBB130_2:                              #   Parent Loop BB130_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulss	(%rcx,%r8,4), %xmm0
	addss	(%rax,%r8,4), %xmm0
	movss	-8(%rax,%r8,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdx,%r8,4), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%r8,4)
	incq	%r8
	cmpq	$32000, %r8                     # imm = 0x7D00
	jne	.LBB130_2
# %bb.3:                                #   in Loop: Header=BB130_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	jne	.LBB130_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s323;
	.scl	2;
	.type	32;
	.endef
	.globl	s323                            # -- Begin function s323
	.p2align	4
s323:                                   # @s323
.seh_proc s323
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MMIBKMCE@s323?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	leaq	e(%rip), %r9
	.p2align	4
.LBB131_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB131_2 Depth 2
	movss	b(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	xorl	%r10d, %r10d
	.p2align	4
.LBB131_2:                              #   Parent Loop BB131_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	4(%r10,%rcx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movss	4(%r10,%rdx), %xmm2             # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 4(%r10,%r8)
	mulss	4(%r10,%r9), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 4(%r10,%rax)
	addq	$4, %r10
	movaps	%xmm1, %xmm0
	cmpq	$127996, %r10                   # imm = 0x1F3FC
	jne	.LBB131_2
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	jne	.LBB131_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s331;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@80000000800000008000000080000000 # -- Begin function s331
	.section	.rdata,"dr",discard,__xmm@80000000800000008000000080000000
	.p2align	4, 0x0
__xmm@80000000800000008000000080000000:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.globl	__xmm@00000008000000080000000800000008
	.section	.rdata,"dr",discard,__xmm@00000008000000080000000800000008
	.p2align	4, 0x0
__xmm@00000008000000080000000800000008:
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.text
	.globl	s331
	.p2align	4
s331:                                   # @s331
.seh_proc s331
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$136, %rsp
	.seh_stackalloc 136
	movdqa	%xmm11, 112(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm11, 112
	movdqa	%xmm10, 96(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm10, 96
	movdqa	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movdqa	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movdqa	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movdqa	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05HHLJBPCP@s331?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	movdqa	__xmm@00000003000000020000000100000000(%rip), %xmm0 # xmm0 = [0,1,2,3]
	movdqa	__xmm@80000000800000008000000080000000(%rip), %xmm1 # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	__xmm@00000004000000040000000400000004(%rip), %xmm2 # xmm2 = [4,4,4,4]
	leaq	a(%rip), %rax
	xorps	%xmm4, %xmm4
	movdqa	__xmm@00000008000000080000000800000008(%rip), %xmm5 # xmm5 = [8,8,8,8]
	.p2align	4
.LBB132_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB132_2 Depth 2
	movl	$4, %ecx
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm6
	movdqa	%xmm0, %xmm7
	.p2align	4
.LBB132_2:                              # %vector.body
                                        #   Parent Loop BB132_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm7, %xmm8
	paddd	%xmm2, %xmm8
	movaps	-16(%rax,%rcx,4), %xmm9
	movaps	(%rax,%rcx,4), %xmm10
	cmpltps	%xmm4, %xmm9
	cmpltps	%xmm4, %xmm10
	movdqa	%xmm7, %xmm11
	pand	%xmm9, %xmm11
	pandn	%xmm3, %xmm9
	movdqa	%xmm9, %xmm3
	por	%xmm11, %xmm3
	pand	%xmm10, %xmm8
	pandn	%xmm6, %xmm10
	movdqa	%xmm10, %xmm6
	por	%xmm8, %xmm6
	paddd	%xmm5, %xmm7
	addq	$8, %rcx
	cmpq	$32004, %rcx                    # imm = 0x7D04
	jne	.LBB132_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB132_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB132_1
# %bb.4:
	movdqa	%xmm3, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm0, %xmm3
	pandn	%xmm6, %xmm0
	por	%xmm3, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	movd	%xmm2, %eax
	pshufd	$85, %xmm2, %xmm0               # xmm0 = xmm2[1,1,1,1]
	movd	%xmm0, %edi
	cmpl	%edi, %eax
	cmovgl	%eax, %edi
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	leal	1(%rdi), %eax
	xorl	%ecx, %ecx
	negl	%edi
	cmovnol	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm0, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	movaps	96(%rsp), %xmm10                # 16-byte Reload
	movaps	112(%rsp), %xmm11               # 16-byte Reload
	.seh_startepilogue
	addq	$136, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	tsvc_max;
	.scl	2;
	.type	32;
	.endef
	.globl	tsvc_max                        # -- Begin function tsvc_max
	.p2align	4
tsvc_max:                               # @tsvc_max
# %bb.0:
	movl	%ecx, %eax
	cmpl	%ecx, %edx
	cmovgl	%edx, %eax
	retq
                                        # -- End function
	.def	s332;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@00000001000000020000000300000004 # -- Begin function s332
	.section	.rdata,"dr",discard,__xmm@00000001000000020000000300000004
	.p2align	4, 0x0
__xmm@00000001000000020000000300000004:
	.long	4                               # 0x4
	.long	3                               # 0x3
	.long	2                               # 0x2
	.long	1                               # 0x1
	.text
	.globl	s332
	.p2align	4
s332:                                   # @s332
.seh_proc s332
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	movdqa	%xmm8, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 80
	movaps	%xmm7, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 64
	movaps	%xmm6, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	movaps	%xmm0, %xmm6
	leaq	"??_C@_05HFPPKBHG@s332?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	shufps	$0, %xmm6, %xmm6                # xmm6 = xmm6[0,0,0,0]
	xorl	%eax, %eax
	leaq	a(%rip), %rcx
	movss	__real@bf800000(%rip), %xmm0    # xmm0 = [-1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movdqa	__xmm@00000001000000020000000300000004(%rip), %xmm1 # xmm1 = [4,3,2,1]
	movdqa	__xmm@80000000800000008000000080000000(%rip), %xmm2 # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	jmp	.LBB134_1
	.p2align	4
.LBB134_6:                              # %vector.early.exit
                                        #   in Loop: Header=BB134_1 Depth=1
	pslld	$31, %xmm4
	psrad	$31, %xmm4
	pand	%xmm1, %xmm4
	movdqa	%xmm4, %xmm5
	por	%xmm2, %xmm5
	pshufd	$238, %xmm4, %xmm7              # xmm7 = xmm4[2,3,2,3]
	movdqa	%xmm7, %xmm8
	por	%xmm2, %xmm8
	pcmpgtd	%xmm8, %xmm5
	pand	%xmm5, %xmm4
	pandn	%xmm7, %xmm5
	por	%xmm4, %xmm5
	movd	%xmm5, %edx
	pshufd	$85, %xmm5, %xmm4               # xmm4 = xmm5[1,1,1,1]
	movd	%xmm4, %r8d
	cmpl	%r8d, %edx
	cmoval	%edx, %r8d
	negl	%r8d
	andl	$3, %r8d
	movaps	%xmm3, 32(%rsp)
	movss	32(%rsp,%r8,4), %xmm7           # xmm7 = mem[0],zero,zero,zero
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	je	.LBB134_8
.LBB134_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB134_2 Depth 2
	movl	$4, %edx
	.p2align	4
.LBB134_2:                              # %vector.body
                                        #   Parent Loop BB134_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rcx,%rdx,4), %xmm3
	movaps	%xmm6, %xmm4
	cmpltps	%xmm3, %xmm4
	movmskps	%xmm4, %r8d
	testl	%r8d, %r8d
	jne	.LBB134_6
# %bb.3:                                # %vector.body.interim
                                        #   in Loop: Header=BB134_2 Depth=2
	movaps	(%rcx,%rdx,4), %xmm3
	movaps	%xmm6, %xmm4
	cmpltps	%xmm3, %xmm4
	movmskps	%xmm4, %r8d
	testl	%r8d, %r8d
	jne	.LBB134_6
# %bb.4:                                # %vector.body.interim.1
                                        #   in Loop: Header=BB134_2 Depth=2
	addq	$8, %rdx
	cmpq	$32004, %rdx                    # imm = 0x7D04
	jne	.LBB134_2
# %bb.5:                                #   in Loop: Header=BB134_1 Depth=1
	movaps	%xmm0, %xmm7
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB134_1
.LBB134_8:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm7, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	48(%rsp), %xmm6                 # 16-byte Reload
	movaps	64(%rsp), %xmm7                 # 16-byte Reload
	movaps	80(%rsp), %xmm8                 # 16-byte Reload
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s341;
	.scl	2;
	.type	32;
	.endef
	.globl	s341                            # -- Begin function s341
	.p2align	4
s341:                                   # @s341
.seh_proc s341
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	clock
	leaq	"??_C@_05OKGOCHJG@s341?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	a(%rip), %rcx
	jmp	.LBB135_1
	.p2align	4
.LBB135_7:                              #   in Loop: Header=BB135_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB135_8
.LBB135_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB135_2 Depth 2
	movl	$-1, %edx
	movl	$1, %r8d
	jmp	.LBB135_2
	.p2align	4
.LBB135_6:                              #   in Loop: Header=BB135_2 Depth=2
	addq	$2, %r8
	cmpq	$32001, %r8                     # imm = 0x7D01
	je	.LBB135_7
.LBB135_2:                              #   Parent Loop BB135_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rax,%r8,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB135_3
# %bb.4:                                #   in Loop: Header=BB135_2 Depth=2
	movss	(%rax,%r8,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB135_6
	jmp	.LBB135_5
	.p2align	4
.LBB135_3:                              #   in Loop: Header=BB135_2 Depth=2
	incl	%edx
	movslq	%edx, %r9
	movss	%xmm1, (%rcx,%r9,4)
	movss	(%rax,%r8,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB135_6
.LBB135_5:                              #   in Loop: Header=BB135_2 Depth=2
	incl	%edx
	movslq	%edx, %r9
	movss	%xmm1, (%rcx,%r9,4)
	jmp	.LBB135_6
.LBB135_8:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s342;
	.scl	2;
	.type	32;
	.endef
	.globl	s342                            # -- Begin function s342
	.p2align	4
s342:                                   # @s342
.seh_proc s342
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	clock
	leaq	"??_C@_05OICIJJMP@s342?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	b(%rip), %rcx
	jmp	.LBB136_1
	.p2align	4
.LBB136_7:                              #   in Loop: Header=BB136_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB136_8
.LBB136_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB136_2 Depth 2
	movl	$-1, %edx
	movl	$1, %r8d
	jmp	.LBB136_2
	.p2align	4
.LBB136_6:                              #   in Loop: Header=BB136_2 Depth=2
	addq	$2, %r8
	cmpq	$32001, %r8                     # imm = 0x7D01
	je	.LBB136_7
.LBB136_2:                              #   Parent Loop BB136_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rax,%r8,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB136_3
# %bb.4:                                #   in Loop: Header=BB136_2 Depth=2
	movss	(%rax,%r8,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB136_6
	jmp	.LBB136_5
	.p2align	4
.LBB136_3:                              #   in Loop: Header=BB136_2 Depth=2
	incl	%edx
	movslq	%edx, %r9
	movss	(%rcx,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -4(%rax,%r8,4)
	movss	(%rax,%r8,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB136_6
.LBB136_5:                              #   in Loop: Header=BB136_2 Depth=2
	leaq	(,%r8,4), %r9
	incl	%edx
	movslq	%edx, %r10
	movss	(%rcx,%r10,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, (%r9,%rax)
	jmp	.LBB136_6
.LBB136_8:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s343;
	.scl	2;
	.type	32;
	.endef
	.globl	s343                            # -- Begin function s343
	.p2align	4
s343:                                   # @s343
.seh_proc s343
# %bb.0:                                # %.preheader18
	pushq	%r15
	.seh_pushreg %r15
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
	.seh_endprologue
	callq	clock
	leaq	"??_C@_05OJOKPDPI@s343?5?$AA@"(%rip), %rcx
	callq	init
	movl	$-1, %edi
	leaq	aa+1024(%rip), %rbx
	leaq	bb+1024(%rip), %r14
	xorl	%r15d, %r15d
	callq	clock
	movl	%eax, %esi
	xorps	%xmm0, %xmm0
	leaq	array(%rip), %rax
	jmp	.LBB137_1
	.p2align	4
.LBB137_7:                              #   in Loop: Header=BB137_1 Depth=1
	incq	%r15
	addq	$4, %rbx
	addq	$4, %r14
	cmpq	$256, %r15                      # imm = 0x100
	je	.LBB137_8
.LBB137_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_2 Depth 2
	xorl	%ecx, %ecx
	jmp	.LBB137_2
	.p2align	4
.LBB137_6:                              #   in Loop: Header=BB137_2 Depth=2
	addq	$2048, %rcx                     # imm = 0x800
	cmpq	$262144, %rcx                   # imm = 0x40000
	je	.LBB137_7
.LBB137_2:                              #   Parent Loop BB137_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r14,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_3
# %bb.4:                                #   in Loop: Header=BB137_2 Depth=2
	movss	(%r14,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_6
	jmp	.LBB137_5
	.p2align	4
.LBB137_3:                              #   in Loop: Header=BB137_2 Depth=2
	incl	%edi
	movss	-1024(%rbx,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rdx
	movss	%xmm1, (%rax,%rdx,4)
	movss	(%r14,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_6
.LBB137_5:                              #   in Loop: Header=BB137_2 Depth=2
	incl	%edi
	movss	(%rbx,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rdx
	movss	%xmm1, (%rax,%rdx,4)
	jmp	.LBB137_6
.LBB137_8:                              # %.preheader.1.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_9
	.p2align	4
.LBB137_15:                             #   in Loop: Header=BB137_9 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_16
.LBB137_9:                              # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_10 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_10
	.p2align	4
.LBB137_14:                             #   in Loop: Header=BB137_10 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_15
.LBB137_10:                             #   Parent Loop BB137_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_11
# %bb.12:                               #   in Loop: Header=BB137_10 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_14
	jmp	.LBB137_13
	.p2align	4
.LBB137_11:                             #   in Loop: Header=BB137_10 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_14
.LBB137_13:                             #   in Loop: Header=BB137_10 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_14
.LBB137_16:                             # %.preheader.2.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_17
	.p2align	4
.LBB137_23:                             #   in Loop: Header=BB137_17 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_24
.LBB137_17:                             # %.preheader.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_18 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_18
	.p2align	4
.LBB137_22:                             #   in Loop: Header=BB137_18 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_23
.LBB137_18:                             #   Parent Loop BB137_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_19
# %bb.20:                               #   in Loop: Header=BB137_18 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_22
	jmp	.LBB137_21
	.p2align	4
.LBB137_19:                             #   in Loop: Header=BB137_18 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_22
.LBB137_21:                             #   in Loop: Header=BB137_18 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_22
.LBB137_24:                             # %.preheader.3.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_25
	.p2align	4
.LBB137_31:                             #   in Loop: Header=BB137_25 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_32
.LBB137_25:                             # %.preheader.3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_26 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_26
	.p2align	4
.LBB137_30:                             #   in Loop: Header=BB137_26 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_31
.LBB137_26:                             #   Parent Loop BB137_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_27
# %bb.28:                               #   in Loop: Header=BB137_26 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_30
	jmp	.LBB137_29
	.p2align	4
.LBB137_27:                             #   in Loop: Header=BB137_26 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_30
.LBB137_29:                             #   in Loop: Header=BB137_26 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_30
.LBB137_32:                             # %.preheader.4.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_33
	.p2align	4
.LBB137_39:                             #   in Loop: Header=BB137_33 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_40
.LBB137_33:                             # %.preheader.4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_34 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_34
	.p2align	4
.LBB137_38:                             #   in Loop: Header=BB137_34 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_39
.LBB137_34:                             #   Parent Loop BB137_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_35
# %bb.36:                               #   in Loop: Header=BB137_34 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_38
	jmp	.LBB137_37
	.p2align	4
.LBB137_35:                             #   in Loop: Header=BB137_34 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_38
.LBB137_37:                             #   in Loop: Header=BB137_34 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_38
.LBB137_40:                             # %.preheader.5.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_41
	.p2align	4
.LBB137_47:                             #   in Loop: Header=BB137_41 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_48
.LBB137_41:                             # %.preheader.5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_42 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_42
	.p2align	4
.LBB137_46:                             #   in Loop: Header=BB137_42 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_47
.LBB137_42:                             #   Parent Loop BB137_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_43
# %bb.44:                               #   in Loop: Header=BB137_42 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_46
	jmp	.LBB137_45
	.p2align	4
.LBB137_43:                             #   in Loop: Header=BB137_42 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_46
.LBB137_45:                             #   in Loop: Header=BB137_42 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_46
.LBB137_48:                             # %.preheader.6.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_49
	.p2align	4
.LBB137_55:                             #   in Loop: Header=BB137_49 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_56
.LBB137_49:                             # %.preheader.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_50 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_50
	.p2align	4
.LBB137_54:                             #   in Loop: Header=BB137_50 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_55
.LBB137_50:                             #   Parent Loop BB137_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_51
# %bb.52:                               #   in Loop: Header=BB137_50 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_54
	jmp	.LBB137_53
	.p2align	4
.LBB137_51:                             #   in Loop: Header=BB137_50 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_54
.LBB137_53:                             #   in Loop: Header=BB137_50 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_54
.LBB137_56:                             # %.preheader.7.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_57
	.p2align	4
.LBB137_63:                             #   in Loop: Header=BB137_57 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_64
.LBB137_57:                             # %.preheader.7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_58 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_58
	.p2align	4
.LBB137_62:                             #   in Loop: Header=BB137_58 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_63
.LBB137_58:                             #   Parent Loop BB137_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_59
# %bb.60:                               #   in Loop: Header=BB137_58 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_62
	jmp	.LBB137_61
	.p2align	4
.LBB137_59:                             #   in Loop: Header=BB137_58 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_62
.LBB137_61:                             #   in Loop: Header=BB137_58 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_62
.LBB137_64:                             # %.preheader.8.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_65
	.p2align	4
.LBB137_71:                             #   in Loop: Header=BB137_65 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_72
.LBB137_65:                             # %.preheader.8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_66 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_66
	.p2align	4
.LBB137_70:                             #   in Loop: Header=BB137_66 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_71
.LBB137_66:                             #   Parent Loop BB137_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_67
# %bb.68:                               #   in Loop: Header=BB137_66 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_70
	jmp	.LBB137_69
	.p2align	4
.LBB137_67:                             #   in Loop: Header=BB137_66 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_70
.LBB137_69:                             #   in Loop: Header=BB137_66 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_70
.LBB137_72:                             # %.preheader.9.preheader
	movl	$-1, %ecx
	leaq	aa+1024(%rip), %rdx
	leaq	bb+1024(%rip), %r8
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	jmp	.LBB137_73
	.p2align	4
.LBB137_79:                             #   in Loop: Header=BB137_73 Depth=1
	incq	%r9
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB137_80
.LBB137_73:                             # %.preheader.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_74 Depth 2
	xorl	%r10d, %r10d
	jmp	.LBB137_74
	.p2align	4
.LBB137_78:                             #   in Loop: Header=BB137_74 Depth=2
	addq	$2048, %r10                     # imm = 0x800
	cmpq	$262144, %r10                   # imm = 0x40000
	je	.LBB137_79
.LBB137_74:                             #   Parent Loop BB137_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-1024(%r8,%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB137_75
# %bb.76:                               #   in Loop: Header=BB137_74 Depth=2
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_78
	jmp	.LBB137_77
	.p2align	4
.LBB137_75:                             #   in Loop: Header=BB137_74 Depth=2
	incl	%ecx
	movss	-1024(%rdx,%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	movss	(%r8,%r10), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB137_78
.LBB137_77:                             #   in Loop: Header=BB137_74 Depth=2
	incl	%ecx
	movss	(%rdx,%r10), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movslq	%ecx, %r11
	movss	%xmm1, (%rax,%r11,4)
	jmp	.LBB137_78
.LBB137_80:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorl	%ecx, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s351;
	.scl	2;
	.type	32;
	.endef
	.globl	s351                            # -- Begin function s351
	.p2align	4
s351:                                   # @s351
.seh_proc s351
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	addq	$-128, %rsp
	.seh_stackalloc 128
	movaps	%xmm11, 112(%rsp)               # 16-byte Spill
	.seh_savexmm %xmm11, 112
	movaps	%xmm10, 96(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm10, 96
	movaps	%xmm9, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm9, 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	callq	clock
	leaq	"??_C@_05FCNCEAPD@s351?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movss	c(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB138_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB138_2 Depth 2
	xorl	%r8d, %r8d
	.p2align	4
.LBB138_2:                              # %vector.body
                                        #   Parent Loop BB138_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	76(%r8,%rcx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movss	56(%r8,%rcx), %xmm2             # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2                    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movss	36(%r8,%rcx), %xmm3             # xmm3 = mem[0],zero,zero,zero
	movss	16(%r8,%rcx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm1                    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movlhps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0]
	movss	76(%r8,%rdx), %xmm2             # xmm2 = mem[0],zero,zero,zero
	movss	56(%r8,%rdx), %xmm3             # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm3                    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movss	36(%r8,%rdx), %xmm2             # xmm2 = mem[0],zero,zero,zero
	movss	16(%r8,%rdx), %xmm4             # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm4                    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movlhps	%xmm3, %xmm4                    # xmm4 = xmm4[0],xmm3[0]
	mulps	%xmm0, %xmm1
	addps	%xmm4, %xmm1
	movss	72(%r8,%rcx), %xmm2             # xmm2 = mem[0],zero,zero,zero
	movss	52(%r8,%rcx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm6                    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
	movss	32(%r8,%rcx), %xmm7             # xmm7 = mem[0],zero,zero,zero
	movss	(%r8,%rcx), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	4(%r8,%rcx), %xmm5              # xmm5 = mem[0],zero,zero,zero
	movss	8(%r8,%rcx), %xmm4              # xmm4 = mem[0],zero,zero,zero
	movss	12(%r8,%rcx), %xmm3             # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm7, %xmm3                    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1]
	movlhps	%xmm6, %xmm3                    # xmm3 = xmm3[0],xmm6[0]
	movss	68(%r8,%rcx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	movss	48(%r8,%rcx), %xmm7             # xmm7 = mem[0],zero,zero,zero
	unpcklps	%xmm6, %xmm7                    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	movss	28(%r8,%rcx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm6, %xmm4                    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	movlhps	%xmm7, %xmm4                    # xmm4 = xmm4[0],xmm7[0]
	movss	60(%r8,%rcx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	movss	40(%r8,%rcx), %xmm7             # xmm7 = mem[0],zero,zero,zero
	unpcklps	%xmm6, %xmm7                    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	movss	20(%r8,%rcx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm6, %xmm2                    # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1]
	movlhps	%xmm7, %xmm2                    # xmm2 = xmm2[0],xmm7[0]
	movss	64(%r8,%rcx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	movss	44(%r8,%rcx), %xmm7             # xmm7 = mem[0],zero,zero,zero
	unpcklps	%xmm6, %xmm7                    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	movss	24(%r8,%rcx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm6, %xmm5                    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	movlhps	%xmm7, %xmm5                    # xmm5 = xmm5[0],xmm7[0]
	movss	72(%r8,%rdx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	movss	52(%r8,%rdx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	unpcklps	%xmm6, %xmm10                   # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	movss	32(%r8,%rdx), %xmm11            # xmm11 = mem[0],zero,zero,zero
	movss	(%r8,%rdx), %xmm8               # xmm8 = mem[0],zero,zero,zero
	movss	4(%r8,%rdx), %xmm9              # xmm9 = mem[0],zero,zero,zero
	movss	8(%r8,%rdx), %xmm7              # xmm7 = mem[0],zero,zero,zero
	movss	12(%r8,%rdx), %xmm6             # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm11, %xmm6                   # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1]
	movlhps	%xmm10, %xmm6                   # xmm6 = xmm6[0],xmm10[0]
	movss	68(%r8,%rdx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	movss	48(%r8,%rdx), %xmm11            # xmm11 = mem[0],zero,zero,zero
	unpcklps	%xmm10, %xmm11                  # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1]
	movss	28(%r8,%rdx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	unpcklps	%xmm10, %xmm7                   # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1]
	movlhps	%xmm11, %xmm7                   # xmm7 = xmm7[0],xmm11[0]
	movss	60(%r8,%rdx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	movss	40(%r8,%rdx), %xmm11            # xmm11 = mem[0],zero,zero,zero
	unpcklps	%xmm10, %xmm11                  # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1]
	movss	20(%r8,%rdx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	unpcklps	%xmm10, %xmm8                   # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1]
	movlhps	%xmm11, %xmm8                   # xmm8 = xmm8[0],xmm11[0]
	movss	64(%r8,%rdx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	movss	44(%r8,%rdx), %xmm11            # xmm11 = mem[0],zero,zero,zero
	unpcklps	%xmm10, %xmm11                  # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1]
	movss	24(%r8,%rdx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	unpcklps	%xmm10, %xmm9                   # xmm9 = xmm9[0],xmm10[0],xmm9[1],xmm10[1]
	movlhps	%xmm11, %xmm9                   # xmm9 = xmm9[0],xmm11[0]
	mulps	%xmm0, %xmm5
	addps	%xmm9, %xmm5
	mulps	%xmm0, %xmm2
	addps	%xmm8, %xmm2
	mulps	%xmm0, %xmm4
	addps	%xmm7, %xmm4
	mulps	%xmm0, %xmm3
	addps	%xmm6, %xmm3
	movaps	%xmm3, %xmm7
	movlhps	%xmm4, %xmm7                    # xmm7 = xmm7[0],xmm4[0]
	movaps	%xmm2, %xmm6
	unpcklps	%xmm5, %xmm6                    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	shufps	$36, %xmm7, %xmm6               # xmm6 = xmm6[0,1],xmm7[2,0]
	movaps	%xmm1, %xmm7
	shufps	$85, %xmm3, %xmm7               # xmm7 = xmm7[1,1],xmm3[1,1]
	movaps	%xmm1, %xmm8
	shufps	$255, %xmm3, %xmm8              # xmm8 = xmm8[3,3],xmm3[3,3]
	unpckhpd	%xmm4, %xmm3                    # xmm3 = xmm3[1],xmm4[1]
	movaps	%xmm4, %xmm9
	shufps	$51, %xmm5, %xmm9               # xmm9 = xmm9[3,0],xmm5[3,0]
	shufps	$85, %xmm5, %xmm4               # xmm4 = xmm4[1,1],xmm5[1,1]
	unpckhpd	%xmm2, %xmm5                    # xmm5 = xmm5[1],xmm2[1]
	shufps	$34, %xmm5, %xmm7               # xmm7 = xmm7[2,0],xmm5[2,0]
	movaps	%xmm1, %xmm5
	shufps	$50, %xmm2, %xmm5               # xmm5 = xmm5[2,0],xmm2[3,0]
	shufps	$130, %xmm5, %xmm3              # xmm3 = xmm3[2,0],xmm5[0,2]
	shufps	$34, %xmm8, %xmm9               # xmm9 = xmm9[2,0],xmm8[2,0]
	shufps	$37, %xmm4, %xmm2               # xmm2 = xmm2[1,1],xmm4[2,0]
	movss	%xmm1, %xmm2                    # xmm2 = xmm1[0],xmm2[1,2,3]
	movaps	%xmm9, 64(%r8,%rdx)
	movaps	%xmm3, 48(%r8,%rdx)
	movaps	%xmm7, 32(%r8,%rdx)
	movaps	%xmm6, (%r8,%rdx)
	movaps	%xmm2, 16(%r8,%rdx)
	addq	$80, %r8
	cmpq	$128000, %r8                    # imm = 0x1F400
	jne	.LBB138_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB138_1 Depth=1
	incl	%eax
	cmpl	$2048, %eax                     # imm = 0x800
	jne	.LBB138_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	movaps	80(%rsp), %xmm9                 # 16-byte Reload
	movaps	96(%rsp), %xmm10                # 16-byte Reload
	movaps	112(%rsp), %xmm11               # 16-byte Reload
	.seh_startepilogue
	addq	$128, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1351;
	.scl	2;
	.type	32;
	.endef
	.globl	s1351                           # -- Begin function s1351
	.p2align	4
s1351:                                  # @s1351
.seh_proc s1351
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	clock
	leaq	"??_C@_05FCNCEAPD@s351?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB139_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB139_2 Depth 2
	movl	$12, %r8d
	.p2align	4
.LBB139_2:                              # %vector.body
                                        #   Parent Loop BB139_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rcx,%r8,4), %xmm0
	movaps	-32(%rcx,%r8,4), %xmm1
	movaps	-16(%rcx,%r8,4), %xmm2
	movaps	(%rcx,%r8,4), %xmm3
	addps	-48(%rax,%r8,4), %xmm0
	addps	-32(%rax,%r8,4), %xmm1
	movaps	%xmm0, -48(%rdx,%r8,4)
	movaps	%xmm1, -32(%rdx,%r8,4)
	addps	-16(%rax,%r8,4), %xmm2
	addps	(%rax,%r8,4), %xmm3
	movaps	%xmm2, -16(%rdx,%r8,4)
	movaps	%xmm3, (%rdx,%r8,4)
	addq	$16, %r8
	cmpq	$32012, %r8                     # imm = 0x7D0C
	jne	.LBB139_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB139_1 Depth=1
	incl	%edi
	cmpl	$2048, %edi                     # imm = 0x800
	jne	.LBB139_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s352;
	.scl	2;
	.type	32;
	.endef
	.globl	s352                            # -- Begin function s352
	.p2align	4
s352:                                   # @s352
.seh_proc s352
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	callq	clock
	leaq	"??_C@_05FAJEPOKK@s352?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB140_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB140_2 Depth 2
	xorps	%xmm6, %xmm6
	movq	$-5, %rdx
	.p2align	4
.LBB140_2:                              #   Parent Loop BB140_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	20(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	24(%rax,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	20(%rcx,%rdx,4), %xmm0
	mulss	24(%rcx,%rdx,4), %xmm1
	addss	%xmm6, %xmm0
	movss	28(%rax,%rdx,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	28(%rcx,%rdx,4), %xmm2
	addss	%xmm0, %xmm1
	movss	32(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	32(%rcx,%rdx,4), %xmm0
	addss	%xmm1, %xmm2
	movss	36(%rax,%rdx,4), %xmm6          # xmm6 = mem[0],zero,zero,zero
	mulss	36(%rcx,%rdx,4), %xmm6
	addss	%xmm2, %xmm0
	addss	%xmm0, %xmm6
	addq	$5, %rdx
	cmpq	$31995, %rdx                    # imm = 0x7CFB
	jb	.LBB140_2
# %bb.3:                                #   in Loop: Header=BB140_1 Depth=1
	incl	%edi
	cmpl	$2048, %edi                     # imm = 0x800
	jne	.LBB140_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s353;
	.scl	2;
	.type	32;
	.endef
	.globl	s353                            # -- Begin function s353
	.p2align	4
s353:                                   # @s353
.seh_proc s353
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	clock
	leaq	"??_C@_05FBFGJEJN@s353?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %edi
	movss	c(%rip), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm0, %xmm1                # xmm1 = xmm1[0,0],xmm0[0,0]
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB141_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB141_2 Depth 2
	movq	$-5, %r8
	.p2align	4
.LBB141_2:                              #   Parent Loop BB141_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	20(%rsi,%r8,4), %r9
	movslq	24(%rsi,%r8,4), %r10
	movslq	28(%rsi,%r8,4), %r11
	movslq	32(%rsi,%r8,4), %rbx
	movups	20(%rdx,%r8,4), %xmm2
	movss	(%rcx,%rbx,4), %xmm3            # xmm3 = mem[0],zero,zero,zero
	movss	(%rcx,%r11,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm4                    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movss	(%rcx,%r10,4), %xmm3            # xmm3 = mem[0],zero,zero,zero
	movss	(%rcx,%r9,4), %xmm5             # xmm5 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	movlhps	%xmm4, %xmm5                    # xmm5 = xmm5[0],xmm4[0]
	mulps	%xmm1, %xmm5
	addps	%xmm2, %xmm5
	movups	%xmm5, 20(%rdx,%r8,4)
	movslq	36(%rsi,%r8,4), %r9
	movss	(%rcx,%r9,4), %xmm2             # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	addss	36(%rdx,%r8,4), %xmm2
	movss	%xmm2, 36(%rdx,%r8,4)
	addq	$5, %r8
	cmpq	$31995, %r8                     # imm = 0x7CFB
	jb	.LBB141_2
# %bb.3:                                #   in Loop: Header=BB141_1 Depth=1
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB141_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s421;
	.scl	2;
	.type	32;
	.endef
	.globl	s421                            # -- Begin function s421
	.p2align	4
s421:                                   # @s421
.seh_proc s421
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	xx(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	"??_C@_05HNCFKEFK@s421?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	jmp	.LBB142_1
	.p2align	4
.LBB142_4:                              #   in Loop: Header=BB142_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	je	.LBB142_5
.LBB142_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB142_2 Depth 2
	movq	xx(%rip), %rcx
	movq	%rcx, yy(%rip)
	xorl	%ecx, %ecx
	.p2align	4
.LBB142_2:                              #   Parent Loop BB142_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	yy(%rip), %rdx
	movss	4(%rdx,%rcx), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	(%rcx,%rax), %xmm0
	movq	xx(%rip), %rdx
	movss	%xmm0, (%rdx,%rcx)
	cmpq	$127992, %rcx                   # imm = 0x1F3F8
	je	.LBB142_4
# %bb.3:                                #   in Loop: Header=BB142_2 Depth=2
	movq	yy(%rip), %rdx
	movss	8(%rdx,%rcx), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	4(%rcx,%rax), %xmm0
	movq	xx(%rip), %rdx
	movss	%xmm0, 4(%rdx,%rcx)
	addq	$8, %rcx
	jmp	.LBB142_2
.LBB142_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$0, temp(%rip)
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	movq	xx(%rip), %rcx
	.p2align	4
.LBB142_6:                              # =>This Inner Loop Header: Depth=1
	addss	-16(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-12(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-8(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-4(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addq	$5, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB142_6
# %bb.7:
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s1421;
	.scl	2;
	.type	32;
	.endef
	.globl	s1421                           # -- Begin function s1421
	.p2align	4
s1421:                                  # @s1421
.seh_proc s1421
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	xx(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	"??_C@_05HNCFKEFK@s421?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	leaq	b+64000(%rip), %rax
	movq	%rax, xx(%rip)
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB143_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB143_2 Depth 2
	movl	$12, %r8d
	.p2align	4
.LBB143_2:                              # %vector.body
                                        #   Parent Loop BB143_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	63952(%rcx,%r8,4), %xmm0
	movaps	63968(%rcx,%r8,4), %xmm1
	movaps	63984(%rcx,%r8,4), %xmm2
	movaps	64000(%rcx,%r8,4), %xmm3
	addps	-48(%rdx,%r8,4), %xmm0
	addps	-32(%rdx,%r8,4), %xmm1
	movaps	%xmm0, -48(%rcx,%r8,4)
	movaps	%xmm1, -32(%rcx,%r8,4)
	addps	-16(%rdx,%r8,4), %xmm2
	addps	(%rdx,%r8,4), %xmm3
	movaps	%xmm2, -16(%rcx,%r8,4)
	movaps	%xmm3, (%rcx,%r8,4)
	addq	$16, %r8
	cmpq	$16012, %r8                     # imm = 0x3E8C
	jne	.LBB143_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB143_1 Depth=1
	incl	%eax
	cmpl	$2048, %eax                     # imm = 0x800
	jne	.LBB143_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$0, temp(%rip)
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	movq	xx(%rip), %rcx
	.p2align	4
.LBB143_5:                              # =>This Inner Loop Header: Depth=1
	addss	-16(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-12(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-8(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-4(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addq	$5, %rax
	cmpq	$16004, %rax                    # imm = 0x3E84
	jne	.LBB143_5
# %bb.6:
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s422;
	.scl	2;
	.type	32;
	.endef
	.globl	s422                            # -- Begin function s422
	.p2align	4
s422:                                   # @s422
.seh_proc s422
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	array+16(%rip), %rcx
	movq	%rcx, xx(%rip)
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	"??_C@_05HPGDBKAD@s422?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	array(%rip), %rax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB144_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB144_2 Depth 2
	xorl	%edx, %edx
	.p2align	4
.LBB144_2:                              #   Parent Loop BB144_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	32(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	(%rcx,%rdx,4), %xmm0
	movq	xx(%rip), %r8
	movss	%xmm0, (%r8,%rdx,4)
	movss	36(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	4(%rcx,%rdx,4), %xmm0
	movq	xx(%rip), %r8
	movss	%xmm0, 4(%r8,%rdx,4)
	addq	$2, %rdx
	cmpq	$32000, %rdx                    # imm = 0x7D00
	jne	.LBB144_2
# %bb.3:                                #   in Loop: Header=BB144_1 Depth=1
	incl	%edi
	cmpl	$2048, %edi                     # imm = 0x800
	jne	.LBB144_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$0, temp(%rip)
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	movq	xx(%rip), %rcx
	.p2align	4
.LBB144_5:                              # =>This Inner Loop Header: Depth=1
	addss	-16(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-12(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-8(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-4(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addq	$5, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB144_5
# %bb.6:
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s423;
	.scl	2;
	.type	32;
	.endef
	.globl	s423                            # -- Begin function s423
	.p2align	4
s423:                                   # @s423
.seh_proc s423
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	array+256(%rip), %rcx
	movq	%rcx, xx(%rip)
	leaq	array(%rip), %rdi
	movss	__real@3f800000(%rip), %xmm1    # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movl	$1, %r8d
	callq	set1d
	leaq	"??_C@_05HOKBHADE@s423?5?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	movq	xx(%rip), %rax
	movq	%rdi, %rcx
	subq	%rax, %rcx
	addq	$3, %rcx
	cmpq	$31, %rcx
	setb	%r8b
	leaq	a(%rip), %rcx
	movq	%rcx, %rdx
	notq	%rdx
	addq	%rdi, %rdx
	addq	$4, %rdx
	cmpq	$31, %rdx
	setb	%dl
	orb	%r8b, %dl
	xorl	%r8d, %r8d
	.p2align	4
.LBB145_1:                              # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB145_2 Depth 2
                                        #     Child Loop BB145_5 Depth 2
	xorl	%r9d, %r9d
	testb	%dl, %dl
	jne	.LBB145_4
	.p2align	4
.LBB145_2:                              # %vector.body
                                        #   Parent Loop BB145_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rax,%r9,4), %xmm0
	movups	16(%rax,%r9,4), %xmm1
	addps	(%rcx,%r9,4), %xmm0
	addps	16(%rcx,%r9,4), %xmm1
	movups	%xmm0, 4(%rdi,%r9,4)
	movups	%xmm1, 20(%rdi,%r9,4)
	cmpq	$31984, %r9                     # imm = 0x7CF0
	je	.LBB145_3
# %bb.10:                               # %vector.body.1
                                        #   in Loop: Header=BB145_2 Depth=2
	movups	32(%rax,%r9,4), %xmm0
	movups	48(%rax,%r9,4), %xmm1
	addps	32(%rcx,%r9,4), %xmm0
	addps	48(%rcx,%r9,4), %xmm1
	movups	%xmm0, 36(%rdi,%r9,4)
	movups	%xmm1, 52(%rdi,%r9,4)
	addq	$16, %r9
	jmp	.LBB145_2
	.p2align	4
.LBB145_3:                              #   in Loop: Header=BB145_1 Depth=1
	movl	$31992, %r9d                    # imm = 0x7CF8
.LBB145_4:                              # %scalar.ph.prol
                                        #   in Loop: Header=BB145_1 Depth=1
	leal	(,%r9,4), %r10d
	movss	(%rax,%r10), %xmm0              # xmm0 = mem[0],zero,zero,zero
	addss	(%r10,%rcx), %xmm0
	movss	%xmm0, 4(%rdi,%r9,4)
	.p2align	4
.LBB145_5:                              # %scalar.ph
                                        #   Parent Loop BB145_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	4(%rax,%r9,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	4(%rcx,%r9,4), %xmm0
	movss	%xmm0, 8(%rdi,%r9,4)
	movss	8(%rax,%r9,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	8(%rcx,%r9,4), %xmm0
	movss	%xmm0, 12(%rdi,%r9,4)
	addq	$2, %r9
	cmpq	$31998, %r9                     # imm = 0x7CFE
	jne	.LBB145_5
# %bb.6:                                # %.unr-lcssa
                                        #   in Loop: Header=BB145_1 Depth=1
	incl	%r8d
	cmpl	$1024, %r8d                     # imm = 0x400
	jne	.LBB145_1
# %bb.7:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	.p2align	4
.LBB145_8:                              # =>This Inner Loop Header: Depth=1
	addss	-16(%rdi,%rax,4), %xmm0
	addss	-12(%rdi,%rax,4), %xmm0
	addss	-8(%rdi,%rax,4), %xmm0
	addss	-4(%rdi,%rax,4), %xmm0
	addss	(%rdi,%rax,4), %xmm0
	addq	$5, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB145_8
# %bb.9:
	movss	%xmm0, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s424;
	.scl	2;
	.type	32;
	.endef
	.globl	s424                            # -- Begin function s424
	.p2align	4
s424:                                   # @s424
.seh_proc s424
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	array+252(%rip), %rcx
	movq	%rcx, xx(%rip)
	xorps	%xmm1, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	"??_C@_05HLOOGGLB@s424?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	array(%rip), %rax
	leaq	a(%rip), %rcx
	jmp	.LBB146_1
	.p2align	4
.LBB146_4:                              #   in Loop: Header=BB146_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	je	.LBB146_5
.LBB146_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB146_2 Depth 2
	xorl	%edx, %edx
	.p2align	4
.LBB146_2:                              #   Parent Loop BB146_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rax,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	(%rcx,%rdx,4), %xmm0
	movq	xx(%rip), %r8
	movss	%xmm0, 4(%r8,%rdx,4)
	cmpq	$31998, %rdx                    # imm = 0x7CFE
	je	.LBB146_4
# %bb.3:                                #   in Loop: Header=BB146_2 Depth=2
	movss	4(%rax,%rdx,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	4(%rcx,%rdx,4), %xmm0
	movq	xx(%rip), %r8
	movss	%xmm0, 8(%r8,%rdx,4)
	addq	$2, %rdx
	jmp	.LBB146_2
.LBB146_5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$0, temp(%rip)
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	movq	xx(%rip), %rcx
	.p2align	4
.LBB146_6:                              # =>This Inner Loop Header: Depth=1
	addss	-16(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-12(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-8(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	-4(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addss	(%rcx,%rax,4), %xmm0
	movss	%xmm0, temp(%rip)
	addq	$5, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB146_6
# %bb.7:
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s431;
	.scl	2;
	.type	32;
	.endef
	.globl	s431                            # -- Begin function s431
	.p2align	4
s431:                                   # @s431
.seh_proc s431
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05MFJJMDDP@s431?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB147_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_2 Depth 2
	movl	$12, %edx
	.p2align	4
.LBB147_2:                              # %vector.body
                                        #   Parent Loop BB147_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rax,%rdx,4), %xmm0
	movaps	-32(%rax,%rdx,4), %xmm1
	movaps	-16(%rax,%rdx,4), %xmm2
	movaps	(%rax,%rdx,4), %xmm3
	addps	-48(%rcx,%rdx,4), %xmm0
	addps	-32(%rcx,%rdx,4), %xmm1
	movaps	%xmm0, -48(%rax,%rdx,4)
	movaps	%xmm1, -32(%rax,%rdx,4)
	addps	-16(%rcx,%rdx,4), %xmm2
	addps	(%rcx,%rdx,4), %xmm3
	movaps	%xmm2, -16(%rax,%rdx,4)
	movaps	%xmm3, (%rax,%rdx,4)
	addq	$16, %rdx
	cmpq	$32012, %rdx                    # imm = 0x7D0C
	jne	.LBB147_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB147_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	jne	.LBB147_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s441;
	.scl	2;
	.type	32;
	.endef
	.globl	s441                            # -- Begin function s441
	.p2align	4
s441:                                   # @s441
.seh_proc s441
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05FIEOPLIG@s441?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	d(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	a(%rip), %r8
	jmp	.LBB148_1
	.p2align	4
.LBB148_9:                              #   in Loop: Header=BB148_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB148_10
.LBB148_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB148_2 Depth 2
	xorl	%r9d, %r9d
	jmp	.LBB148_2
	.p2align	4
.LBB148_3:                              #   in Loop: Header=BB148_2 Depth=2
	movss	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	mulss	(%r9,%rdx), %xmm1
	addss	(%r9,%r8), %xmm1
	movss	%xmm1, (%r9,%r8)
	addq	$4, %r9
	cmpq	$128000, %r9                    # imm = 0x1F400
	je	.LBB148_9
.LBB148_2:                              #   Parent Loop BB148_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r9,%rax), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB148_3
# %bb.4:                                #   in Loop: Header=BB148_2 Depth=2
	ucomiss	%xmm0, %xmm1
	movss	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero,zero,zero
	jne	.LBB148_6
	jp	.LBB148_6
# %bb.5:                                #   in Loop: Header=BB148_2 Depth=2
	movss	(%r9,%rcx), %xmm2               # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB148_7
.LBB148_6:                              #   in Loop: Header=BB148_2 Depth=2
	movss	(%r9,%rdx), %xmm2               # xmm2 = mem[0],zero,zero,zero
.LBB148_7:                              #   in Loop: Header=BB148_2 Depth=2
	mulss	%xmm2, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r9,%r8)
	addq	$4, %r9
	cmpq	$128000, %r9                    # imm = 0x1F400
	jne	.LBB148_2
	jmp	.LBB148_9
.LBB148_10:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s442;
	.scl	2;
	.type	32;
	.endef
	.globl	s442                            # -- Begin function s442
	.p2align	4
s442:                                   # @s442
.seh_proc s442
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05FKAIEFNP@s442?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	indx(%rip), %rax
	leaq	a(%rip), %rcx
	leaq	b(%rip), %rdx
	leaq	.Lswitch.table.s442(%rip), %r8
	jmp	.LBB149_1
	.p2align	4
.LBB149_5:                              #   in Loop: Header=BB149_1 Depth=1
	incl	%edi
	cmpl	$128, %edi
	je	.LBB149_6
.LBB149_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB149_2 Depth 2
	xorl	%r9d, %r9d
	jmp	.LBB149_2
	.p2align	4
.LBB149_4:                              #   in Loop: Header=BB149_2 Depth=2
	movss	(%r11,%r9), %xmm0               # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	addss	(%r9,%rcx), %xmm0
	movss	%xmm0, (%r9,%rcx)
	addq	$4, %r9
	cmpq	$128000, %r9                    # imm = 0x1F400
	je	.LBB149_5
.LBB149_2:                              #   Parent Loop BB149_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r9,%rax), %r10d
	addl	$-2, %r10d
	movq	%rdx, %r11
	cmpl	$2, %r10d
	ja	.LBB149_4
# %bb.3:                                # %switch.lookup
                                        #   in Loop: Header=BB149_2 Depth=2
	movl	%r10d, %r10d
	movq	(%r8,%r10,8), %r11
	jmp	.LBB149_4
.LBB149_6:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s443;
	.scl	2;
	.type	32;
	.endef
	.globl	s443                            # -- Begin function s443
	.p2align	4
s443:                                   # @s443
.seh_proc s443
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05FLMKCPOI@s443?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	d(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB150_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB150_2 Depth 2
	movl	$4, %r9d
	.p2align	4
.LBB150_2:                              # %vector.body
                                        #   Parent Loop BB150_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rax,%r9,4), %xmm1
	movaps	(%rax,%r9,4), %xmm2
	cmpnleps	%xmm0, %xmm1
	cmpnleps	%xmm0, %xmm2
	movaps	-16(%rcx,%r9,4), %xmm3
	movaps	(%rcx,%r9,4), %xmm4
	movaps	%xmm3, %xmm5
	andps	%xmm1, %xmm5
	andnps	-16(%rdx,%r9,4), %xmm1
	movaps	%xmm4, %xmm6
	andps	%xmm2, %xmm6
	andnps	(%rdx,%r9,4), %xmm2
	orps	%xmm5, %xmm1
	mulps	%xmm3, %xmm1
	addps	-16(%r8,%r9,4), %xmm1
	orps	%xmm6, %xmm2
	mulps	%xmm4, %xmm2
	addps	(%r8,%r9,4), %xmm2
	movaps	%xmm1, -16(%r8,%r9,4)
	movaps	%xmm2, (%r8,%r9,4)
	addq	$8, %r9
	cmpq	$32004, %r9                     # imm = 0x7D04
	jne	.LBB150_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB150_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB150_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s451;
	.scl	2;
	.type	32;
	.endef
	.globl	s451                            # -- Begin function s451
	.p2align	4
s451:                                   # @s451
.seh_proc s451
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
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05OAPCJMOD@s451?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rbx
	leaq	c(%rip), %r14
	leaq	a(%rip), %r15
	.p2align	4
.LBB151_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB151_2 Depth 2
	movl	$1, %r12d
	.p2align	4
.LBB151_2:                              #   Parent Loop BB151_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rbx,%r12,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	sinf
	movaps	%xmm0, %xmm6
	movss	-4(%r14,%r12,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	cosf
	addss	%xmm6, %xmm0
	movss	%xmm0, -4(%r15,%r12,4)
	movss	(%rbx,%r12,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	callq	sinf
	movaps	%xmm0, %xmm6
	movss	(%r14,%r12,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	callq	cosf
	addss	%xmm6, %xmm0
	movss	%xmm0, (%r15,%r12,4)
	addq	$2, %r12
	cmpq	$32001, %r12                    # imm = 0x7D01
	jne	.LBB151_2
# %bb.3:                                #   in Loop: Header=BB151_1 Depth=1
	incl	%edi
	cmpl	$51, %edi
	jne	.LBB151_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
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
	.seh_endproc
                                        # -- End function
	.def	s452;
	.scl	2;
	.type	32;
	.endef
	.globl	s452                            # -- Begin function s452
	.p2align	4
s452:                                   # @s452
.seh_proc s452
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05OCLECCLK@s452?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	movaps	__xmm@00000000000000030000000000000002(%rip), %xmm0 # xmm0 = [2,3]
	movaps	__xmm@00000000000000010000000000000000(%rip), %xmm1 # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	pcmpeqd	%xmm2, %xmm2
	leaq	a(%rip), %rdx
	movdqa	__xmm@00000000000000040000000000000004(%rip), %xmm3 # xmm3 = [4,4]
	.p2align	4
.LBB152_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB152_2 Depth 2
	xorl	%r8d, %r8d
	movaps	%xmm1, %xmm4
	movaps	%xmm0, %xmm5
	.p2align	4
.LBB152_2:                              # %vector.body
                                        #   Parent Loop BB152_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm4, %xmm6
	shufps	$136, %xmm5, %xmm6              # xmm6 = xmm6[0,2],xmm5[0,2]
	psubd	%xmm2, %xmm6
	cvtdq2ps	%xmm6, %xmm6
	mulps	(%r8,%rcx), %xmm6
	addps	(%r8,%rax), %xmm6
	movaps	%xmm6, (%r8,%rdx)
	paddq	%xmm3, %xmm4
	paddq	%xmm3, %xmm5
	addq	$16, %r8
	cmpq	$128000, %r8                    # imm = 0x1F400
	jne	.LBB152_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB152_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB152_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s453;
	.scl	2;
	.type	32;
	.endef
	.globl	s453                            # -- Begin function s453
	.p2align	4
s453:                                   # @s453
.seh_proc s453
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05ODHGEIIN@s453?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	movss	__real@40000000(%rip), %xmm0    # xmm0 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB153_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB153_2 Depth 2
	xorps	%xmm1, %xmm1
	movl	$1, %edx
	.p2align	4
.LBB153_2:                              #   Parent Loop BB153_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addss	%xmm0, %xmm1
	movss	-4(%rax,%rdx,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	%xmm2, -4(%rcx,%rdx,4)
	addss	%xmm0, %xmm1
	movss	(%rax,%rdx,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	%xmm2, (%rcx,%rdx,4)
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB153_2
# %bb.3:                                #   in Loop: Header=BB153_1 Depth=1
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB153_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s471;
	.scl	2;
	.type	32;
	.endef
	.globl	s471                            # -- Begin function s471
	.p2align	4
s471:                                   # @s471
.seh_proc s471
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	x(%rip), %rsi
	xorps	%xmm1, %xmm1
	movq	%rsi, %rcx
	movl	$1, %r8d
	callq	set1d
	leaq	"??_C@_05EKPLFEGI@s471?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	b(%rip), %r14
	leaq	d(%rip), %r15
	leaq	c(%rip), %r12
	leaq	e(%rip), %r13
	.p2align	4
.LBB154_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB154_2 Depth 2
	xorl	%ebp, %ebp
	.p2align	4
.LBB154_2:                              #   Parent Loop BB154_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rbp,%r15), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	addss	(%rbp,%r14), %xmm0
	movss	%xmm0, (%rbp,%rsi)
	callq	s471s
	movss	(%rbp,%r15), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbp,%r13), %xmm0
	addss	(%rbp,%r12), %xmm0
	movss	%xmm0, (%rbp,%r14)
	addq	$4, %rbp
	cmpq	$128000, %rbp                   # imm = 0x1F400
	jne	.LBB154_2
# %bb.3:                                #   in Loop: Header=BB154_1 Depth=1
	incl	%ebx
	cmpl	$128, %ebx
	jne	.LBB154_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	.p2align	4
.LBB154_5:                              # =>This Inner Loop Header: Depth=1
	addss	-16(%rsi,%rax,4), %xmm0
	addss	-12(%rsi,%rax,4), %xmm0
	addss	-8(%rsi,%rax,4), %xmm0
	addss	-4(%rsi,%rax,4), %xmm0
	addss	(%rsi,%rax,4), %xmm0
	addq	$5, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB154_5
# %bb.6:
	movss	%xmm0, temp(%rip)
	movl	$-12, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
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
	.def	s471s;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,s471s
	.globl	s471s                           # -- Begin function s471s
	.p2align	4
s471s:                                  # @s471s
# %bb.0:
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	s481;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	s481                            # -- Begin function s481
	.p2align	4
s481:                                   # @s481
.seh_proc s481
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05BCJIEEDO@s481?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	d(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB156_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB156_2 Depth 2
	xorl	%r9d, %r9d
	.p2align	4
.LBB156_2:                              #   Parent Loop BB156_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ucomiss	(%r9,%rax), %xmm0
	ja	.LBB156_6
# %bb.3:                                #   in Loop: Header=BB156_2 Depth=2
	movss	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	mulss	(%r9,%rdx), %xmm1
	addss	(%r9,%r8), %xmm1
	movss	%xmm1, (%r9,%r8)
	addq	$4, %r9
	cmpq	$128000, %r9                    # imm = 0x1F400
	jne	.LBB156_2
# %bb.4:                                #   in Loop: Header=BB156_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB156_1
# %bb.5:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB156_6:
	xorl	%ecx, %ecx
	callq	exit
	int3
	.seh_endproc
                                        # -- End function
	.def	s482;
	.scl	2;
	.type	32;
	.endef
	.globl	s482                            # -- Begin function s482
	.p2align	4
s482:                                   # @s482
.seh_proc s482
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05BANOPKGH@s482?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB157_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB157_2 Depth 2
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4
.LBB157_2:                              #   Parent Loop BB157_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r8,%rax), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	(%r8,%rcx), %xmm1               # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	mulss	%xmm1, %xmm0
	addss	(%r8,%rdx), %xmm0
	movss	%xmm0, (%r8,%rdx)
	setbe	%r10b
	cmpq	$31999, %r9                     # imm = 0x7CFF
	leaq	1(%r9), %r9
	setb	%r11b
	addq	$4, %r8
	testb	%r11b, %r10b
	jne	.LBB157_2
# %bb.3:                                #   in Loop: Header=BB157_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB157_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	tsvc_min;
	.scl	2;
	.type	32;
	.endef
	.globl	tsvc_min                        # -- Begin function tsvc_min
	.p2align	4
tsvc_min:                               # @tsvc_min
# %bb.0:
	movl	%edx, %eax
	cmpl	%edx, %ecx
	cmovll	%ecx, %eax
	retq
                                        # -- End function
	.def	s491;
	.scl	2;
	.type	32;
	.endef
	.globl	s491                            # -- Begin function s491
	.p2align	4
s491:                                   # @s491
.seh_proc s491
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_C@_05KKCECDFL@s491?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB159_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB159_2 Depth 2
	movl	$1, %r9d
	.p2align	4
.LBB159_2:                              #   Parent Loop BB159_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rcx,%r9,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	mulss	-4(%rdx,%r9,4), %xmm0
	addss	-4(%rax,%r9,4), %xmm0
	movslq	-4(%rsi,%r9,4), %r10
	movss	%xmm0, (%r8,%r10,4)
	mulss	(%rdx,%r9,4), %xmm1
	addss	(%rax,%r9,4), %xmm1
	movslq	(%rsi,%r9,4), %r10
	movss	%xmm1, (%r8,%r10,4)
	addq	$2, %r9
	cmpq	$32001, %r9                     # imm = 0x7D01
	jne	.LBB159_2
# %bb.3:                                #   in Loop: Header=BB159_1 Depth=1
	incl	%ebx
	cmpl	$256, %ebx                      # imm = 0x100
	jne	.LBB159_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s4112;
	.scl	2;
	.type	32;
	.endef
	.globl	s4112                           # -- Begin function s4112
	.p2align	4
s4112:                                  # @s4112
.seh_proc s4112
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movaps	%xmm1, %xmm6
	movq	%rcx, %rsi
	leaq	"??_C@_05BHGEHLGH@s4112?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB160_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB160_2 Depth 2
	movl	$1, %edx
	.p2align	4
.LBB160_2:                              #   Parent Loop BB160_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rsi,%rdx,4), %r8
	movss	(%rax,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm0
	addss	-4(%rcx,%rdx,4), %xmm0
	movss	%xmm0, -4(%rcx,%rdx,4)
	movslq	(%rsi,%rdx,4), %r8
	movss	(%rax,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm0
	addss	(%rcx,%rdx,4), %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB160_2
# %bb.3:                                #   in Loop: Header=BB160_1 Depth=1
	incl	%ebx
	cmpl	$256, %ebx                      # imm = 0x100
	jne	.LBB160_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s4113;
	.scl	2;
	.type	32;
	.endef
	.globl	s4113                           # -- Begin function s4113
	.p2align	4
s4113:                                  # @s4113
.seh_proc s4113
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_C@_05OHPEKCG@s4113?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB161_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB161_2 Depth 2
	movl	$1, %r8d
	.p2align	4
.LBB161_2:                              #   Parent Loop BB161_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rsi,%r8,4), %r9
	movss	(%rax,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	-4(%rcx,%r8,4), %xmm0
	movslq	(%rsi,%r8,4), %r10
	movss	(%rax,%r10,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	addss	(%rcx,%r8,4), %xmm1
	movss	%xmm0, (%rdx,%r9,4)
	movss	%xmm1, (%rdx,%r10,4)
	addq	$2, %r8
	cmpq	$32001, %r8                     # imm = 0x7D01
	jne	.LBB161_2
# %bb.3:                                #   in Loop: Header=BB161_1 Depth=1
	incl	%ebx
	cmpl	$256, %ebx                      # imm = 0x100
	jne	.LBB161_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s4114;
	.scl	2;
	.type	32;
	.endef
	.globl	s4114                           # -- Begin function s4114
	.p2align	4
s4114:                                  # @s4114
.seh_proc s4114
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %ebx
	movq	%rcx, %rdi
	leaq	"??_C@_05EBDONMOB@s4114?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	decl	%ebx
	cmpl	$31999, %ebx                    # imm = 0x7CFF
	jg	.LBB162_5
# %bb.1:                                # %.lr.ph.preheader
	movslq	%ebx, %rax
	leaq	1(%rax), %rcx
	leaq	(%rdi,%rax,4), %rdx
	shlq	$2, %rax
	xorl	%r8d, %r8d
	leaq	b(%rip), %r9
	leaq	c(%rip), %r10
	leaq	d(%rip), %r11
	leaq	a(%rip), %rdi
	.p2align	4
.LBB162_2:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB162_3 Depth 2
	xorl	%ebx, %ebx
	.p2align	4
.LBB162_3:                              #   Parent Loop BB162_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rax,%rbx,4), %r14
	movl	$31999, %ebp                    # imm = 0x7CFF
	subl	(%rdx,%rbx,4), %ebp
	movslq	%ebp, %r15
	movss	(%r10,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	(%r11,%r14), %xmm0
	addss	(%r9,%r14), %xmm0
	movss	%xmm0, (%rdi,%r14)
	leal	(%rcx,%rbx), %ebp
	incq	%rbx
	cmpl	$32000, %ebp                    # imm = 0x7D00
	jne	.LBB162_3
# %bb.4:                                # %._crit_edge
                                        #   in Loop: Header=BB162_2 Depth=1
	incl	%r8d
	cmpl	$256, %r8d                      # imm = 0x100
	jne	.LBB162_2
.LBB162_5:                              # %.split18
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s4115;
	.scl	2;
	.type	32;
	.endef
	.globl	s4115                           # -- Begin function s4115
	.p2align	4
s4115:                                  # @s4115
.seh_proc s4115
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_C@_05FICFONKA@s4115?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB163_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB163_2 Depth 2
	xorps	%xmm6, %xmm6
	movl	$1, %edx
	.p2align	4
.LBB163_2:                              #   Parent Loop BB163_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rsi,%rdx,4), %r8
	movss	-4(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm1
	movss	(%rax,%rdx,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	mulss	(%rcx,%r8,4), %xmm0
	addss	%xmm0, %xmm1
	movslq	(%rsi,%rdx,4), %r8
	mulss	(%rcx,%r8,4), %xmm6
	addss	%xmm1, %xmm6
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB163_2
# %bb.3:                                #   in Loop: Header=BB163_1 Depth=1
	incl	%ebx
	cmpl	$256, %ebx                      # imm = 0x100
	jne	.LBB163_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s4116;
	.scl	2;
	.type	32;
	.endef
	.globl	s4116                           # -- Begin function s4116
	.p2align	4
s4116:                                  # @s4116
.seh_proc s4116
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movl	%r8d, %esi
	movl	%edx, %ebp
	movq	%rcx, %rdi
	leaq	"??_C@_05HDAILOGD@s4116?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %ebx
	decl	%ebp
	movslq	%ebp, %rcx
	shlq	$10, %rcx
	leaq	aa(%rip), %rax
	addq	%rcx, %rax
	xorl	%ecx, %ecx
	leaq	a(%rip), %rdx
	jmp	.LBB164_1
	.p2align	4
.LBB164_4:                              #   in Loop: Header=BB164_1 Depth=1
	incl	%ecx
	cmpl	$25600, %ecx                    # imm = 0x6400
	je	.LBB164_5
.LBB164_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB164_2 Depth 2
	xorps	%xmm0, %xmm0
	movl	%esi, %r8d
	xorl	%r9d, %r9d
	.p2align	4
.LBB164_2:                              #   Parent Loop BB164_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r8d, %r10
	movss	(%rdx,%r10,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	movslq	(%rdi,%r9), %r10
	mulss	(%rax,%r10,4), %xmm6
	addss	%xmm0, %xmm6
	cmpq	$1016, %r9                      # imm = 0x3F8
	je	.LBB164_4
# %bb.3:                                #   in Loop: Header=BB164_2 Depth=2
	leal	1(%r8), %r10d
	movslq	%r10d, %r10
	movss	(%rdx,%r10,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movslq	4(%rdi,%r9), %r10
	mulss	(%rax,%r10,4), %xmm0
	addss	%xmm6, %xmm0
	addq	$8, %r9
	addl	$2, %r8d
	jmp	.LBB164_2
.LBB164_5:
	callq	clock
	subl	%ebx, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s4117;
	.scl	2;
	.type	32;
	.endef
	.globl	s4117                           # -- Begin function s4117
	.p2align	4
s4117:                                  # @s4117
.seh_proc s4117
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05GKBDIPCC@s4117?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	d(%rip), %rdx
	leaq	a(%rip), %r8
	.p2align	4
.LBB165_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB165_2 Depth 2
	xorl	%r9d, %r9d
	.p2align	4
.LBB165_2:                              # %vector.body
                                        #   Parent Loop BB165_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%r9,2), %xmm0             # xmm0 = mem[0],zero
	movsd	8(%rax,%r9,2), %xmm1            # xmm1 = mem[0],zero
	movss	(%r9,%rcx), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	4(%r9,%rcx), %xmm3              # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm2                    # xmm2 = xmm2[0,0,1,1]
	unpcklps	%xmm3, %xmm3                    # xmm3 = xmm3[0,0,1,1]
	movsd	(%rdx,%r9,2), %xmm4             # xmm4 = mem[0],zero
	mulps	%xmm2, %xmm4
	addps	%xmm0, %xmm4
	movsd	8(%rdx,%r9,2), %xmm0            # xmm0 = mem[0],zero
	mulps	%xmm3, %xmm0
	addps	%xmm1, %xmm0
	movlhps	%xmm0, %xmm4                    # xmm4 = xmm4[0],xmm0[0]
	movaps	%xmm4, (%r8,%r9,2)
	addq	$8, %r9
	cmpq	$64000, %r9                     # imm = 0xFA00
	jne	.LBB165_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB165_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB165_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	s4121;
	.scl	2;
	.type	32;
	.endef
	.globl	s4121                           # -- Begin function s4121
	.p2align	4
s4121:                                  # @s4121
.seh_proc s4121
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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05DOAPJGPN@s4121?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	c(%rip), %rbx
	leaq	b(%rip), %r14
	leaq	a(%rip), %r15
	.p2align	4
.LBB166_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB166_2 Depth 2
	xorl	%r12d, %r12d
	.p2align	4
.LBB166_2:                              #   Parent Loop BB166_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r12,%rbx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movss	(%r12,%r14), %xmm0              # xmm0 = mem[0],zero,zero,zero
	callq	f
	addss	(%r12,%r15), %xmm0
	movss	%xmm0, (%r12,%r15)
	addq	$4, %r12
	cmpq	$128000, %r12                   # imm = 0x1F400
	jne	.LBB166_2
# %bb.3:                                #   in Loop: Header=BB166_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	jne	.LBB166_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	f;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,f
	.globl	f                               # -- Begin function f
	.p2align	4
f:                                      # @f
# %bb.0:
	mulss	%xmm1, %xmm0
	retq
                                        # -- End function
	.def	va;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	va                              # -- Begin function va
	.p2align	4
va:                                     # @va
.seh_proc va
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_03IDIMFPN@va?7?$AA@"(%rip), %rcx
	callq	init
	movl	$2560, %ebp                     # imm = 0xA00
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rdi
	leaq	b(%rip), %rbx
	.p2align	4
.LBB168_1:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	$128000, %r8d                   # imm = 0x1F400
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	memcpy
	movl	$128000, %r8d                   # imm = 0x1F400
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	memcpy
	movl	$128000, %r8d                   # imm = 0x1F400
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	memcpy
	movl	$128000, %r8d                   # imm = 0x1F400
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	memcpy
	movl	$128000, %r8d                   # imm = 0x1F400
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	memcpy
	addl	$-5, %ebp
	jne	.LBB168_1
# %bb.2:
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vag;
	.scl	2;
	.type	32;
	.endef
	.globl	vag                             # -- Begin function vag
	.p2align	4
vag:                                    # @vag
.seh_proc vag
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_C@_05DMCMEDIF@vag?5?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB169_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB169_2 Depth 2
	movl	$1, %edx
	.p2align	4
.LBB169_2:                              #   Parent Loop BB169_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rsi,%rdx,4), %r8
	movss	(%rax,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rcx,%rdx,4)
	movslq	(%rsi,%rdx,4), %r8
	movss	(%rax,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rcx,%rdx,4)
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB169_2
# %bb.3:                                #   in Loop: Header=BB169_1 Depth=1
	incl	%ebx
	cmpl	$512, %ebx                      # imm = 0x200
	jne	.LBB169_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vas;
	.scl	2;
	.type	32;
	.endef
	.globl	vas                             # -- Begin function vas
	.p2align	4
vas:                                    # @vas
.seh_proc vas
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_C@_05ODFHIDEN@vas?5?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %edi
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB170_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB170_2 Depth 2
	movl	$1, %edx
	.p2align	4
.LBB170_2:                              #   Parent Loop BB170_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rsi,%rdx,4), %r8
	movss	-4(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rax,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, (%rcx,%r8,4)
	movslq	(%rsi,%rdx,4), %r8
	movss	%xmm1, (%rcx,%r8,4)
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB170_2
# %bb.3:                                #   in Loop: Header=BB170_1 Depth=1
	incl	%ebx
	cmpl	$512, %ebx                      # imm = 0x200
	jne	.LBB170_1
# %bb.4:
	callq	clock
	subl	%edi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vif;
	.scl	2;
	.type	32;
	.endef
	.globl	vif                             # -- Begin function vif
	.p2align	4
vif:                                    # @vif
.seh_proc vif
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05LEOAGPCB@vif?5?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	xorps	%xmm0, %xmm0
	leaq	a(%rip), %rcx
	jmp	.LBB171_1
	.p2align	4
.LBB171_19:                             # %middle.block
                                        #   in Loop: Header=BB171_1 Depth=1
	incl	%edi
	cmpl	$256, %edi                      # imm = 0x100
	je	.LBB171_20
.LBB171_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB171_2 Depth 2
	xorl	%edx, %edx
	jmp	.LBB171_2
	.p2align	4
.LBB171_18:                             # %pred.store.continue31
                                        #   in Loop: Header=BB171_2 Depth=2
	addq	$8, %rdx
	cmpq	$32000, %rdx                    # imm = 0x7D00
	je	.LBB171_19
.LBB171_2:                              # %vector.body
                                        #   Parent Loop BB171_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%rax,%rdx,4), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB171_4
# %bb.3:                                # %pred.store.if
                                        #   in Loop: Header=BB171_2 Depth=2
	movss	%xmm1, (%rcx,%rdx,4)
.LBB171_4:                              # %pred.store.continue
                                        #   in Loop: Header=BB171_2 Depth=2
	xorps	%xmm2, %xmm2
	cmpltps	%xmm1, %xmm2
	pextrw	$2, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB171_5
# %bb.6:                                # %pred.store.continue19
                                        #   in Loop: Header=BB171_2 Depth=2
	pextrw	$4, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB171_7
.LBB171_8:                              # %pred.store.continue21
                                        #   in Loop: Header=BB171_2 Depth=2
	pextrw	$6, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB171_9
.LBB171_10:                             # %pred.store.continue23
                                        #   in Loop: Header=BB171_2 Depth=2
	movaps	16(%rax,%rdx,4), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB171_12
.LBB171_11:                             # %pred.store.if24
                                        #   in Loop: Header=BB171_2 Depth=2
	movss	%xmm1, 16(%rcx,%rdx,4)
.LBB171_12:                             # %pred.store.continue25
                                        #   in Loop: Header=BB171_2 Depth=2
	xorps	%xmm2, %xmm2
	cmpltps	%xmm1, %xmm2
	pextrw	$2, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB171_13
# %bb.14:                               # %pred.store.continue27
                                        #   in Loop: Header=BB171_2 Depth=2
	pextrw	$4, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB171_15
.LBB171_16:                             # %pred.store.continue29
                                        #   in Loop: Header=BB171_2 Depth=2
	pextrw	$6, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB171_18
	jmp	.LBB171_17
	.p2align	4
.LBB171_5:                              # %pred.store.if18
                                        #   in Loop: Header=BB171_2 Depth=2
	movaps	%xmm1, %xmm3
	shufps	$85, %xmm1, %xmm3               # xmm3 = xmm3[1,1],xmm1[1,1]
	movss	%xmm3, 4(%rcx,%rdx,4)
	pextrw	$4, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB171_8
.LBB171_7:                              # %pred.store.if20
                                        #   in Loop: Header=BB171_2 Depth=2
	movaps	%xmm1, %xmm3
	unpckhpd	%xmm1, %xmm3                    # xmm3 = xmm3[1],xmm1[1]
	movss	%xmm3, 8(%rcx,%rdx,4)
	pextrw	$6, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB171_10
.LBB171_9:                              # %pred.store.if22
                                        #   in Loop: Header=BB171_2 Depth=2
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movss	%xmm1, 12(%rcx,%rdx,4)
	movaps	16(%rax,%rdx,4), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB171_11
	jmp	.LBB171_12
	.p2align	4
.LBB171_13:                             # %pred.store.if26
                                        #   in Loop: Header=BB171_2 Depth=2
	movaps	%xmm1, %xmm3
	shufps	$85, %xmm1, %xmm3               # xmm3 = xmm3[1,1],xmm1[1,1]
	movss	%xmm3, 20(%rcx,%rdx,4)
	pextrw	$4, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB171_16
.LBB171_15:                             # %pred.store.if28
                                        #   in Loop: Header=BB171_2 Depth=2
	movaps	%xmm1, %xmm3
	unpckhpd	%xmm1, %xmm3                    # xmm3 = xmm3[1],xmm1[1]
	movss	%xmm3, 24(%rcx,%rdx,4)
	pextrw	$6, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB171_18
.LBB171_17:                             # %pred.store.if30
                                        #   in Loop: Header=BB171_2 Depth=2
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movss	%xmm1, 28(%rcx,%rdx,4)
	jmp	.LBB171_18
.LBB171_20:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vpv;
	.scl	2;
	.type	32;
	.endef
	.globl	vpv                             # -- Begin function vpv
	.p2align	4
vpv:                                    # @vpv
.seh_proc vpv
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05IJAJMNEN@vpv?5?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB172_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB172_2 Depth 2
	movl	$12, %edx
	.p2align	4
.LBB172_2:                              # %vector.body
                                        #   Parent Loop BB172_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rax,%rdx,4), %xmm0
	movaps	-32(%rax,%rdx,4), %xmm1
	movaps	-16(%rax,%rdx,4), %xmm2
	movaps	(%rax,%rdx,4), %xmm3
	addps	-48(%rcx,%rdx,4), %xmm0
	addps	-32(%rcx,%rdx,4), %xmm1
	movaps	%xmm0, -48(%rcx,%rdx,4)
	movaps	%xmm1, -32(%rcx,%rdx,4)
	addps	-16(%rcx,%rdx,4), %xmm2
	addps	(%rcx,%rdx,4), %xmm3
	movaps	%xmm2, -16(%rcx,%rdx,4)
	movaps	%xmm3, (%rcx,%rdx,4)
	addq	$16, %rdx
	cmpq	$32012, %rdx                    # imm = 0x7D0C
	jne	.LBB172_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB172_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	jne	.LBB172_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vtv;
	.scl	2;
	.type	32;
	.endef
	.globl	vtv                             # -- Begin function vtv
	.p2align	4
vtv:                                    # @vtv
.seh_proc vtv
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05HMIJGLIN@vtv?5?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	a(%rip), %rcx
	.p2align	4
.LBB173_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB173_2 Depth 2
	movl	$12, %edx
	.p2align	4
.LBB173_2:                              # %vector.body
                                        #   Parent Loop BB173_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rax,%rdx,4), %xmm0
	movaps	-32(%rax,%rdx,4), %xmm1
	movaps	-16(%rax,%rdx,4), %xmm2
	movaps	(%rax,%rdx,4), %xmm3
	mulps	-48(%rcx,%rdx,4), %xmm0
	mulps	-32(%rcx,%rdx,4), %xmm1
	movaps	%xmm0, -48(%rcx,%rdx,4)
	movaps	%xmm1, -32(%rcx,%rdx,4)
	mulps	-16(%rcx,%rdx,4), %xmm2
	mulps	(%rcx,%rdx,4), %xmm3
	movaps	%xmm2, -16(%rcx,%rdx,4)
	movaps	%xmm3, (%rcx,%rdx,4)
	addq	$16, %rdx
	cmpq	$32012, %rdx                    # imm = 0x7D0C
	jne	.LBB173_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB173_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	jne	.LBB173_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vpvtv;
	.scl	2;
	.type	32;
	.endef
	.globl	vpvtv                           # -- Begin function vpvtv
	.p2align	4
vpvtv:                                  # @vpvtv
.seh_proc vpvtv
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05OFNLBPD@vpvtv?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB174_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB174_2 Depth 2
	movl	$4, %r8d
	.p2align	4
.LBB174_2:                              # %vector.body
                                        #   Parent Loop BB174_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rax,%r8,4), %xmm0
	movaps	(%rax,%r8,4), %xmm1
	mulps	-16(%rcx,%r8,4), %xmm0
	addps	-16(%rdx,%r8,4), %xmm0
	mulps	(%rcx,%r8,4), %xmm1
	addps	(%rdx,%r8,4), %xmm1
	movaps	%xmm0, -16(%rdx,%r8,4)
	movaps	%xmm1, (%rdx,%r8,4)
	addq	$8, %r8
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB174_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB174_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB174_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vpvts;
	.scl	2;
	.type	32;
	.endef
	.globl	vpvts                           # -- Begin function vpvts
	.p2align	4
vpvts:                                  # @vpvts
.seh_proc vpvts
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movaps	%xmm0, %xmm6
	leaq	"??_C@_05HDCKEFLG@vpvts?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	shufps	$0, %xmm6, %xmm6                # xmm6 = xmm6[0,0,0,0]
	xorl	%eax, %eax
	leaq	b(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB175_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB175_2 Depth 2
	movl	$4, %r8d
	.p2align	4
.LBB175_2:                              # %vector.body
                                        #   Parent Loop BB175_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rcx,%r8,4), %xmm0
	mulps	%xmm6, %xmm0
	addps	-16(%rdx,%r8,4), %xmm0
	movaps	(%rcx,%r8,4), %xmm1
	mulps	%xmm6, %xmm1
	addps	(%rdx,%r8,4), %xmm1
	movaps	%xmm0, -16(%rdx,%r8,4)
	movaps	%xmm1, (%rdx,%r8,4)
	addq	$8, %r8
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB175_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB175_1 Depth=1
	incl	%eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB175_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vpvpv;
	.scl	2;
	.type	32;
	.endef
	.globl	vpvpv                           # -- Begin function vpvpv
	.p2align	4
vpvpv:                                  # @vpvpv
.seh_proc vpvpv
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05JFEBJCP@vpvpv?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	b(%rip), %rax
	leaq	c(%rip), %rcx
	leaq	a(%rip), %rdx
	.p2align	4
.LBB176_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB176_2 Depth 2
	movl	$4, %r8d
	.p2align	4
.LBB176_2:                              # %vector.body
                                        #   Parent Loop BB176_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rax,%r8,4), %xmm0
	movaps	(%rax,%r8,4), %xmm1
	addps	-16(%rcx,%r8,4), %xmm0
	addps	(%rcx,%r8,4), %xmm1
	addps	-16(%rdx,%r8,4), %xmm0
	addps	(%rdx,%r8,4), %xmm1
	movaps	%xmm0, -16(%rdx,%r8,4)
	movaps	%xmm1, (%rdx,%r8,4)
	addq	$8, %r8
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB176_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB176_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB176_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vtvtv;
	.scl	2;
	.type	32;
	.endef
	.globl	vtvtv                           # -- Begin function vtvtv
	.p2align	4
vtvtv:                                  # @vtvtv
.seh_proc vtvtv
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_05PLNNBHDD@vtvtv?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	.p2align	4
.LBB177_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB177_2 Depth 2
	movl	$4, %r8d
	.p2align	4
.LBB177_2:                              # %vector.body
                                        #   Parent Loop BB177_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-16(%rax,%r8,4), %xmm0
	movaps	(%rax,%r8,4), %xmm1
	mulps	-16(%rcx,%r8,4), %xmm0
	mulps	(%rcx,%r8,4), %xmm1
	mulps	-16(%rdx,%r8,4), %xmm0
	mulps	(%rdx,%r8,4), %xmm1
	movaps	%xmm0, -16(%rax,%r8,4)
	movaps	%xmm1, (%rax,%r8,4)
	addq	$8, %r8
	cmpq	$32004, %r8                     # imm = 0x7D04
	jne	.LBB177_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB177_1 Depth=1
	incl	%edi
	cmpl	$1024, %edi                     # imm = 0x400
	jne	.LBB177_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vsumr;
	.scl	2;
	.type	32;
	.endef
	.globl	vsumr                           # -- Begin function vsumr
	.p2align	4
vsumr:                                  # @vsumr
.seh_proc vsumr
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	leaq	"??_C@_05CMNDDJDG@vsumr?$AA@"(%rip), %rcx
	callq	init
	callq	clock
	movl	%eax, %esi
	callq	clock
	subl	%esi, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	$1, %ecx
	callq	check
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vdotr;
	.scl	2;
	.type	32;
	.endef
	.globl	vdotr                           # -- Begin function vdotr
	.p2align	4
vdotr:                                  # @vdotr
.seh_proc vdotr
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$56, %rsp
	.seh_stackalloc 56
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NCEAFNKA@vdotr?$AA@"(%rip), %rcx
	callq	init
	xorl	%edi, %edi
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	.p2align	4
.LBB179_1:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB179_2 Depth 2
	xorps	%xmm6, %xmm6
	movl	$1, %edx
	.p2align	4
.LBB179_2:                              #   Parent Loop BB179_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rax,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rcx,%rdx,4), %xmm0
	movaps	%xmm6, %xmm1
	movss	(%rax,%rdx,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	mulss	(%rcx,%rdx,4), %xmm6
	addss	%xmm1, %xmm6
	addq	$2, %rdx
	cmpq	$32001, %rdx                    # imm = 0x7D01
	jne	.LBB179_2
# %bb.3:                                #   in Loop: Header=BB179_1 Depth=1
	incl	%edi
	cmpl	$2560, %edi                     # imm = 0xA00
	jne	.LBB179_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movss	%xmm6, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	vbor;
	.scl	2;
	.type	32;
	.endef
	.globl	vbor                            # -- Begin function vbor
	.p2align	4
vbor:                                   # @vbor
.seh_proc vbor
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$80, %rsp
	.seh_stackalloc 80
	movaps	%xmm8, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 64
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	leaq	"??_C@_05NBAAOLGE@vbor?5?$AA@"(%rip), %rcx
	callq	init
	xorl	%ebx, %ebx
	callq	clock
	movl	%eax, %esi
	leaq	a(%rip), %rax
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	leaq	d(%rip), %r8
	leaq	e(%rip), %r9
	leaq	aa(%rip), %r10
	leaq	x(%rip), %rdi
	.p2align	4
.LBB180_1:                              # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB180_2 Depth 2
	xorl	%r11d, %r11d
	.p2align	4
.LBB180_2:                              # %vector.body
                                        #   Parent Loop BB180_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%r11,%rax), %xmm5
	movaps	(%r11,%rcx), %xmm3
	movaps	(%r11,%rdx), %xmm0
	movaps	(%r11,%r8), %xmm1
	movaps	(%r11,%r9), %xmm4
	movaps	(%r11,%r10), %xmm2
	movaps	%xmm5, %xmm6
	mulps	%xmm3, %xmm6
	movaps	%xmm6, %xmm7
	mulps	%xmm1, %xmm7
	movaps	%xmm6, %xmm8
	mulps	%xmm0, %xmm8
	addps	%xmm7, %xmm8
	movaps	%xmm6, %xmm7
	mulps	%xmm4, %xmm7
	addps	%xmm8, %xmm7
	mulps	%xmm2, %xmm6
	addps	%xmm7, %xmm6
	movaps	%xmm5, %xmm7
	mulps	%xmm0, %xmm7
	movaps	%xmm7, %xmm8
	mulps	%xmm1, %xmm8
	addps	%xmm6, %xmm8
	movaps	%xmm7, %xmm6
	mulps	%xmm4, %xmm6
	addps	%xmm8, %xmm6
	mulps	%xmm2, %xmm7
	addps	%xmm6, %xmm7
	movaps	%xmm5, %xmm6
	mulps	%xmm1, %xmm6
	movaps	%xmm6, %xmm8
	mulps	%xmm4, %xmm8
	addps	%xmm7, %xmm8
	mulps	%xmm2, %xmm6
	addps	%xmm8, %xmm6
	mulps	%xmm4, %xmm5
	mulps	%xmm2, %xmm5
	addps	%xmm6, %xmm5
	movaps	%xmm3, %xmm6
	mulps	%xmm0, %xmm6
	movaps	%xmm6, %xmm7
	mulps	%xmm4, %xmm7
	movaps	%xmm6, %xmm8
	mulps	%xmm1, %xmm8
	addps	%xmm7, %xmm8
	mulps	%xmm2, %xmm6
	addps	%xmm8, %xmm6
	movaps	%xmm3, %xmm7
	mulps	%xmm1, %xmm7
	movaps	%xmm7, %xmm8
	mulps	%xmm4, %xmm8
	addps	%xmm6, %xmm8
	mulps	%xmm2, %xmm7
	addps	%xmm8, %xmm7
	mulps	%xmm4, %xmm3
	mulps	%xmm2, %xmm3
	addps	%xmm7, %xmm3
	mulps	%xmm5, %xmm3
	movaps	%xmm0, %xmm5
	mulps	%xmm1, %xmm5
	movaps	%xmm5, %xmm6
	mulps	%xmm2, %xmm6
	mulps	%xmm4, %xmm5
	addps	%xmm6, %xmm5
	mulps	%xmm4, %xmm0
	mulps	%xmm2, %xmm0
	addps	%xmm5, %xmm0
	mulps	%xmm3, %xmm0
	mulps	%xmm4, %xmm1
	mulps	%xmm2, %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%r11,%rdi)
	addq	$16, %r11
	cmpq	$1024, %r11                     # imm = 0x400
	jne	.LBB180_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB180_1 Depth=1
	incl	%ebx
	cmpl	$2560, %ebx                     # imm = 0xA00
	jne	.LBB180_1
# %bb.4:
	callq	clock
	subl	%esi, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	__real@412e848000000000(%rip), %xmm1
	leaq	"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	.p2align	4
.LBB180_5:                              # =>This Inner Loop Header: Depth=1
	addss	-16(%rdi,%rax,4), %xmm0
	addss	-12(%rdi,%rax,4), %xmm0
	addss	-8(%rdi,%rax,4), %xmm0
	addss	-4(%rdi,%rax,4), %xmm0
	addss	(%rdi,%rax,4), %xmm0
	addq	$5, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB180_5
# %bb.6:
	movss	%xmm0, temp(%rip)
	movl	$-1, %ecx
	callq	check
	xorl	%eax, %eax
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	movaps	48(%rsp), %xmm7                 # 16-byte Reload
	movaps	64(%rsp), %xmm8                 # 16-byte Reload
	.seh_startepilogue
	addq	$80, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	set;
	.scl	2;
	.type	32;
	.endef
	.globl	set                             # -- Begin function set
	.p2align	4
set:                                    # @set
.seh_proc set
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	movaps	%xmm6, 32(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 32
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	callq	tsvc_memalign
	movq	%rax, xx(%rip)
	movl	$10, %ecx
	callq	putchar
	movq	$-5, %rax
	.p2align	4
.LBB181_1:                              # =>This Inner Loop Header: Depth=1
	leal	9(%rax), %ecx
	movl	%ecx, 20(%rbx,%rax,4)
	leal	7(%rax), %ecx
	movl	%ecx, 24(%rbx,%rax,4)
	leaq	5(%rax), %rcx
	movl	%ecx, 28(%rbx,%rax,4)
	leal	8(%rax), %edx
	movl	%edx, 32(%rbx,%rax,4)
	leal	6(%rax), %edx
	movl	%edx, 36(%rbx,%rax,4)
	movq	%rcx, %rax
	cmpq	$31995, %rcx                    # imm = 0x7CFB
	jb	.LBB181_1
# %bb.2:                                # %vector.ph
	leaq	a(%rip), %rcx
	movss	__real@3f800000(%rip), %xmm6    # xmm6 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	b(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	c(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	d(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	e(%rip), %rcx
	movaps	%xmm6, %xmm1
	movl	$1, %r8d
	callq	set1d
	leaq	aa(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set2d
	leaq	bb(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set2d
	leaq	cc(%rip), %rcx
	xorps	%xmm1, %xmm1
	movl	$-1, %r8d
	callq	set2d
	movaps	__xmm@00000000000000030000000000000002(%rip), %xmm0 # xmm0 = [2,3]
	movaps	__xmm@00000000000000010000000000000000(%rip), %xmm1 # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$4, %eax
	pcmpeqd	%xmm2, %xmm2
	movdqa	__xmm@00000003000000030000000300000003(%rip), %xmm3 # xmm3 = [3,3,3,3]
	leaq	indx(%rip), %rcx
	movdqa	__xmm@00000000000000080000000000000008(%rip), %xmm4 # xmm4 = [8,8]
	.p2align	4
.LBB181_3:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm1, %xmm5
	shufps	$136, %xmm0, %xmm5              # xmm5 = xmm5[0,2],xmm0[0,2]
	psubd	%xmm2, %xmm5
	pand	%xmm3, %xmm5
	psubd	%xmm2, %xmm5
	movdqa	%xmm5, -16(%rcx,%rax,4)
	movdqa	%xmm5, (%rcx,%rax,4)
	paddq	%xmm4, %xmm1
	paddq	%xmm4, %xmm0
	addq	$8, %rax
	cmpq	$32004, %rax                    # imm = 0x7D04
	jne	.LBB181_3
# %bb.4:                                # %middle.block
	movl	$1065353216, (%rdi)             # imm = 0x3F800000
	movl	$1073741824, (%rsi)             # imm = 0x40000000
	movaps	32(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	tsvc_memalign;
	.scl	3;
	.type	32;
	.endef
	.p2align	4                               # -- Begin function tsvc_memalign
tsvc_memalign:                          # @tsvc_memalign
# %bb.0:
	movl	$128000, %ecx                   # imm = 0x1F400
	movl	$16, %edx
	jmp	_aligned_malloc                 # TAILCALL
                                        # -- End function
	.def	tsvc_original_main;
	.scl	2;
	.type	32;
	.endef
	.globl	tsvc_original_main              # -- Begin function tsvc_original_main
	.p2align	4
tsvc_original_main:                     # @tsvc_original_main
.seh_proc tsvc_original_main
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	movaps	%xmm6, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	callq	tsvc_memalign
	movq	%rax, %rsi
	leaq	44(%rsp), %rdx
	leaq	40(%rsp), %r8
	movq	%rax, %rcx
	callq	set
	leaq	.Lstr.1(%rip), %rcx
	callq	puts
	callq	s000
	callq	s111
	callq	s1111
	callq	s112
	callq	s1112
	callq	s113
	callq	s1113
	callq	s114
	callq	s115
	callq	s1115
	callq	s116
	callq	s118
	callq	s119
	callq	s1119
	callq	s121
	movl	$1, %ecx
	movl	$1, %edx
	callq	s122
	callq	s123
	callq	s124
	callq	s125
	callq	s126
	callq	s127
	callq	s128
	callq	s131
	callq	s132
	callq	s141
	callq	s151
	callq	s152
	callq	s161
	callq	s1161
	movl	$1, %ecx
	callq	s162
	movl	$1, %ecx
	callq	s171
	movl	$1, %ecx
	movl	$1, %edx
	callq	s172
	callq	s173
	movl	$16000, %ecx                    # imm = 0x3E80
	callq	s174
	movl	$1, %ecx
	callq	s175
	callq	s176
	callq	s211
	callq	s212
	callq	s1213
	callq	s221
	callq	s1221
	callq	s222
	callq	s231
	callq	s232
	callq	s1232
	callq	s233
	callq	s2233
	callq	s235
	callq	s241
	movss	40(%rsp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	44(%rsp), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm0
	callq	s242
	callq	s243
	callq	s244
	callq	s1244
	callq	s2244
	callq	s251
	callq	s1251
	callq	s2251
	callq	s3251
	callq	s252
	callq	s253
	callq	s254
	callq	s255
	callq	s256
	callq	s257
	callq	s258
	callq	s261
	callq	s271
	movaps	%xmm6, %xmm0
	callq	s272
	callq	s273
	callq	s274
	callq	s275
	callq	s2275
	callq	s276
	callq	s277
	callq	s278
	callq	s279
	callq	s1279
	movaps	%xmm6, %xmm0
	callq	s2710
	callq	s2711
	callq	s2712
	callq	s281
	callq	s1281
	callq	s291
	callq	s292
	callq	s293
	callq	s2101
	callq	s2102
	callq	s2111
	callq	s311
	callq	s31111
	callq	s312
	callq	s313
	callq	s314
	callq	s315
	callq	s316
	callq	s317
	movl	$1, %ecx
	callq	s318
	callq	s319
	callq	s3110
	callq	s13110
	callq	s3111
	callq	s3112
	callq	s3113
	callq	s321
	callq	s322
	callq	s323
	callq	s331
	movaps	%xmm6, %xmm0
	callq	s332
	callq	s341
	callq	s342
	callq	s343
	callq	s351
	callq	s1351
	callq	s352
	movq	%rsi, %rcx
	callq	s353
	callq	s421
	callq	s1421
	callq	s422
	callq	s423
	callq	s424
	callq	s431
	callq	s441
	callq	s442
	callq	s443
	callq	s451
	callq	s452
	callq	s453
	callq	s471
	callq	s481
	callq	s482
	movq	%rsi, %rcx
	callq	s491
	movq	%rsi, %rcx
	movaps	%xmm6, %xmm1
	callq	s4112
	movq	%rsi, %rcx
	callq	s4113
	movq	%rsi, %rcx
	movl	$1, %edx
	callq	s4114
	movq	%rsi, %rcx
	callq	s4115
	movq	%rsi, %rcx
	movl	$128, %edx
	movl	$1, %r8d
	callq	s4116
	callq	s4117
	callq	s4121
	callq	va
	movq	%rsi, %rcx
	callq	vag
	movq	%rsi, %rcx
	callq	vas
	callq	vif
	callq	vpv
	callq	vtv
	callq	vpvtv
	movaps	%xmm6, %xmm0
	callq	vpvts
	callq	vpvpv
	callq	vtvtv
	callq	vsumr
	callq	vdotr
	callq	vbor
	xorl	%eax, %eax
	movaps	48(%rsp), %xmm6                 # 16-byte Reload
	.seh_startepilogue
	addq	$64, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.section	.bss,"bw",discard,_Avx2WmemEnabledWeakValue
	.globl	_Avx2WmemEnabledWeakValue       # @_Avx2WmemEnabledWeakValue
	.p2align	2, 0x0
_Avx2WmemEnabledWeakValue:
	.long	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_01FHEEJDEE@A?$AA@"
	.globl	"??_C@_01FHEEJDEE@A?$AA@"       # @"??_C@_01FHEEJDEE@A?$AA@"
	.p2align	2, 0x0
"??_C@_01FHEEJDEE@A?$AA@":
	.asciz	"A"

	.data
	.p2align	3, 0x0                          # @g_fn
g_fn:
	.quad	s2233

	.section	.rdata,"dr",discard,"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@"
	.globl	"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" # @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@"
	.p2align	3, 0x0
"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@":
	.asciz	"CHECK %016llx\n"

	.section	.rdata,"dr",discard,"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"
	.globl	"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" # @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@"
	.p2align	3, 0x0
"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@":
	.asciz	"TRIAL %d %.3f\n"

	.section	.rdata,"dr",discard,"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@"
	.globl	"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@" # @"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@"
	.p2align	3, 0x0
"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@":
	.asciz	"META case=tsvc_s2233 config=%s reps=%d trials=%d\n"

	.section	.bss,"bw",discard,"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.globl	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" # @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.p2align	3, 0x0
"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA":
	.quad	0                               # 0x0

	.bss
	.globl	a                               # @a
	.p2align	4, 0x0
a:
	.zero	128000

	.globl	b                               # @b
	.p2align	4, 0x0
b:
	.zero	128000

	.globl	c                               # @c
	.p2align	4, 0x0
c:
	.zero	128000

	.globl	d                               # @d
	.p2align	4, 0x0
d:
	.zero	128000

	.globl	e                               # @e
	.p2align	4, 0x0
e:
	.zero	128000

	.globl	aa                              # @aa
	.p2align	4, 0x0
aa:
	.zero	262144

	.globl	bb                              # @bb
	.p2align	4, 0x0
bb:
	.zero	262144

	.globl	cc                              # @cc
	.p2align	4, 0x0
cc:
	.zero	262144

	.globl	array                           # @array
	.p2align	4, 0x0
array:
	.zero	262144

	.section	.rdata,"dr",discard,"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@"
	.globl	"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@" # @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@"
	.p2align	2, 0x0
"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@":
	.asciz	"%f \n"

	.bss
	.globl	temp                            # @temp
	.p2align	2, 0x0
temp:
	.long	0x00000000                      # float 0

	.section	.rdata,"dr",discard,"??_C@_05CDGOKACG@s000?5?$AA@"
	.globl	"??_C@_05CDGOKACG@s000?5?$AA@"  # @"??_C@_05CDGOKACG@s000?5?$AA@"
	.p2align	2, 0x0
"??_C@_05CDGOKACG@s000?5?$AA@":
	.asciz	"s000 "

	.bss
	.globl	X                               # @X
	.p2align	4, 0x0
X:
	.zero	128000

	.globl	Y                               # @Y
	.p2align	4, 0x0
Y:
	.zero	128000

	.globl	Z                               # @Z
	.p2align	4, 0x0
Z:
	.zero	128000

	.globl	U                               # @U
	.p2align	4, 0x0
U:
	.zero	128000

	.globl	V                               # @V
	.p2align	4, 0x0
V:
	.zero	128000

	.section	.rdata,"dr",discard,"??_C@_05KHHAIEME@s111?5?$AA@"
	.globl	"??_C@_05KHHAIEME@s111?5?$AA@"  # @"??_C@_05KHHAIEME@s111?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KHHAIEME@s111?5?$AA@":
	.asciz	"s111 "

	.section	.rdata,"dr",discard,"??_C@_05KFDGDKJN@s112?5?$AA@"
	.globl	"??_C@_05KFDGDKJN@s112?5?$AA@"  # @"??_C@_05KFDGDKJN@s112?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KFDGDKJN@s112?5?$AA@":
	.asciz	"s112 "

	.section	.rdata,"dr",discard,"??_C@_05KEPEFAKK@s113?5?$AA@"
	.globl	"??_C@_05KEPEFAKK@s113?5?$AA@"  # @"??_C@_05KEPEFAKK@s113?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KEPEFAKK@s113?5?$AA@":
	.asciz	"s113 "

	.section	.rdata,"dr",discard,"??_C@_05KBLLEGCP@s114?5?$AA@"
	.globl	"??_C@_05KBLLEGCP@s114?5?$AA@"  # @"??_C@_05KBLLEGCP@s114?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KBLLEGCP@s114?5?$AA@":
	.asciz	"s114 "

	.section	.rdata,"dr",discard,"??_C@_05KAHJCMBI@s115?5?$AA@"
	.globl	"??_C@_05KAHJCMBI@s115?5?$AA@"  # @"??_C@_05KAHJCMBI@s115?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KAHJCMBI@s115?5?$AA@":
	.asciz	"s115 "

	.section	.rdata,"dr",discard,"??_C@_05KCDPJCEB@s116?5?$AA@"
	.globl	"??_C@_05KCDPJCEB@s116?5?$AA@"  # @"??_C@_05KCDPJCEB@s116?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KCDPJCEB@s116?5?$AA@":
	.asciz	"s116 "

	.section	.rdata,"dr",discard,"??_C@_05KIKBLPEL@s118?5?$AA@"
	.globl	"??_C@_05KIKBLPEL@s118?5?$AA@"  # @"??_C@_05KIKBLPEL@s118?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KIKBLPEL@s118?5?$AA@":
	.asciz	"s118 "

	.section	.rdata,"dr",discard,"??_C@_05KJGDNFHM@s119?5?$AA@"
	.globl	"??_C@_05KJGDNFHM@s119?5?$AA@"  # @"??_C@_05KJGDNFHM@s119?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KJGDNFHM@s119?5?$AA@":
	.asciz	"s119 "

	.section	.rdata,"dr",discard,"??_C@_05LFMFCLCK@s121?5?$AA@"
	.globl	"??_C@_05LFMFCLCK@s121?5?$AA@"  # @"??_C@_05LFMFCLCK@s121?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LFMFCLCK@s121?5?$AA@":
	.asciz	"s121 "

	.section	.rdata,"dr",discard,"??_C@_05LHIDJFHD@s122?5?$AA@"
	.globl	"??_C@_05LHIDJFHD@s122?5?$AA@"  # @"??_C@_05LHIDJFHD@s122?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LHIDJFHD@s122?5?$AA@":
	.asciz	"s122 "

	.section	.rdata,"dr",discard,"??_C@_05LGEBPPEE@s123?5?$AA@"
	.globl	"??_C@_05LGEBPPEE@s123?5?$AA@"  # @"??_C@_05LGEBPPEE@s123?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LGEBPPEE@s123?5?$AA@":
	.asciz	"s123 "

	.section	.rdata,"dr",discard,"??_C@_05LDAOOJMB@s124?5?$AA@"
	.globl	"??_C@_05LDAOOJMB@s124?5?$AA@"  # @"??_C@_05LDAOOJMB@s124?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LDAOOJMB@s124?5?$AA@":
	.asciz	"s124 "

	.section	.rdata,"dr",discard,"??_C@_05LCMMIDPG@s125?5?$AA@"
	.globl	"??_C@_05LCMMIDPG@s125?5?$AA@"  # @"??_C@_05LCMMIDPG@s125?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LCMMIDPG@s125?5?$AA@":
	.asciz	"s125 "

	.section	.rdata,"dr",discard,"??_C@_05LAIKDNKP@s126?5?$AA@"
	.globl	"??_C@_05LAIKDNKP@s126?5?$AA@"  # @"??_C@_05LAIKDNKP@s126?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LAIKDNKP@s126?5?$AA@":
	.asciz	"s126 "

	.section	.rdata,"dr",discard,"??_C@_05LBEIFHJI@s127?5?$AA@"
	.globl	"??_C@_05LBEIFHJI@s127?5?$AA@"  # @"??_C@_05LBEIFHJI@s127?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LBEIFHJI@s127?5?$AA@":
	.asciz	"s127 "

	.section	.rdata,"dr",discard,"??_C@_05LKBEBAKF@s128?5?$AA@"
	.globl	"??_C@_05LKBEBAKF@s128?5?$AA@"  # @"??_C@_05LKBEBAKF@s128?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LKBEBAKF@s128?5?$AA@":
	.asciz	"s128 "

	.section	.rdata,"dr",discard,"??_C@_05NHJEMEP@s131?5?$AA@"
	.globl	"??_C@_05NHJEMEP@s131?5?$AA@"   # @"??_C@_05NHJEMEP@s131?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NHJEMEP@s131?5?$AA@":
	.asciz	"s131 "

	.section	.rdata,"dr",discard,"??_C@_05PDPPCBG@s132?5?$AA@"
	.globl	"??_C@_05PDPPCBG@s132?5?$AA@"   # @"??_C@_05PDPPCBG@s132?5?$AA@"
	.p2align	2, 0x0
"??_C@_05PDPPCBG@s132?5?$AA@":
	.asciz	"s132 "

	.section	.rdata,"dr",discard,"??_C@_05JAKOHEPG@s141?5?$AA@"
	.globl	"??_C@_05JAKOHEPG@s141?5?$AA@"  # @"??_C@_05JAKOHEPG@s141?5?$AA@"
	.p2align	2, 0x0
"??_C@_05JAKOHEPG@s141?5?$AA@":
	.asciz	"s141 "

	.section	.rdata,"dr",discard,"??_C@_05CIBCBDJD@s151?5?$AA@"
	.globl	"??_C@_05CIBCBDJD@s151?5?$AA@"  # @"??_C@_05CIBCBDJD@s151?5?$AA@"
	.p2align	2, 0x0
"??_C@_05CIBCBDJD@s151?5?$AA@":
	.asciz	"s151 "

	.section	.rdata,"dr",discard,"??_C@_05CKFEKNMK@s152?5?$AA@"
	.globl	"??_C@_05CKFEKNMK@s152?5?$AA@"  # @"??_C@_05CKFEKNMK@s152?5?$AA@"
	.p2align	2, 0x0
"??_C@_05CKFEKNMK@s152?5?$AA@":
	.asciz	"s152 "

	.section	.rdata,"dr",discard,"??_C@_05DKKHLMHN@s161?5?$AA@"
	.globl	"??_C@_05DKKHLMHN@s161?5?$AA@"  # @"??_C@_05DKKHLMHN@s161?5?$AA@"
	.p2align	2, 0x0
"??_C@_05DKKHLMHN@s161?5?$AA@":
	.asciz	"s161 "

	.section	.rdata,"dr",discard,"??_C@_05DIOBACCE@s162?5?$AA@"
	.globl	"??_C@_05DIOBACCE@s162?5?$AA@"  # @"??_C@_05DIOBACCE@s162?5?$AA@"
	.p2align	2, 0x0
"??_C@_05DIOBACCE@s162?5?$AA@":
	.asciz	"s162 "

	.section	.rdata,"dr",discard,"??_C@_05ICBLNLBI@s171?5?$AA@"
	.globl	"??_C@_05ICBLNLBI@s171?5?$AA@"  # @"??_C@_05ICBLNLBI@s171?5?$AA@"
	.p2align	2, 0x0
"??_C@_05ICBLNLBI@s171?5?$AA@":
	.asciz	"s171 "

	.section	.rdata,"dr",discard,"??_C@_05IAFNGFEB@s172?5?$AA@"
	.globl	"??_C@_05IAFNGFEB@s172?5?$AA@"  # @"??_C@_05IAFNGFEB@s172?5?$AA@"
	.p2align	2, 0x0
"??_C@_05IAFNGFEB@s172?5?$AA@":
	.asciz	"s172 "

	.section	.rdata,"dr",discard,"??_C@_05IBJPAPHG@s173?5?$AA@"
	.globl	"??_C@_05IBJPAPHG@s173?5?$AA@"  # @"??_C@_05IBJPAPHG@s173?5?$AA@"
	.p2align	2, 0x0
"??_C@_05IBJPAPHG@s173?5?$AA@":
	.asciz	"s173 "

	.section	.rdata,"dr",discard,"??_C@_05IENABJPD@s174?5?$AA@"
	.globl	"??_C@_05IENABJPD@s174?5?$AA@"  # @"??_C@_05IENABJPD@s174?5?$AA@"
	.p2align	2, 0x0
"??_C@_05IENABJPD@s174?5?$AA@":
	.asciz	"s174 "

	.section	.rdata,"dr",discard,"??_C@_05IFBCHDME@s175?5?$AA@"
	.globl	"??_C@_05IFBCHDME@s175?5?$AA@"  # @"??_C@_05IFBCHDME@s175?5?$AA@"
	.p2align	2, 0x0
"??_C@_05IFBCHDME@s175?5?$AA@":
	.asciz	"s175 "

	.section	.rdata,"dr",discard,"??_C@_05IHFEMNJN@s176?5?$AA@"
	.globl	"??_C@_05IHFEMNJN@s176?5?$AA@"  # @"??_C@_05IHFEMNJN@s176?5?$AA@"
	.p2align	2, 0x0
"??_C@_05IHFEMNJN@s176?5?$AA@":
	.asciz	"s176 "

	.section	.rdata,"dr",discard,"??_C@_05OANAPOBE@s211?5?$AA@"
	.globl	"??_C@_05OANAPOBE@s211?5?$AA@"  # @"??_C@_05OANAPOBE@s211?5?$AA@"
	.p2align	2, 0x0
"??_C@_05OANAPOBE@s211?5?$AA@":
	.asciz	"s211 "

	.section	.rdata,"dr",discard,"??_C@_05OCJGEAEN@s212?5?$AA@"
	.globl	"??_C@_05OCJGEAEN@s212?5?$AA@"  # @"??_C@_05OCJGEAEN@s212?5?$AA@"
	.p2align	2, 0x0
"??_C@_05OCJGEAEN@s212?5?$AA@":
	.asciz	"s212 "

	.section	.rdata,"dr",discard,"??_C@_05PCGFFBPK@s221?5?$AA@"
	.globl	"??_C@_05PCGFFBPK@s221?5?$AA@"  # @"??_C@_05PCGFFBPK@s221?5?$AA@"
	.p2align	2, 0x0
"??_C@_05PCGFFBPK@s221?5?$AA@":
	.asciz	"s221 "

	.section	.rdata,"dr",discard,"??_C@_05PACDOPKD@s222?5?$AA@"
	.globl	"??_C@_05PACDOPKD@s222?5?$AA@"  # @"??_C@_05PACDOPKD@s222?5?$AA@"
	.p2align	2, 0x0
"??_C@_05PACDOPKD@s222?5?$AA@":
	.asciz	"s222 "

	.section	.rdata,"dr",discard,"??_C@_05EKNJDGJP@s231?5?$AA@"
	.globl	"??_C@_05EKNJDGJP@s231?5?$AA@"  # @"??_C@_05EKNJDGJP@s231?5?$AA@"
	.p2align	2, 0x0
"??_C@_05EKNJDGJP@s231?5?$AA@":
	.asciz	"s231 "

	.section	.rdata,"dr",discard,"??_C@_05EIJPIIMG@s232?5?$AA@"
	.globl	"??_C@_05EIJPIIMG@s232?5?$AA@"  # @"??_C@_05EIJPIIMG@s232?5?$AA@"
	.p2align	2, 0x0
"??_C@_05EIJPIIMG@s232?5?$AA@":
	.asciz	"s232 "

	.section	.rdata,"dr",discard,"??_C@_05EJFNOCPB@s233?5?$AA@"
	.globl	"??_C@_05EJFNOCPB@s233?5?$AA@"  # @"??_C@_05EJFNOCPB@s233?5?$AA@"
	.p2align	2, 0x0
"??_C@_05EJFNOCPB@s233?5?$AA@":
	.asciz	"s233 "

	.section	.rdata,"dr",discard,"??_C@_05EMBCPEHE@s234?5?$AA@"
	.globl	"??_C@_05EMBCPEHE@s234?5?$AA@"  # @"??_C@_05EMBCPEHE@s234?5?$AA@"
	.p2align	2, 0x0
"??_C@_05EMBCPEHE@s234?5?$AA@":
	.asciz	"s234 "

	.section	.rdata,"dr",discard,"??_C@_05ENNAJOED@s235?5?$AA@"
	.globl	"??_C@_05ENNAJOED@s235?5?$AA@"  # @"??_C@_05ENNAJOED@s235?5?$AA@"
	.p2align	2, 0x0
"??_C@_05ENNAJOED@s235?5?$AA@":
	.asciz	"s235 "

	.section	.rdata,"dr",discard,"??_C@_05NHAOAOCG@s241?5?$AA@"
	.globl	"??_C@_05NHAOAOCG@s241?5?$AA@"  # @"??_C@_05NHAOAOCG@s241?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NHAOAOCG@s241?5?$AA@":
	.asciz	"s241 "

	.section	.rdata,"dr",discard,"??_C@_05NFEILAHP@s242?5?$AA@"
	.globl	"??_C@_05NFEILAHP@s242?5?$AA@"  # @"??_C@_05NFEILAHP@s242?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NFEILAHP@s242?5?$AA@":
	.asciz	"s242 "

	.section	.rdata,"dr",discard,"??_C@_05NEIKNKEI@s243?5?$AA@"
	.globl	"??_C@_05NEIKNKEI@s243?5?$AA@"  # @"??_C@_05NEIKNKEI@s243?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NEIKNKEI@s243?5?$AA@":
	.asciz	"s243 "

	.section	.rdata,"dr",discard,"??_C@_05NBMFMMMN@s244?5?$AA@"
	.globl	"??_C@_05NBMFMMMN@s244?5?$AA@"  # @"??_C@_05NBMFMMMN@s244?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NBMFMMMN@s244?5?$AA@":
	.asciz	"s244 "

	.section	.rdata,"dr",discard,"??_C@_05GPLCGJED@s251?5?$AA@"
	.globl	"??_C@_05GPLCGJED@s251?5?$AA@"  # @"??_C@_05GPLCGJED@s251?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GPLCGJED@s251?5?$AA@":
	.asciz	"s251 "

	.section	.rdata,"dr",discard,"??_C@_05GNPENHBK@s252?5?$AA@"
	.globl	"??_C@_05GNPENHBK@s252?5?$AA@"  # @"??_C@_05GNPENHBK@s252?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GNPENHBK@s252?5?$AA@":
	.asciz	"s252 "

	.section	.rdata,"dr",discard,"??_C@_05GMDGLNCN@s253?5?$AA@"
	.globl	"??_C@_05GMDGLNCN@s253?5?$AA@"  # @"??_C@_05GMDGLNCN@s253?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GMDGLNCN@s253?5?$AA@":
	.asciz	"s253 "

	.section	.rdata,"dr",discard,"??_C@_05GJHJKLKI@s254?5?$AA@"
	.globl	"??_C@_05GJHJKLKI@s254?5?$AA@"  # @"??_C@_05GJHJKLKI@s254?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GJHJKLKI@s254?5?$AA@":
	.asciz	"s254 "

	.section	.rdata,"dr",discard,"??_C@_05GILLMBJP@s255?5?$AA@"
	.globl	"??_C@_05GILLMBJP@s255?5?$AA@"  # @"??_C@_05GILLMBJP@s255?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GILLMBJP@s255?5?$AA@":
	.asciz	"s255 "

	.section	.rdata,"dr",discard,"??_C@_05GKPNHPMG@s256?5?$AA@"
	.globl	"??_C@_05GKPNHPMG@s256?5?$AA@"  # @"??_C@_05GKPNHPMG@s256?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GKPNHPMG@s256?5?$AA@":
	.asciz	"s256 "

	.section	.rdata,"dr",discard,"??_C@_05GLDPBFPB@s257?5?$AA@"
	.globl	"??_C@_05GLDPBFPB@s257?5?$AA@"  # @"??_C@_05GLDPBFPB@s257?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GLDPBFPB@s257?5?$AA@":
	.asciz	"s257 "

	.section	.rdata,"dr",discard,"??_C@_05GAGDFCMM@s258?5?$AA@"
	.globl	"??_C@_05GAGDFCMM@s258?5?$AA@"  # @"??_C@_05GAGDFCMM@s258?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GAGDFCMM@s258?5?$AA@":
	.asciz	"s258 "

	.section	.rdata,"dr",discard,"??_C@_05HNAHMGKN@s261?5?$AA@"
	.globl	"??_C@_05HNAHMGKN@s261?5?$AA@"  # @"??_C@_05HNAHMGKN@s261?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HNAHMGKN@s261?5?$AA@":
	.asciz	"s261 "

	.section	.rdata,"dr",discard,"??_C@_05MFLLKBMI@s271?5?$AA@"
	.globl	"??_C@_05MFLLKBMI@s271?5?$AA@"  # @"??_C@_05MFLLKBMI@s271?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MFLLKBMI@s271?5?$AA@":
	.asciz	"s271 "

	.section	.rdata,"dr",discard,"??_C@_05MHPNBPJB@s272?5?$AA@"
	.globl	"??_C@_05MHPNBPJB@s272?5?$AA@"  # @"??_C@_05MHPNBPJB@s272?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MHPNBPJB@s272?5?$AA@":
	.asciz	"s272 "

	.section	.rdata,"dr",discard,"??_C@_05MGDPHFKG@s273?5?$AA@"
	.globl	"??_C@_05MGDPHFKG@s273?5?$AA@"  # @"??_C@_05MGDPHFKG@s273?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MGDPHFKG@s273?5?$AA@":
	.asciz	"s273 "

	.section	.rdata,"dr",discard,"??_C@_05MDHAGDCD@s274?5?$AA@"
	.globl	"??_C@_05MDHAGDCD@s274?5?$AA@"  # @"??_C@_05MDHAGDCD@s274?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MDHAGDCD@s274?5?$AA@":
	.asciz	"s274 "

	.section	.rdata,"dr",discard,"??_C@_05MCLCAJBE@s275?5?$AA@"
	.globl	"??_C@_05MCLCAJBE@s275?5?$AA@"  # @"??_C@_05MCLCAJBE@s275?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MCLCAJBE@s275?5?$AA@":
	.asciz	"s275 "

	.section	.rdata,"dr",discard,"??_C@_05MAPELHEN@s276?5?$AA@"
	.globl	"??_C@_05MAPELHEN@s276?5?$AA@"  # @"??_C@_05MAPELHEN@s276?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MAPELHEN@s276?5?$AA@":
	.asciz	"s276 "

	.section	.rdata,"dr",discard,"??_C@_05MBDGNNHK@s277?5?$AA@"
	.globl	"??_C@_05MBDGNNHK@s277?5?$AA@"  # @"??_C@_05MBDGNNHK@s277?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MBDGNNHK@s277?5?$AA@":
	.asciz	"s277 "

	.section	.rdata,"dr",discard,"??_C@_05MKGKJKEH@s278?5?$AA@"
	.globl	"??_C@_05MKGKJKEH@s278?5?$AA@"  # @"??_C@_05MKGKJKEH@s278?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MKGKJKEH@s278?5?$AA@":
	.asciz	"s278 "

	.section	.rdata,"dr",discard,"??_C@_05MLKIPAHA@s279?5?$AA@"
	.globl	"??_C@_05MLKIPAHA@s279?5?$AA@"  # @"??_C@_05MLKIPAHA@s279?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MLKIPAHA@s279?5?$AA@":
	.asciz	"s279 "

	.section	.rdata,"dr",discard,"??_C@_05IPHJLDJJ@s2710?$AA@"
	.globl	"??_C@_05IPHJLDJJ@s2710?$AA@"   # @"??_C@_05IPHJLDJJ@s2710?$AA@"
	.p2align	2, 0x0
"??_C@_05IPHJLDJJ@s2710?$AA@":
	.asciz	"s2710"

	.section	.rdata,"dr",discard,"??_C@_05JGGCICNI@s2711?$AA@"
	.globl	"??_C@_05JGGCICNI@s2711?$AA@"   # @"??_C@_05JGGCICNI@s2711?$AA@"
	.p2align	2, 0x0
"??_C@_05JGGCICNI@s2711?$AA@":
	.asciz	"s2711"

	.section	.rdata,"dr",discard,"??_C@_05LNEPNBBL@s2712?$AA@"
	.globl	"??_C@_05LNEPNBBL@s2712?$AA@"   # @"??_C@_05LNEPNBBL@s2712?$AA@"
	.p2align	2, 0x0
"??_C@_05LNEPNBBL@s2712?$AA@":
	.asciz	"s2712"

	.section	.rdata,"dr",discard,"??_C@_05JNNILBJO@s281?5?$AA@"
	.globl	"??_C@_05JNNILBJO@s281?5?$AA@"  # @"??_C@_05JNNILBJO@s281?5?$AA@"
	.p2align	2, 0x0
"??_C@_05JNNILBJO@s281?5?$AA@":
	.asciz	"s281 "

	.section	.rdata,"dr",discard,"??_C@_05CFGENGPL@s291?5?$AA@"
	.globl	"??_C@_05CFGENGPL@s291?5?$AA@"  # @"??_C@_05CFGENGPL@s291?5?$AA@"
	.p2align	2, 0x0
"??_C@_05CFGENGPL@s291?5?$AA@":
	.asciz	"s291 "

	.section	.rdata,"dr",discard,"??_C@_05CHCCGIKC@s292?5?$AA@"
	.globl	"??_C@_05CHCCGIKC@s292?5?$AA@"  # @"??_C@_05CHCCGIKC@s292?5?$AA@"
	.p2align	2, 0x0
"??_C@_05CHCCGIKC@s292?5?$AA@":
	.asciz	"s292 "

	.section	.rdata,"dr",discard,"??_C@_05CGOAACJF@s293?5?$AA@"
	.globl	"??_C@_05CGOAACJF@s293?5?$AA@"  # @"??_C@_05CGOAACJF@s293?5?$AA@"
	.p2align	2, 0x0
"??_C@_05CGOAACJF@s293?5?$AA@":
	.asciz	"s293 "

	.section	.rdata,"dr",discard,"??_C@_05LCMLLHDD@s2101?$AA@"
	.globl	"??_C@_05LCMLLHDD@s2101?$AA@"   # @"??_C@_05LCMLLHDD@s2101?$AA@"
	.p2align	2, 0x0
"??_C@_05LCMLLHDD@s2101?$AA@":
	.asciz	"s2101"

	.section	.rdata,"dr",discard,"??_C@_05JJOGOEPA@s2102?$AA@"
	.globl	"??_C@_05JJOGOEPA@s2102?$AA@"   # @"??_C@_05JJOGOEPA@s2102?$AA@"
	.p2align	2, 0x0
"??_C@_05JJOGOEPA@s2102?$AA@":
	.asciz	"s2102"

	.section	.rdata,"dr",discard,"??_C@_05LDAJNNAE@s2111?$AA@"
	.globl	"??_C@_05LDAJNNAE@s2111?$AA@"   # @"??_C@_05LDAJNNAE@s2111?$AA@"
	.p2align	2, 0x0
"??_C@_05LDAJNNAE@s2111?$AA@":
	.asciz	"s2111"

	.section	.rdata,"dr",discard,"??_C@_05NNLANHKE@s311?5?$AA@"
	.globl	"??_C@_05NNLANHKE@s311?5?$AA@"  # @"??_C@_05NNLANHKE@s311?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NNLANHKE@s311?5?$AA@":
	.asciz	"s311 "

	.section	.rdata,"dr",discard,"??_C@_05NPPGGJPN@s312?5?$AA@"
	.globl	"??_C@_05NPPGGJPN@s312?5?$AA@"  # @"??_C@_05NPPGGJPN@s312?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NPPGGJPN@s312?5?$AA@":
	.asciz	"s312 "

	.section	.rdata,"dr",discard,"??_C@_05NODEADMK@s313?5?$AA@"
	.globl	"??_C@_05NODEADMK@s313?5?$AA@"  # @"??_C@_05NODEADMK@s313?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NODEADMK@s313?5?$AA@":
	.asciz	"s313 "

	.section	.rdata,"dr",discard,"??_C@_05NLHLBFEP@s314?5?$AA@"
	.globl	"??_C@_05NLHLBFEP@s314?5?$AA@"  # @"??_C@_05NLHLBFEP@s314?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NLHLBFEP@s314?5?$AA@":
	.asciz	"s314 "

	.section	.rdata,"dr",discard,"??_C@_05NKLJHPHI@s315?5?$AA@"
	.globl	"??_C@_05NKLJHPHI@s315?5?$AA@"  # @"??_C@_05NKLJHPHI@s315?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NKLJHPHI@s315?5?$AA@":
	.asciz	"s315 "

	.section	.rdata,"dr",discard,"??_C@_05NIPPMBCB@s316?5?$AA@"
	.globl	"??_C@_05NIPPMBCB@s316?5?$AA@"  # @"??_C@_05NIPPMBCB@s316?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NIPPMBCB@s316?5?$AA@":
	.asciz	"s316 "

	.section	.rdata,"dr",discard,"??_C@_05NJDNKLBG@s317?5?$AA@"
	.globl	"??_C@_05NJDNKLBG@s317?5?$AA@"  # @"??_C@_05NJDNKLBG@s317?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NJDNKLBG@s317?5?$AA@":
	.asciz	"s317 "

	.section	.rdata,"dr",discard,"??_C@_05NCGBOMCL@s318?5?$AA@"
	.globl	"??_C@_05NCGBOMCL@s318?5?$AA@"  # @"??_C@_05NCGBOMCL@s318?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NCGBOMCL@s318?5?$AA@":
	.asciz	"s318 "

	.section	.rdata,"dr",discard,"??_C@_05NDKDIGBM@s319?5?$AA@"
	.globl	"??_C@_05NDKDIGBM@s319?5?$AA@"  # @"??_C@_05NDKDIGBM@s319?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NDKDIGBM@s319?5?$AA@":
	.asciz	"s319 "

	.section	.rdata,"dr",discard,"??_C@_05JHHCMFPF@s3110?$AA@"
	.globl	"??_C@_05JHHCMFPF@s3110?$AA@"   # @"??_C@_05JHHCMFPF@s3110?$AA@"
	.p2align	2, 0x0
"??_C@_05JHHCMFPF@s3110?$AA@":
	.asciz	"s3110"

	.section	.rdata,"dr",discard,"??_C@_05IOGJPELE@s3111?$AA@"
	.globl	"??_C@_05IOGJPELE@s3111?$AA@"   # @"??_C@_05IOGJPELE@s3111?$AA@"
	.p2align	2, 0x0
"??_C@_05IOGJPELE@s3111?$AA@":
	.asciz	"s3111"

	.section	.rdata,"dr",discard,"??_C@_05KFEEKHHH@s3112?$AA@"
	.globl	"??_C@_05KFEEKHHH@s3112?$AA@"   # @"??_C@_05KFEEKHHH@s3112?$AA@"
	.p2align	2, 0x0
"??_C@_05KFEEKHHH@s3112?$AA@":
	.asciz	"s3112"

	.section	.rdata,"dr",discard,"??_C@_05LMFPJGDG@s3113?$AA@"
	.globl	"??_C@_05LMFPJGDG@s3113?$AA@"   # @"??_C@_05LMFPJGDG@s3113?$AA@"
	.p2align	2, 0x0
"??_C@_05LMFPJGDG@s3113?$AA@":
	.asciz	"s3113"

	.section	.rdata,"dr",discard,"??_C@_05MPAFHIEK@s321?5?$AA@"
	.globl	"??_C@_05MPAFHIEK@s321?5?$AA@"  # @"??_C@_05MPAFHIEK@s321?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MPAFHIEK@s321?5?$AA@":
	.asciz	"s321 "

	.section	.rdata,"dr",discard,"??_C@_05MNEDMGBD@s322?5?$AA@"
	.globl	"??_C@_05MNEDMGBD@s322?5?$AA@"  # @"??_C@_05MNEDMGBD@s322?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MNEDMGBD@s322?5?$AA@":
	.asciz	"s322 "

	.section	.rdata,"dr",discard,"??_C@_05MMIBKMCE@s323?5?$AA@"
	.globl	"??_C@_05MMIBKMCE@s323?5?$AA@"  # @"??_C@_05MMIBKMCE@s323?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MMIBKMCE@s323?5?$AA@":
	.asciz	"s323 "

	.section	.rdata,"dr",discard,"??_C@_05HHLJBPCP@s331?5?$AA@"
	.globl	"??_C@_05HHLJBPCP@s331?5?$AA@"  # @"??_C@_05HHLJBPCP@s331?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HHLJBPCP@s331?5?$AA@":
	.asciz	"s331 "

	.section	.rdata,"dr",discard,"??_C@_05HFPPKBHG@s332?5?$AA@"
	.globl	"??_C@_05HFPPKBHG@s332?5?$AA@"  # @"??_C@_05HFPPKBHG@s332?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HFPPKBHG@s332?5?$AA@":
	.asciz	"s332 "

	.section	.rdata,"dr",discard,"??_C@_05OKGOCHJG@s341?5?$AA@"
	.globl	"??_C@_05OKGOCHJG@s341?5?$AA@"  # @"??_C@_05OKGOCHJG@s341?5?$AA@"
	.p2align	2, 0x0
"??_C@_05OKGOCHJG@s341?5?$AA@":
	.asciz	"s341 "

	.section	.rdata,"dr",discard,"??_C@_05OICIJJMP@s342?5?$AA@"
	.globl	"??_C@_05OICIJJMP@s342?5?$AA@"  # @"??_C@_05OICIJJMP@s342?5?$AA@"
	.p2align	2, 0x0
"??_C@_05OICIJJMP@s342?5?$AA@":
	.asciz	"s342 "

	.section	.rdata,"dr",discard,"??_C@_05OJOKPDPI@s343?5?$AA@"
	.globl	"??_C@_05OJOKPDPI@s343?5?$AA@"  # @"??_C@_05OJOKPDPI@s343?5?$AA@"
	.p2align	2, 0x0
"??_C@_05OJOKPDPI@s343?5?$AA@":
	.asciz	"s343 "

	.section	.rdata,"dr",discard,"??_C@_05FCNCEAPD@s351?5?$AA@"
	.globl	"??_C@_05FCNCEAPD@s351?5?$AA@"  # @"??_C@_05FCNCEAPD@s351?5?$AA@"
	.p2align	2, 0x0
"??_C@_05FCNCEAPD@s351?5?$AA@":
	.asciz	"s351 "

	.section	.rdata,"dr",discard,"??_C@_05FAJEPOKK@s352?5?$AA@"
	.globl	"??_C@_05FAJEPOKK@s352?5?$AA@"  # @"??_C@_05FAJEPOKK@s352?5?$AA@"
	.p2align	2, 0x0
"??_C@_05FAJEPOKK@s352?5?$AA@":
	.asciz	"s352 "

	.section	.rdata,"dr",discard,"??_C@_05FBFGJEJN@s353?5?$AA@"
	.globl	"??_C@_05FBFGJEJN@s353?5?$AA@"  # @"??_C@_05FBFGJEJN@s353?5?$AA@"
	.p2align	2, 0x0
"??_C@_05FBFGJEJN@s353?5?$AA@":
	.asciz	"s353 "

	.section	.rdata,"dr",discard,"??_C@_05GPJAALLE@s411?5?$AA@"
	.globl	"??_C@_05GPJAALLE@s411?5?$AA@"  # @"??_C@_05GPJAALLE@s411?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GPJAALLE@s411?5?$AA@":
	.asciz	"s411 "

	.section	.rdata,"dr",discard,"??_C@_05GNNGLFON@s412?5?$AA@"
	.globl	"??_C@_05GNNGLFON@s412?5?$AA@"  # @"??_C@_05GNNGLFON@s412?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GNNGLFON@s412?5?$AA@":
	.asciz	"s412 "

	.section	.rdata,"dr",discard,"??_C@_05GMBENPNK@s413?5?$AA@"
	.globl	"??_C@_05GMBENPNK@s413?5?$AA@"  # @"??_C@_05GMBENPNK@s413?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GMBENPNK@s413?5?$AA@":
	.asciz	"s413 "

	.section	.rdata,"dr",discard,"??_C@_05GJFLMJFP@s414?5?$AA@"
	.globl	"??_C@_05GJFLMJFP@s414?5?$AA@"  # @"??_C@_05GJFLMJFP@s414?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GJFLMJFP@s414?5?$AA@":
	.asciz	"s414 "

	.section	.rdata,"dr",discard,"??_C@_05GIJJKDGI@s415?5?$AA@"
	.globl	"??_C@_05GIJJKDGI@s415?5?$AA@"  # @"??_C@_05GIJJKDGI@s415?5?$AA@"
	.p2align	2, 0x0
"??_C@_05GIJJKDGI@s415?5?$AA@":
	.asciz	"s415 "

	.section	.rdata,"dr",discard,"??_C@_05HNCFKEFK@s421?5?$AA@"
	.globl	"??_C@_05HNCFKEFK@s421?5?$AA@"  # @"??_C@_05HNCFKEFK@s421?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HNCFKEFK@s421?5?$AA@":
	.asciz	"s421 "

	.section	.rdata,"dr",discard,"??_C@_05HPGDBKAD@s422?5?$AA@"
	.globl	"??_C@_05HPGDBKAD@s422?5?$AA@"  # @"??_C@_05HPGDBKAD@s422?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HPGDBKAD@s422?5?$AA@":
	.asciz	"s422 "

	.section	.rdata,"dr",discard,"??_C@_05HOKBHADE@s423?5?$AA@"
	.globl	"??_C@_05HOKBHADE@s423?5?$AA@"  # @"??_C@_05HOKBHADE@s423?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HOKBHADE@s423?5?$AA@":
	.asciz	"s423 "

	.section	.rdata,"dr",discard,"??_C@_05HLOOGGLB@s424?5?$AA@"
	.globl	"??_C@_05HLOOGGLB@s424?5?$AA@"  # @"??_C@_05HLOOGGLB@s424?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HLOOGGLB@s424?5?$AA@":
	.asciz	"s424 "

	.section	.rdata,"dr",discard,"??_C@_05MFJJMDDP@s431?5?$AA@"
	.globl	"??_C@_05MFJJMDDP@s431?5?$AA@"  # @"??_C@_05MFJJMDDP@s431?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MFJJMDDP@s431?5?$AA@":
	.asciz	"s431 "

	.section	.rdata,"dr",discard,"??_C@_05MHNPHNGG@s432?5?$AA@"
	.globl	"??_C@_05MHNPHNGG@s432?5?$AA@"  # @"??_C@_05MHNPHNGG@s432?5?$AA@"
	.p2align	2, 0x0
"??_C@_05MHNPHNGG@s432?5?$AA@":
	.asciz	"s432 "

	.section	.rdata,"dr",discard,"??_C@_05FIEOPLIG@s441?5?$AA@"
	.globl	"??_C@_05FIEOPLIG@s441?5?$AA@"  # @"??_C@_05FIEOPLIG@s441?5?$AA@"
	.p2align	2, 0x0
"??_C@_05FIEOPLIG@s441?5?$AA@":
	.asciz	"s441 "

	.section	.rdata,"dr",discard,"??_C@_05FKAIEFNP@s442?5?$AA@"
	.globl	"??_C@_05FKAIEFNP@s442?5?$AA@"  # @"??_C@_05FKAIEFNP@s442?5?$AA@"
	.p2align	2, 0x0
"??_C@_05FKAIEFNP@s442?5?$AA@":
	.asciz	"s442 "

	.section	.rdata,"dr",discard,"??_C@_05FLMKCPOI@s443?5?$AA@"
	.globl	"??_C@_05FLMKCPOI@s443?5?$AA@"  # @"??_C@_05FLMKCPOI@s443?5?$AA@"
	.p2align	2, 0x0
"??_C@_05FLMKCPOI@s443?5?$AA@":
	.asciz	"s443 "

	.section	.rdata,"dr",discard,"??_C@_05OAPCJMOD@s451?5?$AA@"
	.globl	"??_C@_05OAPCJMOD@s451?5?$AA@"  # @"??_C@_05OAPCJMOD@s451?5?$AA@"
	.p2align	2, 0x0
"??_C@_05OAPCJMOD@s451?5?$AA@":
	.asciz	"s451 "

	.section	.rdata,"dr",discard,"??_C@_05OCLECCLK@s452?5?$AA@"
	.globl	"??_C@_05OCLECCLK@s452?5?$AA@"  # @"??_C@_05OCLECCLK@s452?5?$AA@"
	.p2align	2, 0x0
"??_C@_05OCLECCLK@s452?5?$AA@":
	.asciz	"s452 "

	.section	.rdata,"dr",discard,"??_C@_05ODHGEIIN@s453?5?$AA@"
	.globl	"??_C@_05ODHGEIIN@s453?5?$AA@"  # @"??_C@_05ODHGEIIN@s453?5?$AA@"
	.p2align	2, 0x0
"??_C@_05ODHGEIIN@s453?5?$AA@":
	.asciz	"s453 "

	.section	.rdata,"dr",discard,"??_C@_05EKPLFEGI@s471?5?$AA@"
	.globl	"??_C@_05EKPLFEGI@s471?5?$AA@"  # @"??_C@_05EKPLFEGI@s471?5?$AA@"
	.p2align	2, 0x0
"??_C@_05EKPLFEGI@s471?5?$AA@":
	.asciz	"s471 "

	.section	.rdata,"dr",discard,"??_C@_05BCJIEEDO@s481?5?$AA@"
	.globl	"??_C@_05BCJIEEDO@s481?5?$AA@"  # @"??_C@_05BCJIEEDO@s481?5?$AA@"
	.p2align	2, 0x0
"??_C@_05BCJIEEDO@s481?5?$AA@":
	.asciz	"s481 "

	.section	.rdata,"dr",discard,"??_C@_05BANOPKGH@s482?5?$AA@"
	.globl	"??_C@_05BANOPKGH@s482?5?$AA@"  # @"??_C@_05BANOPKGH@s482?5?$AA@"
	.p2align	2, 0x0
"??_C@_05BANOPKGH@s482?5?$AA@":
	.asciz	"s482 "

	.section	.rdata,"dr",discard,"??_C@_05KKCECDFL@s491?5?$AA@"
	.globl	"??_C@_05KKCECDFL@s491?5?$AA@"  # @"??_C@_05KKCECDFL@s491?5?$AA@"
	.p2align	2, 0x0
"??_C@_05KKCECDFL@s491?5?$AA@":
	.asciz	"s491 "

	.section	.rdata,"dr",discard,"??_C@_05BHGEHLGH@s4112?$AA@"
	.globl	"??_C@_05BHGEHLGH@s4112?$AA@"   # @"??_C@_05BHGEHLGH@s4112?$AA@"
	.p2align	2, 0x0
"??_C@_05BHGEHLGH@s4112?$AA@":
	.asciz	"s4112"

	.section	.rdata,"dr",discard,"??_C@_05OHPEKCG@s4113?$AA@"
	.globl	"??_C@_05OHPEKCG@s4113?$AA@"    # @"??_C@_05OHPEKCG@s4113?$AA@"
	.p2align	2, 0x0
"??_C@_05OHPEKCG@s4113?$AA@":
	.asciz	"s4113"

	.section	.rdata,"dr",discard,"??_C@_05EBDONMOB@s4114?$AA@"
	.globl	"??_C@_05EBDONMOB@s4114?$AA@"   # @"??_C@_05EBDONMOB@s4114?$AA@"
	.p2align	2, 0x0
"??_C@_05EBDONMOB@s4114?$AA@":
	.asciz	"s4114"

	.section	.rdata,"dr",discard,"??_C@_05FICFONKA@s4115?$AA@"
	.globl	"??_C@_05FICFONKA@s4115?$AA@"   # @"??_C@_05FICFONKA@s4115?$AA@"
	.p2align	2, 0x0
"??_C@_05FICFONKA@s4115?$AA@":
	.asciz	"s4115"

	.section	.rdata,"dr",discard,"??_C@_05HDAILOGD@s4116?$AA@"
	.globl	"??_C@_05HDAILOGD@s4116?$AA@"   # @"??_C@_05HDAILOGD@s4116?$AA@"
	.p2align	2, 0x0
"??_C@_05HDAILOGD@s4116?$AA@":
	.asciz	"s4116"

	.section	.rdata,"dr",discard,"??_C@_05GKBDIPCC@s4117?$AA@"
	.globl	"??_C@_05GKBDIPCC@s4117?$AA@"   # @"??_C@_05GKBDIPCC@s4117?$AA@"
	.p2align	2, 0x0
"??_C@_05GKBDIPCC@s4117?$AA@":
	.asciz	"s4117"

	.section	.rdata,"dr",discard,"??_C@_05DOAPJGPN@s4121?$AA@"
	.globl	"??_C@_05DOAPJGPN@s4121?$AA@"   # @"??_C@_05DOAPJGPN@s4121?$AA@"
	.p2align	2, 0x0
"??_C@_05DOAPJGPN@s4121?$AA@":
	.asciz	"s4121"

	.section	.rdata,"dr",discard,"??_C@_03IDIMFPN@va?7?$AA@"
	.globl	"??_C@_03IDIMFPN@va?7?$AA@"     # @"??_C@_03IDIMFPN@va?7?$AA@"
	.p2align	2, 0x0
"??_C@_03IDIMFPN@va?7?$AA@":
	.asciz	"va\t"

	.section	.rdata,"dr",discard,"??_C@_05DMCMEDIF@vag?5?5?$AA@"
	.globl	"??_C@_05DMCMEDIF@vag?5?5?$AA@" # @"??_C@_05DMCMEDIF@vag?5?5?$AA@"
	.p2align	2, 0x0
"??_C@_05DMCMEDIF@vag?5?5?$AA@":
	.asciz	"vag  "

	.section	.rdata,"dr",discard,"??_C@_05ODFHIDEN@vas?5?5?$AA@"
	.globl	"??_C@_05ODFHIDEN@vas?5?5?$AA@" # @"??_C@_05ODFHIDEN@vas?5?5?$AA@"
	.p2align	2, 0x0
"??_C@_05ODFHIDEN@vas?5?5?$AA@":
	.asciz	"vas  "

	.section	.rdata,"dr",discard,"??_C@_05LEOAGPCB@vif?5?5?$AA@"
	.globl	"??_C@_05LEOAGPCB@vif?5?5?$AA@" # @"??_C@_05LEOAGPCB@vif?5?5?$AA@"
	.p2align	2, 0x0
"??_C@_05LEOAGPCB@vif?5?5?$AA@":
	.asciz	"vif  "

	.section	.rdata,"dr",discard,"??_C@_05IJAJMNEN@vpv?5?5?$AA@"
	.globl	"??_C@_05IJAJMNEN@vpv?5?5?$AA@" # @"??_C@_05IJAJMNEN@vpv?5?5?$AA@"
	.p2align	2, 0x0
"??_C@_05IJAJMNEN@vpv?5?5?$AA@":
	.asciz	"vpv  "

	.section	.rdata,"dr",discard,"??_C@_05HMIJGLIN@vtv?5?5?$AA@"
	.globl	"??_C@_05HMIJGLIN@vtv?5?5?$AA@" # @"??_C@_05HMIJGLIN@vtv?5?5?$AA@"
	.p2align	2, 0x0
"??_C@_05HMIJGLIN@vtv?5?5?$AA@":
	.asciz	"vtv  "

	.section	.rdata,"dr",discard,"??_C@_05OFNLBPD@vpvtv?$AA@"
	.globl	"??_C@_05OFNLBPD@vpvtv?$AA@"    # @"??_C@_05OFNLBPD@vpvtv?$AA@"
	.p2align	2, 0x0
"??_C@_05OFNLBPD@vpvtv?$AA@":
	.asciz	"vpvtv"

	.section	.rdata,"dr",discard,"??_C@_05HDCKEFLG@vpvts?$AA@"
	.globl	"??_C@_05HDCKEFLG@vpvts?$AA@"   # @"??_C@_05HDCKEFLG@vpvts?$AA@"
	.p2align	2, 0x0
"??_C@_05HDCKEFLG@vpvts?$AA@":
	.asciz	"vpvts"

	.section	.rdata,"dr",discard,"??_C@_05JFEBJCP@vpvpv?$AA@"
	.globl	"??_C@_05JFEBJCP@vpvpv?$AA@"    # @"??_C@_05JFEBJCP@vpvpv?$AA@"
	.p2align	2, 0x0
"??_C@_05JFEBJCP@vpvpv?$AA@":
	.asciz	"vpvpv"

	.section	.rdata,"dr",discard,"??_C@_05PLNNBHDD@vtvtv?$AA@"
	.globl	"??_C@_05PLNNBHDD@vtvtv?$AA@"   # @"??_C@_05PLNNBHDD@vtvtv?$AA@"
	.p2align	2, 0x0
"??_C@_05PLNNBHDD@vtvtv?$AA@":
	.asciz	"vtvtv"

	.section	.rdata,"dr",discard,"??_C@_05CMNDDJDG@vsumr?$AA@"
	.globl	"??_C@_05CMNDDJDG@vsumr?$AA@"   # @"??_C@_05CMNDDJDG@vsumr?$AA@"
	.p2align	2, 0x0
"??_C@_05CMNDDJDG@vsumr?$AA@":
	.asciz	"vsumr"

	.section	.rdata,"dr",discard,"??_C@_05NCEAFNKA@vdotr?$AA@"
	.globl	"??_C@_05NCEAFNKA@vdotr?$AA@"   # @"??_C@_05NCEAFNKA@vdotr?$AA@"
	.p2align	2, 0x0
"??_C@_05NCEAFNKA@vdotr?$AA@":
	.asciz	"vdotr"

	.section	.rdata,"dr",discard,"??_C@_05NBAAOLGE@vbor?5?$AA@"
	.globl	"??_C@_05NBAAOLGE@vbor?5?$AA@"  # @"??_C@_05NBAAOLGE@vbor?5?$AA@"
	.p2align	2, 0x0
"??_C@_05NBAAOLGE@vbor?5?$AA@":
	.asciz	"vbor "

	.section	.rdata,"dr",discard,"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S000\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S111\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@"
	.globl	"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@" # @"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@"
	.p2align	3, 0x0
"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@":
	.asciz	"S1111\t %.2f \t\t "

	.section	.rdata,"dr",discard,"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S112\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@"
	.globl	"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@" # @"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@"
	.p2align	3, 0x0
"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@":
	.asciz	"S1112\t %.2f \t\t "

	.section	.rdata,"dr",discard,"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S113\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1113\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S114\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S115\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1115\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S116\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S118\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@"
	.globl	"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@" # @"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@"
	.p2align	3, 0x0
"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@":
	.asciz	"S119\t %.2f \t\t "

	.section	.rdata,"dr",discard,"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@"
	.globl	"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@" # @"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@"
	.p2align	3, 0x0
"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@":
	.asciz	"S1119\t %.2f \t\t "

	.section	.rdata,"dr",discard,"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S121\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S122\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S123\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S124\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S125\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S126\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S127\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S128\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S131\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S132\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S141\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S151\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S152\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S161\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1161\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S162\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S171\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S172\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S173\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S174\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S175\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S176\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S211\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S212\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1213\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S221\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1221\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S222\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S231\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S232\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1232\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S233\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2233\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S235\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S241\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S242\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S243\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S244\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1244\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2244\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S251\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1251\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2251\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S3251\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S252\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S253\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S254\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S255\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S256\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S257\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S258\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S261\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S271\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S272\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S273\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S274\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S275\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2275\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S276\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S277\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S278\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S279\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1279\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2710\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2711\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2712\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S281\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1281\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S291\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S292\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S293\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2101\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2102\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S2111\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S311\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S31111\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S312\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S313\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S314\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S315\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S316\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S317\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S318\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S319\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S3110\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S13110\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S3111\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S3112\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S3113\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S321\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S322\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S323\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S331\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S332\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S341\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S342\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S343\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S351\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1351\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S352\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S353\t %.2f \t\t"

	.bss
	.globl	xx                              # @xx
	.p2align	3, 0x0
xx:
	.quad	0

	.globl	yy                              # @yy
	.p2align	3, 0x0
yy:
	.quad	0

	.section	.rdata,"dr",discard,"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S421\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S1421\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S422\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S423\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S424\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S431\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S441\t %.2f \t\t"

	.bss
	.globl	indx                            # @indx
	.p2align	4, 0x0
indx:
	.zero	128000

	.section	.rdata,"dr",discard,"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S442\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S443\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S451\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S452\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S453\t %.2f \t\t"

	.bss
	.globl	x                               # @x
	.p2align	4, 0x0
x:
	.zero	128000

	.section	.rdata,"dr",discard,"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S471\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S481\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S482\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S491\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S4112\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S4113\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S4114\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S4115\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S4116\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S4117\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"S4121\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"va\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vag\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vas\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vif\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vpv\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vtv\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vpvtv\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vpvts\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vpvpv\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vtvtv\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vsumr\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vdotr\t %.2f \t\t"

	.section	.rdata,"dr",discard,"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@"
	.globl	"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@" # @"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@"
	.p2align	3, 0x0
"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@":
	.asciz	"vbor\t %.2f \t\t"

	.bss
	.globl	temp_int                        # @temp_int
	.p2align	2, 0x0
temp_int:
	.long	0                               # 0x0

	.globl	tt                              # @tt
	.p2align	4, 0x0
tt:
	.zero	262144

	.section	.rdata,"dr"
.Lstr:                                  # @str
	.asciz	"VERIFY OK"

.Lstr.1:                                # @str.1
	.asciz	"Loop \t Time(Sec) \t Checksum "

	.p2align	3, 0x0                          # @switch.table.s442
.Lswitch.table.s442:
	.quad	c
	.quad	d
	.quad	e

	.section	.drectve,"yni"
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
	.ascii	" /FAILIFMISMATCH:\"_MSC_VER=1900\""
	.ascii	" /FAILIFMISMATCH:\"_ITERATOR_DEBUG_LEVEL=0\""
	.ascii	" /FAILIFMISMATCH:\"RuntimeLibrary=MT_StaticRelease\""
	.ascii	" /DEFAULTLIB:libcpmt.lib"
	.ascii	" /alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"
	.ascii	" /FAILIFMISMATCH:\"annotate_string=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_vector=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_optional=0\""
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp1-.Ltmp0                   # Subsection size
.Ltmp0:
	.short	.Ltmp3-.Ltmp2                   # Record length
.Ltmp2:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.asciz	"C:\\work\\llvm-profitability-research\\results\\r1\\EXP-20261107-R12-corpus\\tsvc_s2233\\tsvc_s2233.C.s" # Object name
	.p2align	2, 0x0
.Ltmp3:
	.short	.Ltmp5-.Ltmp4                   # Record length
.Ltmp4:
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
.Ltmp5:
.Ltmp1:
	.p2align	2, 0x0
	.globl	_fltused
