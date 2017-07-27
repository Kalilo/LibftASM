	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strmap
	.align	4, 0x90
_ft_strmap:                             ## @ft_strmap
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
	movl	$0, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB0_2
## BB#1:
	cmpq	$0, -24(%rbp)
	jne	LBB0_3
LBB0_2:
	movq	$0, -8(%rbp)
	jmp	LBB0_12
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_4
LBB0_6:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	LBB0_8
## BB#7:
	movq	$0, -8(%rbp)
	jmp	LBB0_12
LBB0_8:
	movl	$0, -28(%rbp)
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_11
## BB#10:                               ##   in Loop: Header=BB0_9 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %edi
	callq	*%rax
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	movl	-28(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -28(%rbp)
	jmp	LBB0_9
LBB0_11:
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_12:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
