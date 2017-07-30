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

section .text
	global _ft_strlen

;size_t	ft_strlen(const char *s)

_ft_strlen:
	push	rbp
	mov		rbp, rsp

	;init variables
	mov		rax, rdi

	;loop
wloop:
	cmp		byte[rax], 0
	je		end
	inc		rax
	jmp		wloop

end:
	sub		rax, rdi

	leave
	ret
