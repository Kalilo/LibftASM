	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_memcmp
	.align	4, 0x90
_ft_memcmp:                             ## @ft_memcmp
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	LBB0_5
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	LBB0_4
## BB#3:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB0_1
LBB0_5:
	movl	$0, -4(%rbp)
LBB0_6:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
