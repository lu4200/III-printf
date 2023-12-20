/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putunsigned.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lumaret <lumaret@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/18 12:04:32 by lucas             #+#    #+#             */
/*   Updated: 2023/12/20 15:13:58 by lumaret          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putunsigned(unsigned long n, int base)
{
	size_t	count;

	count = 0;
	if (n >= 0 && n < 10)
		count += ft_putchar(n + '0');
	else
	{
		count += ft_putnbr(n, base, 'u', count);
	}
	return (count);
}