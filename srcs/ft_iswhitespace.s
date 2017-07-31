; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_iswhitespace.s                                  :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/31 08:17:52 by khansman          #+#    #+#              ;
;    Updated: 2017/07/31 08:17:53 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_iswhitespace

section .text

_ft_iswhitespace:
    cmp rdi, 10
    je goto
    cmp rdi, 32
    je goto
    cmp rdi, 9
    je goto
    cmp rdi, 11
    je goto
    cmp rdi, 12
    je goto
    cmp rdi, 13
    je goto
    mov rax, 0
    ret

goto:
    mov rax, 1
    ret
