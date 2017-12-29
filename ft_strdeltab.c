/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdeltab.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vguerand <vguerand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/29 12:02:04 by vguerand          #+#    #+#             */
/*   Updated: 2017/12/29 12:04:24 by vguerand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void 	ft_strdeltab(char **tab)
{
	int y_max;
	int y;

	y = 0;
	y_max = ft_strlentab(tab);
	while (y < y_max)
	{
		ft_strdel(&tab[y]);
		y++;
	}
}
