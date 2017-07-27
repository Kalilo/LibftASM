	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strtrim
	.align	4, 0x90
_ft_strtrim:                            ## @ft_strtrim
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB0_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB0_8
LBB0_2:
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ft_strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	LBB0_4
## BB#3:
	movq	$0, -8(%rbp)
	jmp	LBB0_8
LBB0_4:
	jmp	LBB0_5
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_5 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	jmp	LBB0_5
LBB0_7:
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-24(%rbp), %rdi
	callq	_ft_strtrim_start
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ft_str_rev
	movq	%rax, %rdi
	callq	_ft_strtrim_start
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ft_str_rev
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_8:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_ft_strtrim_start:                      ## @ft_strtrim_start
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$9, %esi
	movb	%al, -17(%rbp)          ## 1-byte Spill
	je	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movb	$1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$10, %esi
	movb	%al, -17(%rbp)          ## 1-byte Spill
	je	LBB1_4
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -17(%rbp)         ## 1-byte Spill
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movb	-17(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_5
	jmp	LBB1_6
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB1_1
LBB1_6:
	jmp	LBB1_7
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB1_9
## BB#8:                                ##   in Loop: Header=BB1_7 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -12(%rbp)
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -16(%rbp)
	jmp	LBB1_7
LBB1_9:
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_ft_str_rev:                            ## @ft_str_rev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$-1, -16(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	LBB2_3
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB2_1
LBB2_3:
	jmp	LBB2_4
LBB2_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	LBB2_6
## BB#5:                                ##   in Loop: Header=BB2_4 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -17(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movb	-17(%rbp), %dl
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-16(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -12(%rbp)
	jmp	LBB2_4
LBB2_6:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
