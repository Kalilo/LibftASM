	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strnequ
	.align	4, 0x90
_ft_strnequ:                            ## @ft_strnequ
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
	cmpq	$0, -16(%rbp)
	je	LBB0_2
## BB#1:
	cmpq	$0, -24(%rbp)
	jne	LBB0_3
LBB0_2:
	movl	$0, -4(%rbp)
	jmp	LBB0_16
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          ## 1-byte Spill
	je	LBB0_7
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          ## 1-byte Spill
	je	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setb	%cl
	movb	%cl, -41(%rbp)          ## 1-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	movb	-41(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_8
	jmp	LBB0_11
LBB0_8:                                 ##   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	LBB0_10
## BB#9:
	movl	$0, -4(%rbp)
	jmp	LBB0_16
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB0_4
LBB0_11:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	LBB0_15
## BB#12:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	LBB0_14
## BB#13:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_15
LBB0_14:
	movl	$0, -4(%rbp)
	jmp	LBB0_16
LBB0_15:
	movl	$1, -4(%rbp)
LBB0_16:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
