; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/30 13:24:10 by khansman          #+#    #+#              ;
;    Updated: 2017/07/30 13:24:12 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data
buff
	.buff resb 2048

section .text
	global _ft_cat

;void	ft_cat(int fd)

_ft_cat:
	push	rbp
	mov		rbp, rsp
	
	mov		r15, rdi
	cat_loop:
	;read into buff
	mov		rdi, r15
	lea		[rel buff.buff]
	mov		;

	leave
	ret