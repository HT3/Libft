/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_nbrendl_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tjones <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/27 08:54:15 by tjones            #+#    #+#             */
/*   Updated: 2018/09/27 08:55:14 by tjones           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_nbrendl_fd(int nbr, int fd)
{
	ft_putnbr_fd(nbr, fd);
	ft_putchar_fd('\n', fd);
}
