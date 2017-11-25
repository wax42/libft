/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin_chr.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vguerand <vguerand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/25 12:02:13 by vguerand          #+#    #+#             */
/*   Updated: 2017/11/25 12:17:29 by vguerand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin_free(char const *s1, char const *s2)
{
	char	*pc;
	int		i;

	pc = NULL;
	i = 0;
	if (s1 && s2)
	{
		pc = (char *)malloc(sizeof(*pc) * (ft_strlen(s1) + ft_strlen(s2) + 1));
		if (pc != NULL)
		{
			while (*s1)
			{
				pc[i] = *s1++;
				i++;
			}
			while (*s2)
			{
				pc[i] = *s2++;
				i++;
			}
			pc[i] = '\0';
		}
	}
	free(s1);
	free(s2);
	return (pc);
}
