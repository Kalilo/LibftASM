; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 08:56:28 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 08:56:29 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat
	extern _ft_strlen
	extern _ft_memcpy

;char	*ft_strcat(char *s1, const char *s2)

_ft_strcat:
	push	rbp
	mov		rbp, rsp

	; save origonal
	mov		r11, rdi

	; get end of rdi
find_rdi_end:
	cmp		byte[rdi], 0
	je		strcat_cpy
	inc		rdi
	jmp		find_rdi_end

strcat_cpy:
	cmp		byte[rsi], 0
	je		end_strcat
	mov		al, byte[rsi]
	mov		byte[rdi], al
	inc		rdi
	inc		rsi
	jmp		strcat_cpy

end_strcat:
	mov		byte[rdi], 0
	mov		rax, r11

	leave
	ret
