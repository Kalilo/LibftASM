; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/30 14:57:20 by khansman          #+#    #+#              ;
;    Updated: 2017/07/30 14:57:21 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalpha

;int		ft_isalpha(int c)
_ft_isalpha:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 65; A
	jl		ret_false
	cmp		rdi, 122; z
	jg		ret_false

	cmp		rdi, 91; Z + 1
	jl		ret_true
	cmp		rdi, 96; a - 1
	jg		ret_true

	ret_false:
	mov		rax, 0
	leave
	ret

	ret_true:
	mov		rax, 1
	leave
	ret
