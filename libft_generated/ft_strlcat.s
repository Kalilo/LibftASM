	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strlcat
	.align	4, 0x90
_ft_strlcat:                            ## @ft_strlcat
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	callq	_ft_memchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB0_2
## BB#1:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	callq	_ft_strlen
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -8(%rbp)
	jmp	LBB0_8
LBB0_2:
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_ft_strlen
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	subq	$1, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -73(%rbp)          ## 1-byte Spill
	jae	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -73(%rbp)          ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	movb	-73(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_6
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	LBB0_3
LBB0_7:
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_8:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
