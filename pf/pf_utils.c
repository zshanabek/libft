/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pf_utils.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zshanabe <zshanabe@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/02 23:56:05 by zshanabe          #+#    #+#             */
/*   Updated: 2018/06/02 23:56:05 by zshanabe         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_sign_order(t_item *form, int *count)
{
	if (form->sign == '+')
		(*count)++;
	if ((form->pad <= 0 && form->zer <= 0) ||
	(form->pad > 0 && form->zer <= 0 && form->zero == true) ||
	(form->zer > form->pad))
		form->order = 1;
	else if (form->pad > 0 && form->zer > 0)
		form->order = 2;
	else if (form->pad > 0 && form->zer <= 0)
		form->order = 3;
}

char	*ft_strfill(size_t size, char c)
{
	char *str;

	str = (char *)malloc(sizeof(char) * (size + 1));
	if (str == NULL)
		return (NULL);
	ft_memset(str, c, size);
	str[size] = '\0';
	return (str);
}

void	create_output(t_item *form)
{
	if (form->zer > 0)
		form->zer_str = ft_strfill(form->zer, '0');
	if (form->pad > 0 && form->zero == true)
		form->pad_str = ft_strfill(form->pad, '0');
	else if (form->pad > 0 && form->zero == false)
		form->pad_str = ft_strfill(form->pad, ' ');
}

t_item	*create_struct(void)
{
	t_item *form;

	form = (t_item *)malloc(sizeof(t_item));
	if (form == NULL)
		return (NULL);
	form->plus = false;
	form->minus = false;
	form->space = false;
	form->zero = false;
	form->hash = false;
	form->prefix = false;
	form->doubled = 0;
	form->pad = 0;
	form->zer = -1;
	form->sign = 'E';
	form->size = 'E';
	form->order = 0;
	return (form);
}
