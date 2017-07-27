	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_itoa_base
	.align	4, 0x90
_ft_itoa_base:                          ## @ft_itoa_base
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$40, %eax
	movl	%eax, %ecx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movslq	-12(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movslq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	$1, -48(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	LBB0_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB0_14
LBB0_2:
	cmpl	$2, -16(%rbp)
	jl	LBB0_4
## BB#3:
	cmpl	$16, -16(%rbp)
	jle	LBB0_5
LBB0_4:
	movq	$0, -8(%rbp)
	jmp	LBB0_14
LBB0_5:
	leaq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$32, %rcx
	movq	%rax, %rdx
	addq	$16, %rdx
	movl	-16(%rbp), %esi
	movq	%rcx, %rdi
	movl	%esi, -60(%rbp)         ## 4-byte Spill
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	-60(%rbp), %ecx         ## 4-byte Reload
	callq	_neg_case
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cqto
	idivq	-48(%rbp)
	movslq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	LBB0_8
## BB#7:                                ##   in Loop: Header=BB0_6 Depth=1
	movslq	-16(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB0_6
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	jle	LBB0_13
## BB#10:                               ##   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rax
	cqto
	idivq	-48(%rbp)
	cqto
	idivq	-32(%rbp)
	movq	_ft_itoa_base.b(%rip), %rcx
	movb	(%rcx,%rdx), %sil
	movl	-40(%rbp), %edi
	movl	%edi, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rax
	cqto
	idivq	-48(%rbp)
	imulq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movl	-40(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -40(%rbp)
	cmpq	$1, -48(%rbp)
	jne	LBB0_12
## BB#11:                               ##   in Loop: Header=BB0_9 Depth=1
	movq	$0, -48(%rbp)
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rax
	movslq	-16(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	%rax, -48(%rbp)
	jmp	LBB0_9
LBB0_13:
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-24(%rbp), %rcx
	movq	%rcx, -8(%rbp)
LBB0_14:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_neg_case:                              ## @neg_case
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, (%rdx)
	jge	LBB1_4
## BB#1:
	movq	-24(%rbp), %rax
	imulq	$-1, (%rax), %rcx
	movq	%rcx, (%rax)
	cmpl	$10, -28(%rbp)
	jne	LBB1_3
## BB#2:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movb	$45, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB1_3:
	jmp	LBB1_4
LBB1_4:
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.align	3                       ## @ft_itoa_base.b
_ft_itoa_base.b:
	.quad	L_.str

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0123456789ABCDEF"


.subsections_via_symbols
