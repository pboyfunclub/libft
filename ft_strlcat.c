/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttshivhu <marvin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/25 14:26:27 by ttshivhu          #+#    #+#             */
/*   Updated: 2017/05/29 12:32:51 by ttshivhu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dest, const char *src, size_t size)
{
	size_t i;
	size_t j;
	size_t n;

	n = ft_strlen(dest);
	i = n;
	j = 0;
	if (size < n)
		return (ft_strlen(src) + size);
	if (size == n)
		return (ft_strlen(src) + n);
	while (src[j] && j < size - n - 1)
	{
		dest[i] = src[j];
		i++;
		j++;
	}
	dest[i] = '\0';
	return (n + ft_strlen(src));
}
