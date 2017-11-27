/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_index.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vguerand <vguerand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/24 14:58:28 by vguerand          #+#    #+#             */
/*   Updated: 2017/11/27 13:09:12 by vguerand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list		*ft_lstnew_index(void const *content, size_t content_size,
		size_t index, t_split *lst)
{
	t_list *new_list;

	if (!(new_list = malloc(sizeof(t_list))))
		return (NULL);
	if (content == NULL || lst == NULL)
	{
		new_list->content = NULL;
		new_list->content_size = 0;
		new_list->index = 0;
		new_list->list = NULL;
	}
	else
	{
		if (!(new_list->content = ft_memalloc(content_size)))
			return (NULL);
		ft_memcpy(new_list->content, content, content_size);
		new_list->content_size = content_size;
		new_list->index = index;
		new_list->list = lst;
	}
	new_list->next = NULL;
	return (new_list);
}
