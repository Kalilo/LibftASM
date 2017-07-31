; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:13:29 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:13:30 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isascii

;int		ft_isascii(int c);
_ft_isascii:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 0
	jl		ret_false
	cmp		rdi, 127
	jg		ret_false

	ret_true:
	mov		rax, 1
	leave
	ret

	ret_false:
	mov		rax, 0
	leave
	ret

