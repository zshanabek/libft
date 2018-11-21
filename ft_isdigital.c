/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigital.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zshanabe <zshanabe@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/21 17:40:28 by zshanabe          #+#    #+#             */
/*   Updated: 2018/11/21 17:42:07 by zshanabe         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_isdigital(char *line)
{
	int i;

	i = 0;
	if (line == NULL)
		return (0);
	while (line[i])
	{
		if (!ft_isdigit(line[i]) && line[i] != '-')
			return (0);
		i++;
	}
	return (1);
}
