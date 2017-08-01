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

global _ft_strcat

section .text

;char	*ft_strcat(char *s1, const char *s2)

_ft_strcat:
	push	rbp
	mov		rbp, rsp

	mov r11, rdi

pass_rdi:
	cmp byte[rdi], 0
	je appending
	inc rdi
	jmp pass_rdi

appending:
	cmp byte[rsi], 0
	je ending_programme
	mov al, byte[rsi]
	mov byte[rdi], al
	inc rdi
	inc rsi
	jmp appending

ending_programme
	mov byte[rdi], 0
	mov rax, r11

	leave
	ret
	