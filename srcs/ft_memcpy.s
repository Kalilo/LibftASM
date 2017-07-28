; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 16:06:22 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 16:06:23 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data

section .text
	global _ft_memcpy
	default rel

;void	*ft_memcpy(void *dest, const void *src, size_t n)

_ft_memcpy:
	push	rbp
	mov		rbp, rsp

	;init variables
	mov		r8, rdi
	mov		rcx, rdx

	;loop
	cld
	rep		movsb; rsi -> rdi

end:
	mov		rax, r8
	leave
	ret
