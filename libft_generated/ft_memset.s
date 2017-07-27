	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_memset
	.align	4, 0x90
_ft_memset:                             ## @ft_memset
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	cmpl	$0, -12(%rbp)
	jge	LBB0_2
## BB#1:
	movl	$256, %eax              ## imm = 0x100
	subl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	jmp	LBB0_3
LBB0_5:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
