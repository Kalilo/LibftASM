	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_striteri
	.align	4, 0x90
_ft_striteri:                           ## @ft_striteri
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	LBB0_2
## BB#1:
	cmpq	$0, -16(%rbp)
	jne	LBB0_3
LBB0_2:
	jmp	LBB0_6
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edi
	movslq	-20(%rbp), %rcx
	addq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	*%rax
	jmp	LBB0_4
LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
