#include "libft.h"

int		*ft_intdup(int const *src, size_t len)
{
	int		*p;

	p = malloc(len * sizeof(int));
   	if (p == NULL)
		return (NULL);
	ft_memcpy(p, src, len * sizeof(int));
	return (p);
}