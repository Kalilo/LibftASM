; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/30 18:00:11 by khansman          #+#    #+#              ;
;    Updated: 2017/07/30 18:00:12 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isdigit

_ft_isdigit:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 48; a
	jl		ret_false
	cmp		rdi, 57; z
	jg		ret_false

	ret_true:
	mov		rax, 1
	leave
	ret

	ret_false:
	mov		rax, 0
	leave
	ret
