; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/27 08:39:15 by khansman          #+#    #+#              ;
;    Updated: 2017/07/27 08:39:17 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_bzero

;void	ft_bzero(void *s, size_t n)
_ft_bzero:
	push	rbp
	mov		rbp, rsp

	; Init Variables
	mov		rcx, rsi; n
	mov		al, 0

	;loop
	cld
	rep 	stosb

	leave
	ret
