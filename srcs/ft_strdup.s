; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 16:36:45 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 16:36:46 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data

section .text
    global _ft_strdup
    extern _ft_strlen
    extern _ft_memcpy
    extern _malloc

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

	push	rdi
	call	_ft_strlen
	inc		rax

	mov		rdi, rax	
	push	rdi
	call	_malloc

	mov		rdi, rax
	pop		rdx
	pop		rsi	
	push	rdx
	push	rsi
	push	rdi
	call	_ft_memcpy	
	leave
	ret