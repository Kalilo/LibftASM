	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_memalloc
	.align	4, 0x90
_ft_memalloc:                           ## @ft_memalloc
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	LBB0_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB0_3
LBB0_2:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ft_bzero
	movq	-24(%rbp), %rsi
	movq	%rsi, -8(%rbp)
LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
