	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_get_line
	.align	4, 0x90
_ft_get_line:                           ## @ft_get_line
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
	leaq	-17(%rbp), %rax
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	-8(%rbp), %edi
	movq	%rax, %rsi
	callq	_read
	movq	%rax, -40(%rbp)         ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-17(%rbp), %eax
	cmpl	$10, %eax
	movb	%cl, -41(%rbp)          ## 1-byte Spill
	je	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-41(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_4
	jmp	LBB0_10
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	_ft_get_line.k(%rip), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	je	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, _ft_get_line.k(%rip)
	jne	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	_ft_get_line.k(%rip), %eax
	movl	%eax, %esi
	callq	_ft_re_malloc
	movq	%rax, -32(%rbp)
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-17(%rbp), %al
	movl	_ft_get_line.k(%rip), %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	movsbl	-17(%rbp), %ecx
	cmpl	$0, %ecx
	je	LBB0_9
## BB#8:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	_ft_get_line.k(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ft_get_line.k(%rip)
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	leaq	-17(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %edi
	callq	_read
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB0_1
LBB0_10:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$0, _ft_get_line.k(%rip)
	jbe	LBB0_12
## BB#11:
	movl	$0, _ft_get_line.k(%rip)
	movl	$1, -4(%rbp)
	jmp	LBB0_14
LBB0_12:
	movq	$0, -16(%rbp)
## BB#13:
	movl	$0, -4(%rbp)
LBB0_14:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_ft_re_malloc:                          ## @ft_re_malloc
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$50, %rsi
	movq	%rsi, %rdi
	callq	_ft_strnew
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jbe	LBB1_2
## BB#1:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_ft_strcpy
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
LBB1_2:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

.zerofill __DATA,__bss,_ft_get_line.k,4,2 ## @ft_get_line.k

.subsections_via_symbols
