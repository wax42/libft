/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atof.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vguerand <vguerand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/31 18:20:43 by vguerand          #+#    #+#             */
/*   Updated: 2018/12/31 18:53:07 by vguerand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int		ft_pass(const char *str, int *sign)
{
	int i;

	i = 0;
	while (str[i] == '\n' || str[i] == '\t' || str[i] == 32 || str[i] == '\v'
		|| str[i] == '\r' || str[i] == '\f')
		i++;
	if (str[i] == '-' || str[i] == '+')
	{
		if (str[i] == '-')
			*sign = -1;
		i++;
	}
	return (i);
}

static int before_dec(int *i, char *str)
{
	int nb;

	nb = 0;
	while (ft_isdigit(str[*i]))
	{
		nb = nb * 10 + str[*i] - '0';
		(*i)++;
	}
	return(nb);
}

static	float	get_decimal(int i)
{
	float	exp;

	exp = 1;
	while (i--)
		exp *= 10;
	return (exp);
}

float					ft_atof(char *str)
{
	float				result;
	int					sign;
	int					i;
	int					decimal;

	i = 1;
	decimal = 1;
	sign = 1;
	i = ft_pass(str, &sign);
	result = before_dec(&i, str);
	if (str[i] == '.')
	{
		i++;
		while (ft_isdigit(str[i]))
		{
			result = result + ((str[i] - '0') / get_decimal(decimal));
			decimal++;
			i++;
		}
	}
	return (result * (float)sign);
}
