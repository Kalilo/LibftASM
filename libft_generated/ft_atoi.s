	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_atoi
	.align	4, 0x90
_ft_atoi:                               ## @ft_atoi
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
	movl	$0, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -16(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$32, %esi
	movb	%al, -21(%rbp)          ## 1-byte Spill
	je	LBB0_7
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movb	$1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$9, %esi
	movb	%al, -21(%rbp)          ## 1-byte Spill
	je	LBB0_7
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movb	$1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$10, %esi
	movb	%al, -21(%rbp)          ## 1-byte Spill
	je	LBB0_7
## BB#4:                                ##   in Loop: Header=BB0_1 Depth=1
	movb	$1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$13, %esi
	movb	%al, -21(%rbp)          ## 1-byte Spill
	je	LBB0_7
## BB#5:                                ##   in Loop: Header=BB0_1 Depth=1
	movb	$1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$11, %esi
	movb	%al, -21(%rbp)          ## 1-byte Spill
	je	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$12, %edx
	sete	%sil
	movb	%sil, -21(%rbp)         ## 1-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-21(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_8
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_9:
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	je	LBB0_11
## BB#10:
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$43, %edx
	jne	LBB0_12
LBB0_11:
	movl	$1, %eax
	movl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movsbl	(%rsi,%rdx), %edi
	cmpl	$45, %edi
	cmovel	%ecx, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
LBB0_12:
	jmp	LBB0_13
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movsbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -22(%rbp)          ## 1-byte Spill
	jg	LBB0_15
## BB#14:                               ##   in Loop: Header=BB0_13 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$57, %edx
	setle	%sil
	movb	%sil, -22(%rbp)         ## 1-byte Spill
LBB0_15:                                ##   in Loop: Header=BB0_13 Depth=1
	movb	-22(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_16
	jmp	LBB0_17
LBB0_16:                                ##   in Loop: Header=BB0_13 Depth=1
	imull	$10, -20(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	subl	$48, %esi
	addl	%esi, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_13
LBB0_17:
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
