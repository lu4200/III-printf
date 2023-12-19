# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lumaret <lumaret@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/17 18:27:22 by lumaret           #+#    #+#              #
#    Updated: 2023/12/19 14:32:30 by lumaret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


CC = clang

CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

MAIN	=	main.c

TNAME	= test

SRCS = ft_printf.c ft_putstr.c ft_putnbrbase.c ft_putunsigned.c ft_putptr.c \
	ft_putchar.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

test:		$(NAME) 
			$(CC) $(CFLAGS) -o $(TNAME) $(MAIN) -L. -lftprintf
$(NAME): $(OBJS)

	$(CC) -c $(SRCS) $(CFLAGS)
	ar -rc $(NAME) $(OBJS)
		
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all