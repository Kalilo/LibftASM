	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_putnbr_fd
	.align	4, 0x90
_ft_putnbr_fd:                          ## @ft_putnbr_fd
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
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	LBB0_2
## BB#1:
	leaq	L_.str(%rip), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %edi
	callq	_write
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jmp	LBB0_5
LBB0_2:
	cmpl	$0, -4(%rbp)
	jge	LBB0_4
## BB#3:
	leaq	L_.str.1(%rip), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %edi
	callq	_write
	xorl	%edi, %edi
	subl	-4(%rbp), %edi
	movl	%edi, -4(%rbp)
	movq	%rax, -32(%rbp)         ## 8-byte Spill
LBB0_4:
	jmp	LBB0_5
LBB0_5:
	movl	$1, -16(%rbp)
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	cmpl	-4(%rbp), %edx
	je	LBB0_8
## BB#7:                                ##   in Loop: Header=BB0_6 Depth=1
	imull	$10, -16(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	LBB0_6
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	LBB0_11
## BB#10:                               ##   in Loop: Header=BB0_9 Depth=1
	leaq	-9(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$10, %eax
	movl	-4(%rbp), %ecx
	movl	-16(%rbp), %edi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	cltd
	movl	-36(%rbp), %edi         ## 4-byte Reload
	idivl	%edi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$48, %eax
	movb	%al, %r8b
	movb	%r8b, -9(%rbp)
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %r9d
	movl	-16(%rbp), %r10d
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%edi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%r9d, %eax
	cltd
	movl	-60(%rbp), %r9d         ## 4-byte Reload
	idivl	%r9d
	movl	-16(%rbp), %r10d
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%edi
	movl	-64(%rbp), %r10d        ## 4-byte Reload
	imull	%eax, %r10d
	movl	-56(%rbp), %eax         ## 4-byte Reload
	subl	%r10d, %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %edi
	movq	-48(%rbp), %r11         ## 8-byte Reload
	movq	%r11, %rdx
	callq	_write
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	jmp	LBB0_9
LBB0_11:
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0"

L_.str.1:                               ## @.str.1
	.asciz	"-"


.subsections_via_symbols
