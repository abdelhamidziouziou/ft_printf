# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abziouzi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/10 14:27:00 by abziouzi          #+#    #+#              #
#    Updated: 2021/12/10 14:41:57 by abziouzi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc

FLAGS = -Wall -Wextra -Werror -I libftprintf.a

AR = ar crs

RM = rm  -rf





.PHONY: all bonus clean fclean re

all: $(NAME)

bonus: all $(BOBJ)
	$(AR) $(NAME) $(BOBJ)

%.o : %.c libft.h
	$(CC) $(FLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ) $(BOBJ)

fclean: clean
	$(RM) $(NAME)

re : fclean all
