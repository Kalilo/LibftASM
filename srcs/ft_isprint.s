; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:17:52 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:17:53 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isprint

;int		ft_isprint(int c);
_ft_isprint:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 32
	jl		ret_false
	cmp		rdi, 126
	jg		ret_false

	ret_true:
	mov		rax, 1
	leave
	ret

	ret_false:
	mov		rax, 0
	leave
	ret
