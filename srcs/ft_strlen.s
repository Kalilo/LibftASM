; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 09:01:17 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 09:01:19 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data

section .text
	global _ft_strlen
	default rel

;size_t	ft_strlen(const char *s)

_ft_strlen:
	push	rbp
	mov		rbp, rsp

	;init variables
	mov		rax, 0

	;loop
loop:
	cmp		byte[rdi], 0
	je		end
	inc		rdi
	inc		rax
	jmp		loop

end:
	leave
	ret
