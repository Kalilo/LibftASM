# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: khansman <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/30 15:06:45 by khansman          #+#    #+#              #
#    Updated: 2017/07/30 15:06:46 by khansman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isupper

_ft_isupper:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 65; A
	jl		ret_false
	cmp		rdi, 90; Z
	jg		ret_false

	ret_true:
	mov		rax, 1
	leave
	ret

	ret_false:
	mov		rax, 0
	leave
	ret
