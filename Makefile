# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zshanabe <zshanabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/10 15:26:36 by zshanabe          #+#    #+#              #
#    Updated: 2018/08/11 18:21:34 by zshanabe         ###   ########.fr        #
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
ft_print2dintarr.c ft_print1dintarr.c ft_intcpy.c ft_atoimax.c ft_del2darr.c   \
ft_2darrlen.c ft_strresub.c ft_atoi_base.c

PF_SRC_NAME = pf_start.c pf_spec_handlers.c pf_colors.c pf_itoa_max.c	       \
pf_pad_prec_size.c pf_dspec.c pf_uspec.c pf_helpers.c pf_utils.c               \

PF2_SRC_NAME = ./ft_printf.c \
			\
			./start/ft_crossroad.c ./start/ft_bublik.c ./start/ft_ointer.c \
			./start/ft_n.c ./start/ft_valid.c ./start/ft_invalid.c\
			\
			./uni/ft_uni.c ./uni/ft_usize.c\
			\
			./octa/ft_octa.c ./octa/ft_octa_left.c ./octa/ft_octa_right.c\
			\
			./hex/ft_hex.c ./hex/ft_hex_left.c \
			./hex/ft_hex_right.c\
			\
			./lib/ft_itoa_base.c ./lib/ft_uitoa_base.c ./lib/ft_double_c.c\
			./lib/ft_initial_style.c ./lib/ft_itoa2.c\
			\
			./int/ft_number.c ./int/ft_number_left.c \
			./int/ft_number_right.c \
			\
			./char/ft_char.c ./char/ft_uchar.c\
			\
			./string/ft_string.c ./string/ft_ustring_left.c \
			./string/ft_ustring_right.c

PF_SRC = $(addprefix pf/, $(PF_SRC_NAME))
PF2_SRC = $(addprefix printf/, $(PF2_SRC_NAME))

OBJ = $(SRC:.c=.o)
PF_OBJ = $(PF_SRC:.c=.o)
PF2_OBJ = $(PF2_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(PF_OBJ) $(PF2_OBJ)
	@ar rc $(NAME) $(OBJ) $(PF_OBJ) $(PF2_OBJ)
	@ranlib $(NAME)
	@echo "\x1b[32mLibrary is successfully built\x1b[0m"

%.o: %.c
	@gcc $(FLAGS) -o $@ -c $<

clean:
	@rm -f $(OBJ)
	@rm -f $(PF_OBJ)
	@rm -f $(PF2_OBJ)

fclean: clean
	@rm -f $(NAME)
	
re: fclean all

.PHONY: all clean fclean re

.NOTPARALLEL: all clean fclean re