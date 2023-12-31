# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kbrener- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/06 15:53:15 by kbrener-          #+#    #+#              #
#    Updated: 2023/10/12 16:14:04 by kbrener-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc

AR = ar

ARFLAGS = rc

CFLAGS = -Wall -Wextra -Werror

SRC = ft_isascii.c ft_memcpy.c ft_putendl_fd.c ft_strdup.c ft_strtrim.c \
      ft_atoi.c ft_isdigit.c ft_memmove.c ft_striteri.c ft_strlen.c \
      ft_bzero.c ft_isprint.c ft_putnbr_fd.c ft_strmapi.c ft_substr.c \
      ft_calloc.c ft_itoa.c ft_memset.c ft_strjoin.c ft_memchr.c \
      ft_putstr_fd.c ft_strlcat.c ft_strncmp.c ft_tolower.c ft_isalnum.c \
      ft_putchar_fd.c ft_split.c ft_strnstr.c ft_toupper.c ft_isalpha.c \
      ft_memcmp.c ft_strchr.c ft_strlcpy.c ft_strrchr.c

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
	ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
	ft_lstmap.c

OBJ = $(SRC:.c=.o)

BONUS_OBJ = $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
		$(AR) $(ARFLAGS) $(NAME) $(OBJ)
		ranlib $(NAME)

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
		rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all

bonus: $(OBJ) $(BONUS_OBJ)
	ar rcs $(NAME) $(OBJ) $(BONUS_OBJ)

.PHONY: all clean fclean re bonus
