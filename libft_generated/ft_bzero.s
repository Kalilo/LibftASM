	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_bzero
	.align	4, 0x90
_ft_bzero:                              ## @ft_bzero
	.cfi_startproc
## BB#0:
	pushq	%rbp;save state
Ltmp0:
	.cfi_def_cfa_offset 16;reserve temp
Ltmp1:
	.cfi_offset %rbp, -16; reserve k
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp);load s
	movq	%rsi, -16(%rbp);load n
	movq	$0, -24(%rbp); init k
	movq	-8(%rbp), %rsi; init temp
	movq	%rsi, -32(%rbp);
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax; k
	cmpq	-16(%rbp), %rax; cmp n, k
	jae	LBB0_3; break
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax; k
	movq	-32(%rbp), %rcx; n
	movb	$0, (%rcx,%rax); load 0 into n[k]
	movq	-24(%rbp), %rax; load k
	addq	$1, %rax; inc k
	movq	%rax, -24(%rbp); set new k
	jmp	LBB0_1; loop
LBB0_3:;return
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
