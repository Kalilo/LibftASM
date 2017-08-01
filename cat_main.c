/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cat_main.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/01 07:53:34 by khansman          #+#    #+#             */
/*   Updated: 2017/08/01 08:01:01 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>

void	ft_cat(int fd);

int		main(int ac, char **av)
{
//	ft_cat(0);
//	ft_cat(open(__FILE__, O_RDONLY));
	ft_cat(open(av[1], O_RDONLY));
//	ft_cat(-42);
	return (0);
}
