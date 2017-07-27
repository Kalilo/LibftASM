	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_toupper
	.align	4, 0x90
_ft_toupper:                            ## @ft_toupper
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
	movl	$97, %eax
	movl	%edi, -8(%rbp)
	cmpl	-8(%rbp), %eax
	jg	LBB0_3
## BB#1:
	cmpl	$122, -8(%rbp)
	jg	LBB0_3
## BB#2:
	movl	-8(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_4
LBB0_3:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_4:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
