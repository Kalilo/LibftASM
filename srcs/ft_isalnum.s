; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 07:47:47 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 07:47:48 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalnum

;int		ft_isalnum(int c)
_ft_isalnum:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 48; 0
	jl		ret_false
	cmp		rdi, 122; z
	jg		ret_false

	cmp		rdi, 58; 9 + 1
	jl		ret_true
	cmp		rdi, 96; a - 1
	jg		ret_true
	cmp		rdi, 64; A - 1
	jl		ret_false
	cmp		rdi, 91; Z + 1
	jg		ret_false

	ret_true:
	mov		rax, 1
	leave
	ret

	ret_false:
	mov		rax, 0
	leave
	ret
