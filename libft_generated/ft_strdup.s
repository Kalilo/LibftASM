	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strdup
	.align	4, 0x90
_ft_strdup:                             ## @ft_strdup
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp; {
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp; reserve 2 var
	movq	%rdi, -16(%rbp); set s1
	movq	$0, -24(%rbp); k = 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax; load k
	movq	-16(%rbp), %rcx; load s1
	movsbl	(%rcx,%rax), %edx; load s1[k]
	cmpl	$0, %edx; break if (s1[k] == 0)
	je	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax; load k
	addq	$1, %rax; inc k
	movq	%rax, -24(%rbp); save k
	jmp	LBB0_1; loop
LBB0_3:
	movq	-24(%rbp), %rax; load k
	addq	$1, %rax; inc k
	movq	%rax, %rdi; save k
	callq	_malloc; malloc
	movq	%rax, -32(%rbp); save s
	cmpq	$0, %rax; if (s == NULL)
	jne	LBB0_5; return
## BB#4:
	movq	$0, -8(%rbp); init copy
	jmp	LBB0_9
LBB0_5:
	jmp	LBB0_6
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp); cmp k, 0
	jbe	LBB0_8
## BB#7:                                ##   in Loop: Header=BB0_6 Depth=1
	movq	-24(%rbp), %rax; load k
	movq	-16(%rbp), %rcx; load s1
	movb	(%rcx,%rax), %dl; load s1[k]
	movq	-24(%rbp), %rax; load k
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB0_6
LBB0_8:
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp; }
	retq
	.cfi_endproc


.subsections_via_symbols
