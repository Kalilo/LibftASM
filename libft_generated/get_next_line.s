	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_get_next_line
	.align	4, 0x90
_get_next_line:                         ## @get_next_line
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
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB0_2
## BB#1:
	movl	$-1, -4(%rbp)
	jmp	LBB0_24
LBB0_2:
	leaq	-24(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	_get_buff
	movq	-24(%rbp), %rdi
	cmpb	$0, 32(%rdi)
	je	LBB0_4
## BB#3:
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	40(%rax), %ecx
	jle	LBB0_6
LBB0_4:
	movq	-24(%rbp), %rdi
	callq	_read_line
	cmpl	$0, %eax
	jne	LBB0_6
## BB#5:
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	LBB0_24
LBB0_6:
	movq	-24(%rbp), %rax
	movl	$-1, 48(%rax)
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movslq	44(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$10, %eax
	movb	%cl, -25(%rbp)          ## 1-byte Spill
	je	LBB0_9
## BB#8:                                ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movslq	44(%rax), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$26, %edx
	setne	%sil
	movb	%sil, -25(%rbp)         ## 1-byte Spill
LBB0_9:                                 ##   in Loop: Header=BB0_7 Depth=1
	movb	-25(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_10
	jmp	LBB0_20
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	40(%rax), %ecx
	jle	LBB0_13
## BB#11:                               ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rdi
	callq	_read_line
	cmpl	$0, %eax
	jne	LBB0_13
## BB#12:
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	LBB0_24
LBB0_13:                                ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movslq	44(%rax), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	je	LBB0_15
## BB#14:                               ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movslq	44(%rax), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$26, %edx
	jne	LBB0_16
LBB0_15:
	jmp	LBB0_20
LBB0_16:                                ##   in Loop: Header=BB0_7 Depth=1
	movl	$50, %eax
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edx
	addl	$1, %edx
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-32(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	je	LBB0_18
## BB#17:                               ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$-1, 48(%rax)
	jne	LBB0_19
LBB0_18:                                ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %esi
	movq	%rax, %rdi
	callq	_remalloc
LBB0_19:                                ##   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movslq	44(%rax), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-24(%rbp), %rax
	movl	48(%rax), %esi
	addl	$1, %esi
	movl	%esi, 48(%rax)
	movslq	%esi, %rax
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rcx
	movb	%dl, (%rcx,%rax)
	movq	-24(%rbp), %rax
	movl	44(%rax), %esi
	addl	$1, %esi
	movl	%esi, 44(%rax)
	jmp	LBB0_7
LBB0_20:
	movq	-24(%rbp), %rax
	cmpl	$-1, 48(%rax)
	jne	LBB0_22
## BB#21:
	movl	$4, %eax
	movl	%eax, %edi
	callq	_ft_strnew
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	jmp	LBB0_23
LBB0_22:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)         ## 8-byte Spill
LBB0_23:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movl	$1, -4(%rbp)
LBB0_24:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_get_buff:                              ## @get_buff
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$-1, -16(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$10, %eax
	jge	LBB1_6
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	_get_buff.buffs(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movsbl	32(%rax), %edx
	cmpl	$0, %edx
	je	LBB1_5
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	_get_buff.buffs(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	36(%rax), %edx
	cmpl	-12(%rbp), %edx
	jne	LBB1_5
## BB#4:
	leaq	_get_buff.buffs(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	LBB1_12
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_6:
	movl	$-1, -16(%rbp)
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$10, %eax
	jge	LBB1_11
## BB#8:                                ##   in Loop: Header=BB1_7 Depth=1
	leaq	_get_buff.buffs(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	cmpb	$0, 32(%rax)
	jne	LBB1_10
## BB#9:
	movl	$64, %eax
	movl	%eax, %esi
	leaq	_get_buff.buffs(%rip), %rcx
	movslq	-16(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	_ft_bzero
	leaq	_get_buff.buffs(%rip), %rcx
	movl	-12(%rbp), %eax
	movslq	-16(%rbp), %rdx
	shlq	$6, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	%eax, 36(%rsi)
	movslq	-16(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	jmp	LBB1_12
LBB1_10:                                ##   in Loop: Header=BB1_7 Depth=1
	jmp	LBB1_7
LBB1_11:
	leaq	_get_buff.buffs(%rip), %rdi
	movl	$64, %eax
	movl	%eax, %esi
	callq	_ft_bzero
	leaq	_get_buff.buffs(%rip), %rsi
	movl	-12(%rbp), %eax
	movl	%eax, _get_buff.buffs+36(%rip)
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
LBB1_12:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_read_line:                             ## @read_line
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpb	$0, 32(%rdi)
	jne	LBB2_2
## BB#1:
	movq	-16(%rbp), %rax
	movb	$1, 32(%rax)
	jmp	LBB2_6
LBB2_2:
	movq	-16(%rbp), %rax
	cmpl	$32, 40(%rax)
	jge	LBB2_4
## BB#3:
	movq	-16(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$0, -4(%rbp)
	jmp	LBB2_9
LBB2_4:
	movl	$32, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_ft_bzero
## BB#5:
	jmp	LBB2_6
LBB2_6:
	movl	$32, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movl	36(%rcx), %edi
	movq	-16(%rbp), %rsi
	callq	_read
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	%edi, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-16(%rbp), %rax
	cmpl	$-1, 40(%rax)
	jne	LBB2_8
## BB#7:
	movq	-16(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	LBB2_9
LBB2_8:
	movl	$1, -4(%rbp)
LBB2_9:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_remalloc:                              ## @remalloc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %esi
	addl	$50, %esi
	addl	$2, %esi
	movslq	%esi, %rdi
	callq	_ft_strnew
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpl	$-1, -12(%rbp)
	je	LBB3_2
## BB#1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	callq	_ft_memcpy
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_free
LBB3_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

.zerofill __DATA,__bss,_get_buff.buffs,640,4 ## @get_buff.buffs

.subsections_via_symbols
