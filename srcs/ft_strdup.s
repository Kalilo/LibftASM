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

;char	*ft_strdup(const char *s1)

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	; sub		rsp, 8; align the stack

	mov		r14, rdi; save rdi in register which won't get overwritten

	; call ft_strlen
	push	rdi
	call	_ft_strlen
	pop		rdi
	inc		rax; cater for '\0'
	mov		r15, rax; store strlen

	;call malloc
	sub		rsp, 8; align the stack
	push	r15
	call	_malloc
	pop		r8
	mov		r13, rax
	add		rsp, 8; undo alignment

	; memcpy
	mov		rsi, r14
	mov		rdi, r13
	mov		rcx, r15
	cld
	rep		movsb

	mov		rax, r13

ret_r9:
	leave
	ret

ret_null:
	mov		rax, 0
	leave
	ret
