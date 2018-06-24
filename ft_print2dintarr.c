/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print2dintarr.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zshanabe <zshanabe@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/24 19:02:52 by zshanabe          #+#    #+#             */
/*   Updated: 2018/06/24 19:25:47 by zshanabe         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_print2dintarr(int **matrix, int len)
{
	int i;

	i = -1;
	ft_printf("  ");
	while (++i < len)
		ft_printf("%d ", i);
	ft_putchar('\n');
	i = 0;
	while (matrix[i])
	{
		ft_printf("%d|", i);		
		ft_putintarr(matrix[i], len);
		ft_putchar('\n');
		i++;
	}
}