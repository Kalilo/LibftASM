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

	cmp		rdi, 0
	jl		end_cat

	mov		r15, rdi
	cat_loop:
	;read into buff
	mov		rdi, r15
	lea		rsi, [rel buff.buff]
	mov		rdx, 2048
	mov		rax, 0x2000003
	syscall

	jc		end_cat; magic fix
	cmp		rax, 0
	jle		end_cat

	;write to stdout
	mov		rdi, 1
	mov		rdx, rax
	mov		rax, 0x2000004
	syscall

	cmp		rax, 0
	jle		end_cat

	;break if nothing was read
	cmp		rax, 0
	jne		cat_loop

	end_cat:
	leave
	ret
