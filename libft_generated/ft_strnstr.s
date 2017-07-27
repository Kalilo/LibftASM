	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strnstr
	.align	4, 0x90
_ft_strnstr:                            ## @ft_strnstr
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	jne	LBB0_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_11
LBB0_2:
	movq	-24(%rbp), %rdi
	callq	_ft_strlen
	movq	%rax, -40(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          ## 1-byte Spill
	je	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	cmpq	-40(%rbp), %rax
	setae	%dl
	movb	%dl, -41(%rbp)          ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	movb	-41(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_6
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	LBB0_9
## BB#7:                                ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	_ft_memcmp
	cmpl	$0, %eax
	jne	LBB0_9
## BB#8:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_11
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB0_3
LBB0_10:
	movq	$0, -8(%rbp)
LBB0_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
