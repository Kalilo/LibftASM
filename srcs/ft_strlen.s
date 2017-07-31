; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 09:01:17 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 09:01:19 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

;size_t	ft_strlen(const char *s)

_ft_strlen:
	push	rbp
	mov		rbp, rsp

	mov		rcx, 4294967295; max long int
	mov		rax, 0

	repne	scasb

	mov		rax, 4294967295; max long int
	sub		rax, rcx
	dec		rax

	leave
	ret
