; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 08:56:28 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 08:56:29 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data

section .text
	global _ft_strcat
	extern _ft_strlen
	extern _ft_memcpy

;char	*ft_strcat(char *s1, const char *s2)

_ft_strcat:
	push	rbp
	mov		rbp, rsp

	mov		r11, rdi
	mov		r12, rsi

	; get s1 strlen
	push	rdi
	call	_ft_strlen
	pop		r10

	; get end of s1
	add		rdi, rax

	; get s2, strlen
	mov		rax, rsi

	wloop:
	cmp		byte[rax], 0
	je		end_s2_len
	inc		rax
	jmp		wloop
	end_s2_len:
	sub		rax, rsi
	inc		rax

	; copy
	mov		rcx, rax

	cld
	rep		movsb

	; ret
	mov		rax, r11

	leave
	ret
