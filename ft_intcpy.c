#include "libft.h"

void	ft_intcpy(int *arr1, const int *arr2, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n)
	{
		arr1[i] = arr2[i];
		i++;
	}
}
