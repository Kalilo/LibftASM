	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strstr
	.align	4, 0x90
_ft_strstr:                             ## @ft_strstr
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$0, %eax
	jne	LBB0_3
## BB#1:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB0_3
## BB#2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_14
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_6 Depth 2
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_13
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	$0, -32(%rbp)
LBB0_6:                                 ##   Parent Loop BB0_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -33(%rbp)          ## 1-byte Spill
	je	LBB0_8
## BB#7:                                ##   in Loop: Header=BB0_6 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	-28(%rbp), %esi
	addl	-32(%rbp), %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -33(%rbp)         ## 1-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_6 Depth=2
	movb	-33(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_9
	jmp	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_6
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	LBB0_12
## BB#11:
	movslq	-28(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_14
LBB0_12:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_4
LBB0_13:
	movq	$0, -8(%rbp)
LBB0_14:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
