; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:17:52 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:17:53 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putendl_fd

extern _ft_putstr_fd
extern _ft_putchar_fd

section .text

_ft_putendl_fd:
    push	rbp
	mov		rbp, rsp

    push rsi
    call _ft_putstr_fd
    pop rsi
    mov rdi, 10
    call _ft_putchar_fd

    leave
    ret
