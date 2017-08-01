; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 17:26:32 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 17:26:34 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data
newline
	.char db 10

section .text
	global	_ft_puts
	extern	_ft_strlen

;int		ft_puts(int c);
_ft_puts:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

	; get strlen
	push	rdi
	call	_ft_strlen
	pop		rsi

	; write str
	mov		rdi, 1
	mov		rdx, rax
	mov		rax, 0x2000004; write
	syscall

	mov		r15, rax

	; write '\n'
	mov		rdx, 1
	lea		rsi, [rel newline.char]
	mov		rax, 0x2000004; write
	syscall

	; return length
	mov		rax, r15

	leave
	ret