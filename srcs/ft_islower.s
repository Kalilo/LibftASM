; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/30 15:19:59 by khansman          #+#    #+#              ;
;    Updated: 2017/07/30 15:20:01 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_islower

_ft_islower:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 97; a
	jl		ret_false
	cmp		rdi, 122; z
	jg		ret_false

	ret_true:
	mov		rax, 1
	leave
	ret

	ret_false:
	mov		rax, 0
	leave
	ret

