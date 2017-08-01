; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:30:10 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:30:13 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_tolower

;int		ft_tolower(int c);
_ft_tolower:
	push	rbp
	mov		rbp, rsp

	mov		rax, rdi

	cmp		rax, 65; A
	jl		ret
	cmp		rax, 90; Z
	jg		ret

	add		rax, 32

	ret:
	leave
	ret
