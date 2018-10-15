# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tjones <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/07 17:53:58 by tjones            #+#    #+#              #
#    Updated: 2018/08/28 17:31:09 by tjones           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

TAG = 	gcc
NAME	= libft.a
FLAG	= -Wall -Werror -Wextra

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_memchr.c \
	ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c \
	ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c \
	ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c \
	ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c \
	ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c \
	ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c \
	ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c \
	ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
	ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c \
	ft_lstmap.c ft_islower.c ft_isspace.c ft_isupper.c ft_memccpy.c \
	ft_stpcpy.c ft_stralloc.c ft_strqdupc.c ft_strlenc.c ft_strfill.c \
	ft_stpcpyc.c ft_strallocc.c ft_strcount.c ft_llintlen.c get_next_line.c \
	ft_strnew_double.c ft_list_at.c ft_list_clear.c ft_list_find.c \
	ft_list_foreach_if.c ft_list_foreach.c ft_list_last.c ft_list_merge.c \
	ft_list_push_back.c ft_list_push_front.c ft_list_push_params.c \
	ft_list_remove_if.c ft_list_reverse_fun.c ft_list_reverse.c \
	ft_list_size.c ft_list_sort.c ft_create_elem.c ft_countwords.c \
	ft_isnumber.c \

all		: $(NAME)

$(NAME)	:
	@echo "\x1B[36mI'm trying to make a Library over here\x1B[0m"
	@$(TAG) $(FLAG) -c $(SRC)
	@ar rc $(NAME) *.o
	@ranlib $(NAME)
	@echo "\x1B[32mAlright, I made a f*&king library\x1B[0m"

clean	:
	@rm -f *.o
	@echo "\x1B[31mThings were removed...\x1B[0m"

fclean: clean
	@echo "\x1B[31mIt's all gone...all that work...for nothing\x1B[0m"
	@rm -f libft.a

re:			fclean all
	@echo "						Repeat everything!!!!!!!"
