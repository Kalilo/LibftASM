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

section .data

section .text
	global _ft_strcat
	default rel

;size_t	ft_strlen(const char *s)

_ft_strcat:
	push	rbp
	mov		rbp, rsp

	;init variables
	mov		rcx, rsi
	mov		bx, 0

	;loop
	cld
	repnz	cmpb	rcx, bx

	leave
	ret
