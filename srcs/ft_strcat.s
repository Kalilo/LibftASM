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

section .data

section .text
	global _ft_strcat
	default rel

;char	*ft_strcat(char *s1, const char *s2)

_ft_strcat:
	push	rbp
	mov		rbp, rsp

	leave
	ret