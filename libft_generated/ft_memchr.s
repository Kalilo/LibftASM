	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_memchr
	.align	4, 0x90
_ft_memchr:                             ## @ft_memchr
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	$-1, -48(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	cmpq	-32(%rbp), %rax
	jae	LBB0_5
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	-20(%rbp), %esi
	movb	%sil, %dil
	movzbl	%dil, %esi
	cmpl	%esi, %edx
	jne	LBB0_4
## BB#3:
	movq	-48(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_5:
	movq	$0, -8(%rbp)
LBB0_6:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
