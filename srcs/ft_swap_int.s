; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_swap_int.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/30 15:19:59 by khansman          #+#    #+#              ;
;    Updated: 2017/07/30 15:20:01 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_swap_int

section .text

_ft_swap_int:
    push	rbp
	mov		rbp, rsp

    bswap edi
    mov rax, 0
    mov eax, edi

    leave
    ret
