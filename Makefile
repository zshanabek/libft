# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zshanabe <zshanabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/10 15:26:36 by zshanabe          #+#    #+#              #
#    Updated: 2018/06/25 13:31:23 by zshanabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror -Winit-self -Wunreachable-code -Wformat-y2k	   \
-Wformat-nonliteral -Wformat-security -Wformat=2 -Wmissing-include-dirs 	   \
-Wswitch-default -Wtrigraphs -Wstrict-overflow=5 -Wfloat-equal -Wundef		   \
-Wshadow -Wbad-function-cast

SRC = ft_atoi.c ft_memalloc.c ft_putchar.c ft_strcat.c ft_striter.c			   \
ft_strncmp.c ft_strsub.c ft_bzero.c ft_memccpy.c ft_putchar_fd.c ft_strchr.c   \
ft_striteri.c ft_strncpy.c ft_strtrim.c ft_isalnum.c ft_memchr.c ft_putendl.c  \
ft_strclr.c ft_strjoin.c ft_strnequ.c ft_tolower.c ft_isalpha.c ft_memcmp.c    \
ft_putendl_fd.c ft_strcmp.c ft_strlcat.c ft_strnew.c ft_toupper.c ft_isascii.c \
ft_memcpy.c ft_putnbr.c ft_strcpy.c ft_strlen.c ft_strnstr.c ft_isdigit.c	   \
ft_memdel.c ft_putnbr_fd.c ft_strdel.c ft_strmap.c ft_strrchr.c ft_isprint.c   \
ft_memmove.c ft_putstr.c ft_strdup.c ft_strmapi.c ft_strsplit.c ft_itoa.c      \
ft_memset.c ft_putstr_fd.c ft_strequ.c ft_strncat.c ft_strstr.c ft_isempty.c   \
ft_lstnew.c	ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c    \
ft_lstaddend.c ft_intlen.c ft_isws.c ft_print2darr.c ft_intmax.c ft_nbrendl.c  \
ft_itoa_base.c ft_itoa_base_u.c ft_strupcase.c ft_wstrsub.c ft_wstrnew.c       \
ft_wstrlen.c ft_putstrw.c ft_putsymbol.c ft_wstrdup.c ft_wstrlen.c			   \
ft_charlen.c ft_create2darr.c ft_create2dintarr.c get_next_line.c			   \
ft_print2dintarr.c ft_print1dintarr.c

PF_SRC = pf/pf_start.c pf/pf_spec_handlers.c pf/pf_colors.c pf/pf_itoa_max.c   \
pf/pf_pad_prec_size.c pf/pf_dspec.c pf/pf_uspec.c pf/pf_helpers.c pf/pf_utils.c\

OBJ = $(SRC:.c=.o)
PF_OBJ = $(PF_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(PF_OBJ)
	@ar rc $(NAME) $(OBJ) $(PF_OBJ)
	@ranlib $(NAME)
	@echo "\x1b[32mLibrary is successfully built!\x1b[0m"
	
clean:
	@rm -f $(OBJ)
	@rm -f $(PF_OBJ)

fclean: clean
	@rm -f $(NAME)
	
re: fclean all

%.o: %.c
	@gcc $(FLAGS) -c -o $@ $<

.PHONY: all clean fclean re

.NOTPARALLEL: all clean fclean re