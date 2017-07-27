	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_putnbr
	.align	4, 0x90
_ft_putnbr:                             ## @ft_putnbr
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
	pushq	%rbx
	subq	$72, %rsp
Ltmp3:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB0_2
## BB#1:
	movl	$1, %edi
	leaq	L_.str(%rip), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	callq	_write
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	jmp	LBB0_5
LBB0_2:
	cmpl	$0, -12(%rbp)
	jge	LBB0_4
## BB#3:
	movl	$1, %edi
	leaq	L_.str.1(%rip), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	callq	_write
	xorl	%edi, %edi
	subl	-12(%rbp), %edi
	movl	%edi, -12(%rbp)
	movq	%rax, -40(%rbp)         ## 8-byte Spill
LBB0_4:
	jmp	LBB0_5
LBB0_5:
	movl	$1, -20(%rbp)
	movl	-12(%rbp), %edi
	callq	_ft_int_len
	movl	%eax, -24(%rbp)
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	cmpl	-12(%rbp), %edx
	je	LBB0_8
## BB#7:                                ##   in Loop: Header=BB0_6 Depth=1
	imull	$10, -20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_6
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jle	LBB0_11
## BB#10:                               ##   in Loop: Header=BB0_9 Depth=1
	movl	$1, %edi
	leaq	-13(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$10, %eax
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movl	%r8d, %eax
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	cltd
	movl	-44(%rbp), %r8d         ## 4-byte Reload
	idivl	%r8d
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$48, %eax
	movb	%al, %r9b
	movb	%r9b, -13(%rbp)
	movl	-12(%rbp), %eax
	movl	-12(%rbp), %r10d
	movl	-20(%rbp), %r11d
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movl	%r11d, %eax
	cltd
	idivl	%r8d
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movl	%r10d, %eax
	cltd
	movl	-68(%rbp), %r10d        ## 4-byte Reload
	idivl	%r10d
	movl	-20(%rbp), %r11d
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movl	%r11d, %eax
	cltd
	idivl	%r8d
	movl	-72(%rbp), %r11d        ## 4-byte Reload
	imull	%eax, %r11d
	movl	-64(%rbp), %eax         ## 4-byte Reload
	subl	%r11d, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%r8d
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rbx         ## 8-byte Reload
	movq	%rbx, %rdx
	callq	_write
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	jmp	LBB0_9
LBB0_11:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_ft_int_len:                            ## @ft_int_len
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp4:
	.cfi_def_cfa_offset 16
Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp6:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jge	LBB1_2
## BB#1:
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB1_2:
	movl	$0, -8(%rbp)
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	LBB1_5
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$10, %eax
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	movl	-4(%rbp), %ecx
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-12(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movl	%eax, -4(%rbp)
	jmp	LBB1_3
LBB1_5:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0"

L_.str.1:                               ## @.str.1
	.asciz	"-"


.subsections_via_symbols
