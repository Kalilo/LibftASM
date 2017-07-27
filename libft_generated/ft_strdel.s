	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strdel
	.align	4, 0x90
_ft_strdel:                             ## @ft_strdel
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	LBB0_2
## BB#1:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB0_3
LBB0_2:
	jmp	LBB0_4
LBB0_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
LBB0_4:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
