; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/07/27 08:39:15 by khansman          #+#    #+#              ;
;    Updated: 2017/07/27 08:39:17 by khansman         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data

section .text
	global ft_bzero
	default rel

ft_bzero:
	push	rbp
	movq	rbp, rsp
	sub		rsp, 16
	; add code here
	pop		rbp
	ret
