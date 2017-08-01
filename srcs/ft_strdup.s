; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 08:56:28 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 08:56:29 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy

section .text

_ft_strdup:
    push	rbp
	mov		rbp, rsp

    cmp rdi, 0
    je nullcase
    push rdi
    call _ft_strlen
    inc rax
    mov rdi, rax
    push rax
    push rax
    call _malloc
    cmp rax, 0
    je popcase
    mov rdi, rax
    pop r11
    pop rdx
    pop rsi
    call _ft_memcpy

    leave
    ret

popcase:
    pop rax
    pop rdi
    pop rdi
    mov rax, 1

nullcase
    mov rax, 0

    leave
    ret
