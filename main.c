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
	puts("--- PART1 ---");
	char	pass = 1;
	char	pass2;

	/*test ft_bzero*/ {
		puts("Testing: ft_bzero");
		pass2 = 1;
		char	*str1 = (char *)malloc(5);
		for (int k = 0; k < 5; k++)
			str1[k] = 101;
		ft_bzero(&str1, 5);
		for (int k = 0; k < 5; k++)
			if (str1[k] != 0)
				pass = (pass2 = 0);
		ft_bzero(&str1, 0);
		puts((pass2) ? "ft_bzero: PASSED" : "ft_bzero: FAILED");
	}

	/*end*/
	if (pass)
		puts("\nPart1: PASSED");
	else
		puts("\nPart1: FAILED");
}

void	test_part2(void)
{
	puts("--- PART2 ---");
	char	pass = 1;
	char	pass2;

	/*test ft_strlen*/ {
		puts("Testing: ft_strlen");
		pass2 = 1;
		char	*str = "Hello worlds!";
		if (ft_strlen(str) != strlen(str))
			pass = (pass2 = 0);
		str = "";
		if (ft_strlen(str) != 0)
			pass = (pass2 = 0);
		puts((pass2) ? "ft_strlen: PASSED" : "ft_strlen: FAILED");
	}

	/*test ft_memset*/ {
		puts("Testing: ft_memset");
		pass2 = 1;
		char	*tmp = (char *)malloc(100);
		memcpy(tmp, "Hello there!", 13);
		ft_memset(tmp, 42, 50);
		for (int k = 0; k < 50; k++)
			if (tmp[k] != 42)
				pass = (pass2 = 0);
		ft_memset(tmp, 'A', 5);
		if (tmp[5] != 42)
			pass = (pass2 = 0);
		ft_memset(tmp, '\0', 5);
		if (!strcmp(tmp, "AAAAA"))
			pass = (pass2 = 0);
		free(tmp);
		puts((pass2) ? "ft_memset: PASSED" : "ft_memset: FAILED");
	}

	/*end*/
	if (pass)
		puts("\nPart2: PASSED");
	else
		puts("\nPart2: FAILED");
}

int		main(void)
{
	test_part1();
	test_part2();
	return (0);
}
