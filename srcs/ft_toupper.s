; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:22:07 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:22:08 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_toupper

;int		ft_toupper(int c);
_ft_toupper:
	push	rbp
	mov		rbp, rsp

	mov		rax, rdi

	cmp		rax, 97; a
	jl		ret
	cmp		rax, 122; z
	jg		ret

	sub		rax, 32

	ret:
	leave
	ret
