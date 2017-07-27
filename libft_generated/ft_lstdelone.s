	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_lstdelone
	.align	4, 0x90
_ft_lstdelone:                          ## @ft_lstdelone
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
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rax         ## 8-byte Reload
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
