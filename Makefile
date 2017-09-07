# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ttshivhu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/31 12:28:51 by ttshivhu          #+#    #+#              #
#*   Updated: 2017/08/06 18:23:24 by ttshivhu         ###   ########.fr       *#
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_memset.c ft_bzero.c ft_memccpy.c ft_memcpy.c ft_memmove.c ft_memchr.c ft_memcmp.c \
	   ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c \
	   ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c get_next_line.c \
	   ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
	   ft_isprint.c ft_toupper.c ft_tolower.c ft_memalloc.c ft_memdel.c ft_strnew.c \
	   ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c \
	   ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c \
	   ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c \
	   ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c wide.c \
	   ft_lstdel.c ft_lstadd.c ft_lstiter.c  ft_lstmap.c ft_swap.c ft_putnchar.c ft_itoa_base.c \
	   ft_dlstdelstr.c ft_dlstnew.c ft_dlstsize.c ft_dlstaddback.c ft_dlstgethead.c ft_dlstremoveif.c \
	   ft_dlstadd.c ft_dlstgettail.c ft_dlstremovenode.c \

FLAG = -Wall -Werror -Wextra

OBJ = $(SRCS:.c=.o)

all: $(NAME)

$(NAME):
	@gcc $(FLAG) -c $(SRCS)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
