	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_print_memory
	.align	4, 0x90
_ft_print_memory:                       ## @ft_print_memory
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$-1, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-16(%rbp), %rsi
	andq	$15, %rsi
	cmpq	$0, %rsi
	jne	LBB0_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB0_3
LBB0_2:
	movl	$16, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	andq	$15, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
LBB0_3:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -32(%rbp)
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	cmpq	-32(%rbp), %rax
	jae	LBB0_16
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	_print_byte
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	movl	$1, %edi
	leaq	L_.str(%rip), %rsi
	movl	$2, %eax
	movl	%eax, %edx
	callq	_write
	movq	%rax, -56(%rbp)         ## 8-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	LBB0_10
## BB#9:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	$32, %edi
	callq	_ft_putchar
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB0_15
## BB#11:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	LBB0_13
## BB#12:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$16, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %esi
	callq	_print_dots
	jmp	LBB0_14
LBB0_13:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	andq	$15, %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movl	%eax, %esi
	movl	%esi, -60(%rbp)         ## 4-byte Spill
	movl	%edx, %esi
	movl	-60(%rbp), %edx         ## 4-byte Reload
	callq	_print_dots
LBB0_14:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	$10, %edi
	callq	_ft_putchar
LBB0_15:                                ##   in Loop: Header=BB0_4 Depth=1
	jmp	LBB0_4
LBB0_16:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_byte:                            ## @print_byte
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
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edi
	cmpl	$16, %edi
	jge	LBB1_2
## BB#1:
	movl	$48, %edi
	callq	_ft_putchar
LBB1_2:
	movzbl	-1(%rbp), %edi
	callq	_ft_print_hex
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_dots:                            ## @print_dots
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	-16(%rbp), %eax
	jg	LBB2_7
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jl	LBB2_4
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$126, %edx
	jle	LBB2_5
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$46, %edi
	callq	_ft_putchar
	jmp	LBB2_6
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	_ft_putchar
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_7:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"  "


.subsections_via_symbols
