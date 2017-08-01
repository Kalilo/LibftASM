; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncmp.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/08/01 14:48:22 by khansman          #+#    #+#              ;
;    Updated: 2017/08/01 14:48:24 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_strncmp

;int	ft_strncmp(const char *s1, const char *s2, size_t n)
_ft_strncmp:
	push	rbp
	mov		rbp, rsp

	mov		rcx, rdx

	cld
	repe	cmpsb

	dec		rdi
	dec		rsi

	mov		rax, 0
	mov		al, byte[rdi]
	sub		al, byte[rsi]

	leave
	ret
