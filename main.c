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

#include <sys/types.h>
#include <sys/uio.h>
#include <unistd.h>
#include <fcntl.h>

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
		free(str1);
		puts((pass2) ? "ft_bzero: PASSED" : "ft_bzero: FAILED");
	}

	/*test ft_strcat*/ {
		puts("Testing: ft_strcat");
		pass2 = 1;

		char	*str = malloc(50);
		memcpy(str, "Hello World!", 13);
		if (!strcmp(str, "Hello World! Look at me!"))
			pass = (pass2 = 0);
		free(str);
		puts((pass2) ? "ft_strcat: PASSED" : "ft_strcat: FAILED");
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

	/*test ft_memcpy*/ {
		puts("Testing: ft_memcpy");
		pass2 = 1;
		char	*str = (char *)malloc(100);
		char	*s2 = "Hello Worlds!!!";
		ft_memcpy(str, s2, strlen(s2) + 1);
		if (strcmp(str, s2))
			pass = (pass2 = 0);
		free(str);
		puts((pass2) ? "ft_memcpy: PASSED" : "ft_memcpy: FAILED");
	}

	/*test ft_strdup*/ {
		puts("Testing: ft_strdup");
		pass2 = 1;
		char	*str;
		char	*s2 = "Hello Worlds!";
		if (!(str = ft_strdup(s2)))
			error_quit("ft_strdup failed to malloc memory");
		if (strcmp(str, s2))
			pass = (pass2 = 0);
		free(str);
		s2 = "";
		str = ft_strdup(s2);
		if (strcmp(str, s2))
			pass = (pass2 = 0);
		free(str);
		puts((pass2) ? "ft_strdup: PASSED" : "ft_strdup: FAILED");
	}

	/*end*/
	if (pass)
		puts("\nPart2: PASSED");
	else
		puts("\nPart2: FAILED");
}

void	test_part3(void)
{
	char	buff[2048];
	int		fd;

	fd = read(0, buff, 2048);
	buff[fd - 1] = '\0';
	if (*buff && (fd = open(buff, O_RDONLY)) < 0)
		error_quit("Can't open file");
	ft_cat(fd);
}

int		main(void)
{
	test_part1();
	test_part2();
	test_part3();
	return (0);
}
