; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strnequ.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/30 15:19:59 by khansman          #+#    #+#              ;
;    Updated: 2017/07/30 15:20:01 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strnequ

extern _ft_strncmp

section .text

_ft_strnequ:
    push	rbp
	mov		rbp, rsp

    call _ft_strncmp
    cmp rax, 0
    jne notequal
    mov rax, 1

    leave
    ret

notequal:
    mov rax, 0

    leave
    ret
