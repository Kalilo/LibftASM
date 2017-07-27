	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strjoin
	.align	4, 0x90
_ft_strjoin:                            ## @ft_strjoin
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
	cmpq	$0, -16(%rbp)
	jne	LBB0_3
## BB#1:
	cmpq	$0, -24(%rbp)
	je	LBB0_3
## BB#2:
	movq	-24(%rbp), %rdi
	callq	_ft_strdup
	movq	%rax, -8(%rbp)
	jmp	LBB0_20
LBB0_3:
	cmpq	$0, -16(%rbp)
	je	LBB0_6
## BB#4:
	cmpq	$0, -24(%rbp)
	jne	LBB0_6
## BB#5:
	movq	-16(%rbp), %rdi
	callq	_ft_strdup
	movq	%rax, -8(%rbp)
	jmp	LBB0_20
LBB0_6:
	cmpq	$0, -16(%rbp)
	jne	LBB0_9
## BB#7:
	cmpq	$0, -24(%rbp)
	jne	LBB0_9
## BB#8:
	movq	$0, -8(%rbp)
	jmp	LBB0_20
LBB0_9:
	jmp	LBB0_10
LBB0_10:
	jmp	LBB0_11
LBB0_11:
	movq	-16(%rbp), %rdi
	callq	_ft_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_ft_strlen
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	callq	_ft_strnew
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	LBB0_13
## BB#12:
	movq	$0, -8(%rbp)
	jmp	LBB0_20
LBB0_13:
	movl	$-1, -36(%rbp)
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	LBB0_16
## BB#15:                               ##   in Loop: Header=BB0_14 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%esi, %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	jmp	LBB0_14
LBB0_16:
	jmp	LBB0_17
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	LBB0_19
## BB#18:                               ##   in Loop: Header=BB0_17 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%esi, %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	jmp	LBB0_17
LBB0_19:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_20:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
