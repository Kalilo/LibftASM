	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_lstmap
	.align	4, 0x90
_ft_lstmap:                             ## @ft_lstmap
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB0_2
## BB#1:
	cmpq	$0, -24(%rbp)
	jne	LBB0_3
LBB0_2:
	movq	$0, -8(%rbp)
	jmp	LBB0_10
LBB0_3:
	movq	$0, -32(%rbp)
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	LBB0_9
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_ft_lstnew
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         ## 8-byte Reload
	callq	*%rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_ft_find_last
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	%rdi, 16(%rax)
LBB0_8:                                 ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB0_4
LBB0_9:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_10:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_ft_find_last:                          ## @ft_find_last
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB1_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB1_6
LBB1_2:
	jmp	LBB1_3
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB1_5
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB1_3
LBB1_5:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB1_6:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
