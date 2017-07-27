	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_memccpy
	.align	4, 0x90
_ft_memccpy:                            ## @ft_memccpy
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
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	LBB0_5
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	-28(%rbp), %esi
	jne	LBB0_4
## BB#3:
	movq	-48(%rbp), %rax
	addq	$1, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	LBB0_1
LBB0_5:
	movq	$0, -8(%rbp)
LBB0_6:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
