	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_lstadd
	.align	4, 0x90
_ft_lstadd:                             ## @ft_lstadd
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	LBB0_2
## BB#1:
	cmpq	$0, -16(%rbp)
	jne	LBB0_3
LBB0_2:
	jmp	LBB0_4
LBB0_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
LBB0_4:
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
