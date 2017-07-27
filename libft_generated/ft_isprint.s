	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_isprint
	.align	4, 0x90
_ft_isprint:                            ## @ft_isprint
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
	movb	%al, %cl
	movl	$32, %eax
	movl	%edi, -4(%rbp)
	cmpl	-4(%rbp), %eax
	movb	%cl, -5(%rbp)           ## 1-byte Spill
	jg	LBB0_2
## BB#1:
	cmpl	$126, -4(%rbp)
	setle	%al
	movb	%al, -5(%rbp)           ## 1-byte Spill
LBB0_2:
	movb	-5(%rbp), %al           ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
