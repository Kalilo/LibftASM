; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:17:52 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:17:53 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putchar_fd

section .text

_ft_putchar_fd:
    ;mov rax, MACH_SYSCALL(WRITE) same as the above
    mov rax, 0x2000004
    mov r11, rsi
    push rdi
    mov rsi, rsp
    mov rdi, r11
    mov rdx, 1
    syscall
    pop rdi
    ret
