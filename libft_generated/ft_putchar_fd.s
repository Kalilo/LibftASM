	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_putchar_fd
	.align	4, 0x90
_ft_putchar_fd:                         ## @ft_putchar_fd
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
	subq	$16, %rsp
	movb	%dil, %al
	leaq	-1(%rbp), %rcx
	movl	$1, %edi
	movl	%edi, %edx
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edi
	movq	%rcx, %rsi
	callq	_write
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
