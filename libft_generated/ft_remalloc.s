	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_remalloc
	.align	4, 0x90
_ft_remalloc:                           ## @ft_remalloc
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$50, %rsi
	movq	%rsi, %rdi
	callq	_ft_strnew
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jbe	LBB0_2
## BB#1:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_ft_strcpy
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
LBB0_2:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
