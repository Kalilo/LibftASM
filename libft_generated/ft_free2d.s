	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_free2d
	.align	4, 0x90
_ft_free2d:                             ## @ft_free2d
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB0_2
## BB#1:
	jmp	LBB0_6
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	_free
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -12(%rbp)
	jmp	LBB0_3
LBB0_5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
