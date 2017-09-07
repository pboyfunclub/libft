/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_dlstgettail.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttshivhu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/09/07 10:13:19 by ttshivhu          #+#    #+#             */
/*   Updated: 2017/09/07 10:13:27 by ttshivhu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_dlist	*ft_dlstgettail(t_dlist *dlst)
{
	while (dlst)
	{
		if (dlst->next)
			dlst = dlst->next;
		else
			break ;
	}
	return (dlst);
}
