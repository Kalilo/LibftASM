	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_lstnew
	.align	4, 0x90
_ft_lstnew:                             ## @ft_lstnew
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
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	LBB0_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB0_11
LBB0_2:
	movq	-24(%rbp), %rdi
	callq	_malloc
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, %rax
	jne	LBB0_4
## BB#3:
	movq	$0, -8(%rbp)
	jmp	LBB0_11
LBB0_4:
	cmpq	$0, -16(%rbp)
	jne	LBB0_6
## BB#5:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	jmp	LBB0_7
LBB0_6:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ft_memcpy
	movq	%rax, -40(%rbp)         ## 8-byte Spill
LBB0_7:
	cmpq	$0, -16(%rbp)
	je	LBB0_9
## BB#8:
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB0_10
LBB0_9:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	jmp	LBB0_10
LBB0_10:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
