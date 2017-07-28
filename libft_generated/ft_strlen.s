	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_ft_strlen
	.align	4, 0x90
_ft_strlen:                             ## @ft_strlen
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp; backup
Ltmp2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp); load s
	movl	$0, -12(%rbp); init k
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax; load k
	movq	-8(%rbp), %rcx; load s
	movsbl	(%rcx,%rax), %edx; load s[k]
	cmpl	$0, %edx; cmp s[k], 0
	je	LBB0_3; break
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax; load k
	addl	$1, %eax; inc k
	movl	%eax, -12(%rbp);store k
	jmp	LBB0_1; loop
LBB0_3:
	movslq	-12(%rbp), %rax; load k
	popq	%rbp;leave
	retq
	.cfi_endproc


.subsections_via_symbols
