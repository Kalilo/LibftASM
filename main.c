/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/07/28 09:31:39 by khansman          #+#    #+#             */
/*   Updated: 2017/07/28 09:31:42 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libfts.h"

 #include <stdlib.h>
 #include <stdio.h>

void	error_quit(char *msg)
{
	printf("Test Failed: %s\n", msg);
	exit(0);
}

void	test_part1(void)
{
	char	pass = 1;
	char	pass2;

	/*test bzero*/
	pass2 = 1;
	char	*str1 = (char *)malloc(5);
	for (int k = 0; k < 5; k++)
		str1[k] = 101;
	ft_bzero(&str1, 5);
	for (int k = 0; k < 5; k++)
		if (str1[k] != 0)
			pass = (pass2 = 0);
	puts((pass2) ? "bzero: PASSED" : "bzero: FAILED");

	/*end*/
	if (pass)
		puts("Part1: PASSED");
	else
		puts("Part1: FAILED");
}

int		main(void)
{
	test_part1();
	return (0);
}
