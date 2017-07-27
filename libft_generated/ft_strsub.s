	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strsub
	.align	4, 0x90
_ft_strsub:                             ## @ft_strsub
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, -44(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB0_2
## BB#1:
	cmpq	$0, -32(%rbp)
	jne	LBB0_3
LBB0_2:
	movq	$0, -8(%rbp)
	jmp	LBB0_11
LBB0_3:
	movq	-32(%rbp), %rdi
	callq	_ft_strnew
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	LBB0_5
## BB#4:
	movq	$0, -8(%rbp)
	jmp	LBB0_11
LBB0_5:
	jmp	LBB0_6
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -45(%rbp)          ## 1-byte Spill
	jae	LBB0_8
## BB#7:                                ##   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	setne	%sil
	movb	%sil, -45(%rbp)         ## 1-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_6 Depth=1
	movb	-45(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_9
	jmp	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_6
LBB0_10:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
