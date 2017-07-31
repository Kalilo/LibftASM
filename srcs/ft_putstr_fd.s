; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr_fd.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:17:52 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:17:53 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putstr_fd

extern _ft_strlen

section .data

NULL_STR db "(null)"

section .text

_ft_putstr_fd:
    cmp rdi, 0
    je nullcase
    push rdi
    push rsi
    call _ft_strlen
    mov rdx, rax
    mov rax, MACH_SYSCALL(WRITE)
    ; mov rax, 0x2000004 same as the above
    pop rdi
    pop rsi
    syscall
    ret

nullcase:
    mov rdi, rsi
    lea rsi, [rel NULL_STR]
    mov rdx, 6
    mov rax, MACH_SYSCALL(WRITE)
    ; mov rax, 0x2000004 same as the above
    syscall
    ret
