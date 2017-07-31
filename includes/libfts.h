/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/07/28 09:17:15 by khansman          #+#    #+#             */
/*   Updated: 2017/07/28 09:17:16 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

/*
** ----------\
** Includes   |
** ----------/
*/

# include <string.h>

/*
** ----------\
** Prototypes |
** ----------/
*/

/*
** Part1
*/
void    	ft_bzero(void *s, size_t n);
char	    *ft_strcat(char *s1, const char *s2);
int 		ft_isalpha(int c);
int		    ft_isdigit(int c);
int		    ft_isalnum(int c);
int		    ft_isascii(int c);
int		    ft_isprint(int c);
int		    ft_toupper(int c);
int		    ft_tolower(int c);
int		    ft_puts(const char *s);

/*
** Part2
*/
size_t	    ft_strlen(const char *s);
void	    *ft_memset(void *b, int c, size_t len);
void	    *ft_memcpy(void *dst, const void *src, size_t n);
char	    *ft_strdup(const char *s1);

/*
** Part3
*/
void	    ft_cat(int fd);

/*
** Bonus
*/
int         ft_iswhitespace(int c);
void	    ft_putchar(char c);
void	    ft_putchar_fd(char c, int fd);
int		    ft_isupper(int c);
int		    ft_islower(int c);
void	    ft_putendl(char const *s);
void	    ft_putendl_fd(char const *s, int fd);
void	    ft_putstr(char const *s);
void	    ft_putstr_fd(char const *s, int fd);
int		    ft_strcmp(const char *s1, const char *s2);
int		    ft_strequ(char const *s1, char const *s2);
int		    ft_strnequ(char const *s1, char const *s2, size_t n);
int		    ft_swap_int(int i);
long long	ft_swap_long(long long l);

/*
**                                /----------\                                **
** ----- ----- ----- ----- ----- |  The End   | ----- ----- ----- ----- ----- **
**                                \----------/                                **
*/
#endif
