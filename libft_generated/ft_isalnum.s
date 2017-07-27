	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_isalnum
	.align	4, 0x90
_ft_isalnum:                            ## @ft_isalnum
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
	movl	$48, %eax
	movl	%edi, -8(%rbp)
	cmpl	-8(%rbp), %eax
	jg	LBB0_3
## BB#1:
	cmpl	$57, -8(%rbp)
	jg	LBB0_3
## BB#2:
	movl	$1, -4(%rbp)
	jmp	LBB0_10
LBB0_3:
	movl	$65, %eax
	cmpl	-8(%rbp), %eax
	jg	LBB0_5
## BB#4:
	cmpl	$90, -8(%rbp)
	jle	LBB0_7
LBB0_5:
	movl	$97, %eax
	cmpl	-8(%rbp), %eax
	jg	LBB0_8
## BB#6:
	cmpl	$122, -8(%rbp)
	jg	LBB0_8
LBB0_7:
	movl	$1, -4(%rbp)
	jmp	LBB0_10
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	movl	$0, -4(%rbp)
LBB0_10:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
