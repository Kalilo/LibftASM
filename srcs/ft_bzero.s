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

section .data

section .text
	global _ft_bzero
	default rel

_ft_bzero:
	push	rbp
	movq	rbp, rsp

	; Init Variables
	movq	rdi, -8(rbp) ; l = s
	movq	0, -16(rdp) ; k = 0
	; n = rsi
	

	; while (k < n)
loop:
	movq	-8(rbp), rax
	cmpq	rsi, rax
	jae		exit
; {


	addq	1, -16(rdp)
	jmp		loop	
; }
exit:
	leave
	ret
