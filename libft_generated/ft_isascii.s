	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_isascii
	.align	4, 0x90
_ft_isascii:                            ## @ft_isascii
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
	xorl	%eax, %eax
	movl	%edi, -8(%rbp)
	cmpl	-8(%rbp), %eax
	jg	LBB0_3
## BB#1:
	cmpl	$127, -8(%rbp)
	jg	LBB0_3
## BB#2:
	movl	$1, -4(%rbp)
	jmp	LBB0_4
LBB0_3:
	movl	$0, -4(%rbp)
LBB0_4:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
