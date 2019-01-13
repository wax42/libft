/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnchar.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vguerand <vguerand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/01/13 16:45:11 by vguerand          #+#    #+#             */
/*   Updated: 2019/01/13 16:51:30 by vguerand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void 	ft_putnchar(int c, size_t n)
{
	char str[n];

	ft_memset((void*)str, c, n);
	ft_putstr(str);
}
