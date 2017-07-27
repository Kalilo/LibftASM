	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strsplit
	.align	4, 0x90
_ft_strsplit:                           ## @ft_strsplit
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
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB0_2
## BB#1:
	movq	$0, -8(%rbp)
	jmp	LBB0_19
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-17(%rbp), %edx
	cmpl	%edx, %ecx
	jne	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB0_3
LBB0_5:
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	LBB0_7
## BB#6:
	movl	$8, %eax
	movl	%eax, %edi
	callq	_ft_strnew
	movq	%rax, -8(%rbp)
	jmp	LBB0_19
LBB0_7:
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	_ft_tab_count
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rdi
	shlq	$3, %rdi
	callq	_ft_strnew
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	LBB0_9
## BB#8:
	movq	$0, -8(%rbp)
	jmp	LBB0_19
LBB0_9:
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
LBB0_10:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_15 Depth 2
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	je	LBB0_18
## BB#11:                               ##   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	_ft_strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB0_14
## BB#12:                               ##   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rdi
	callq	_ft_strdup
	movq	-32(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	movq	%rax, (%rdi)
	cmpq	$0, %rax
	je	LBB0_14
## BB#13:
	jmp	LBB0_18
LBB0_14:                                ##   in Loop: Header=BB0_10 Depth=1
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	_ft_strsub
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, (%rcx)
LBB0_15:                                ##   Parent Loop BB0_10 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-17(%rbp), %edx
	cmpl	%edx, %ecx
	jne	LBB0_17
## BB#16:                               ##   in Loop: Header=BB0_15 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	LBB0_15
LBB0_17:                                ##   in Loop: Header=BB0_10 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB0_10
LBB0_18:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_19:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_ft_tab_count:                          ## @ft_tab_count
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movl	$1, -24(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	cmpq	$0, -16(%rbp)
	je	LBB1_11
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	_ft_strchr
	movq	%rax, -16(%rbp)
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          ## 1-byte Spill
	je	LBB1_5
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-17(%rbp), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -25(%rbp)         ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=2
	movb	-25(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_6
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB1_3
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	LBB1_9
## BB#8:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	LBB1_10
LBB1_9:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_12
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB1_1
LBB1_11:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB1_12:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
