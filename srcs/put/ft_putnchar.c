/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnchar.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vguerand <vguerand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/01/13 16:45:11 by vguerand          #+#    #+#             */
/*   Updated: 2019/01/14 16:27:06 by vguerand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void 	ft_putnchar(int c, size_t n)
{
	char str[n];

	ft_memset((void*)str, c, n);
	str[n] = '\0';
	ft_putstr(str);
}
