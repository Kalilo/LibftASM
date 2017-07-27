	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strequ
	.align	4, 0x90
_ft_strequ:                             ## @ft_strequ
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
	movl	$0, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB0_2
## BB#1:
	cmpq	$0, -24(%rbp)
	jne	LBB0_3
LBB0_2:
	movl	$0, -4(%rbp)
	jmp	LBB0_14
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -29(%rbp)          ## 1-byte Spill
	je	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -29(%rbp)         ## 1-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	movb	-29(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_7
	jmp	LBB0_10
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	LBB0_9
## BB#8:
	movl	$0, -4(%rbp)
	jmp	LBB0_14
LBB0_9:                                 ##   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_4
LBB0_10:
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	LBB0_12
## BB#11:
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_13
LBB0_12:
	movl	$0, -4(%rbp)
	jmp	LBB0_14
LBB0_13:
	movl	$1, -4(%rbp)
LBB0_14:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
