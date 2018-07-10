#include "libft.h"

intmax_t	ft_atoimax(const char *str)
{
	int				i;
	int				sign;
	intmax_t		res;

	res = 0;
	sign = 1;
	i = 0;
	while (ft_isws(str[i]) && str[i])
		i++;
	if (str[i] == '-' || str[i] == '+')
	{
		if (str[i] == '-')
			sign = -1;
		i++;
	}
	while (ft_isdigit(str[i]) && res >= 0)
		res = res * 10 + (intmax_t)(str[i++] - '0');
	if (res < 0)
	{
		if (sign == -1)
			return (0);
		return (-1);
	}
	return (res * sign);
}
