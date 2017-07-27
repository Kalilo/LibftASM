	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strclr
	.align	4, 0x90
_ft_strclr:                             ## @ft_strclr
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
	movq	%rdi, -8(%rbp)
	movl	$-1, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB0_2
## BB#1:
	jmp	LBB0_5
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	LBB0_3
LBB0_5:
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
