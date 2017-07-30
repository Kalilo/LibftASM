; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 16:36:45 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 16:36:46 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc
	default rel

;char	*ft_strdup(const char *s1)

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32

	; ft_strlen
	mov		r8, rdi

	wloop:
	cmp		byte[r8], 0
	je		break_strlen
	inc		r8
	jmp		wloop

	break_strlen:
	sub		r8, rdi
	add		r8, 1

	; malloc
	; push	r8
	call	_malloc
	test	rax, rax
	jz		ret_null

	; save str
	mov		r9, rax

	; ; dec		r8
	; ;strcpy
	; strcpy:
	; cmp		r8, 0
	; je		ret_r9
	; mov		rax, r9
	; mov		rbx, rdi
	; add		rax, r8
	; add		rbx, r8
	; ; mov		rcx, [rbx]
	; ; mov		[rax], rcx
	; dec		r8
	; jmp		strcpy

ret_r9:
	mov		rax, r9
	leave
	ret

ret_null:
	mov		rax, 0
	leave
	ret
