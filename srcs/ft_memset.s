; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 15:27:09 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 15:27:11 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data

section .text
	global _ft_memset
	default rel

;void	*ft_memset(void *s, int c, size_t n)
_ft_memset:
	push	rbp
	mov		rbp, rsp

	; Init Variables
	mov		r8, rdi
	mov		rcx, rdx; n
	mov		rax, rsi; c

	;loop
	cld
	rep 	stosb

	mov		rax, r8
	leave
	ret
