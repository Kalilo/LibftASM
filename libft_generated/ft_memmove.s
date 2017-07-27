	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_memmove
	.align	4, 0x90
_ft_memmove:                            ## @ft_memmove
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	cmpq	-40(%rbp), %rdx
	jbe	LBB0_5
## BB#1:
	movq	$-1, -32(%rbp)
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	cmpq	-24(%rbp), %rax
	jae	LBB0_4
## BB#3:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	jmp	LBB0_2
LBB0_4:
	jmp	LBB0_11
LBB0_5:
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	LBB0_10
## BB#6:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jbe	LBB0_9
## BB#8:                                ##   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	jmp	LBB0_7
LBB0_9:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
LBB0_10:
	jmp	LBB0_11
LBB0_11:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
