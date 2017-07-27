	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strncmp
	.align	4, 0x90
_ft_strncmp:                            ## @ft_strncmp
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
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          ## 1-byte Spill
	je	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          ## 1-byte Spill
	je	LBB0_4
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setb	%cl
	movb	%cl, -41(%rbp)          ## 1-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-41(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_5
	jmp	LBB0_8
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	LBB0_7
## BB#6:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	%dl, %edi
	movsbl	(%rcx,%rax), %esi
	callq	_ft_diff
	movl	%eax, -4(%rbp)
	jmp	LBB0_16
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB0_1
LBB0_8:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_11
## BB#9:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	LBB0_11
## BB#10:
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	_ft_diff
	movl	%eax, -4(%rbp)
	jmp	LBB0_16
LBB0_11:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_14
## BB#12:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	LBB0_14
## BB#13:
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	callq	_ft_diff
	movl	%eax, -4(%rbp)
	jmp	LBB0_16
LBB0_14:
	jmp	LBB0_15
LBB0_15:
	movl	$0, -4(%rbp)
LBB0_16:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_ft_diff:                               ## @ft_diff
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
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-1(%rbp), %esi
	cmpl	$0, %esi
	jge	LBB1_2
## BB#1:
	movsbl	-1(%rbp), %eax
	addl	$256, %eax              ## imm = 0x100
	movl	%eax, -12(%rbp)
	jmp	LBB1_3
LBB1_2:
	movsbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)
LBB1_3:
	movsbl	-2(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB1_5
## BB#4:
	movsbl	-2(%rbp), %eax
	addl	$256, %eax              ## imm = 0x100
	movl	%eax, -8(%rbp)
	jmp	LBB1_6
LBB1_5:
	movsbl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)
LBB1_6:
	movl	-12(%rbp), %eax
	subl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
