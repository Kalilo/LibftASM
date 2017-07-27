	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strmapi
	.align	4, 0x90
_ft_strmapi:                            ## @ft_strmapi
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
	movl	$-1, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB0_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB0_8
LBB0_2:
	movq	-16(%rbp), %rdi
	callq	_ft_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	LBB0_4
## BB#3:
	movq	$0, -8(%rbp)
	jmp	LBB0_8
LBB0_4:
	jmp	LBB0_5
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edi
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	callq	*%rax
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	jmp	LBB0_5
LBB0_7:
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_8:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
