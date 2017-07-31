; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/28 08:56:28 by khansman          #+#    #+#              ;
;    Updated: 2017/07/28 08:56:29 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcmp

section .text

_ft_strcmp:
    mov rdx, 0

loop:
    cmp byte[rdi], 0
    je end
    cmp byte[rsi], 0
    je end
    mov al, byte[rsi]
    cmp byte[rdi], al
    jne end
    inc rdi
    inc rsi
    jmp loop

end:
    mov rax, 0
    mov al, byte[rdi]
    sub al, byte[rsi]
    ret
