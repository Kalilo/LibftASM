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
	extern _ft_memset
	extern _malloc
	default rel

;char	*ft_strdup(const char *s1)

_ft_strdup:
	push	rbp
	mov		rbp, rsp

	;backup
	mov		r8, rdi

	;get strlen
	mov		rdi, r8
	call	_ft_strlen
	inc		rax
	mov		r9, rax

	;malloc
	mov		rdi, r9
	call	_malloc

	;copy str
	mov		rdi, rax
	mov		rsi, r8
	mov		rdx, r9
	call	_ft_memset

	leave
	ret
