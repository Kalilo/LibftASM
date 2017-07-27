	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_print_hex
	.align	4, 0x90
_ft_print_hex:                          ## @ft_print_hex
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
	movb	%dil, %al
	leaq	L_.str(%rip), %rcx
	movb	%al, -1(%rbp)
	movq	%rcx, -16(%rbp)
	movzbl	-1(%rbp), %edi
	cmpl	$16, %edi
	jl	LBB0_2
## BB#1:
	movl	$16, %eax
	movzbl	-1(%rbp), %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-20(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movzbl	%sil, %edi
	callq	_ft_print_hex
LBB0_2:
	movl	$1, %edi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$16, %eax
	movq	-16(%rbp), %rcx
	movzbl	-1(%rbp), %esi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	cltd
	movl	-24(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	movslq	%edx, %r8
	addq	%r8, %rcx
	movq	%rcx, %rsi
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	callq	_write
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0123456789abcdef"


.subsections_via_symbols
