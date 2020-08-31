# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akerdeka <akerdeka@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/31 17:22:08 by akerdeka          #+#    #+#              #
#    Updated: 2020/08/31 17:45:22 by akerdeka         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRCS = ft_strlen.s ft_strcpy.s

OBJS = $(SRCS:.s=.o)

NAME = libasm.a

NASM = nasm

NASM_FLAGS = -f macho64

CC = gcc

CC_FLAGS = -Werror -Wextra -Wall


%.o: %.s
	@$(NASM) $(NASM_FLAGS) $<
	@echo "\033[38;2;255;204;0;1mCompiling $@...\n\033[0m"

all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@echo "\033[38;2;57;214;45;1mDone !"

clean:
	@rm -f $(OBJS)
	@echo "\033[38;2;230;36;36;1mDeleting objects...\n"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[38;2;230;36;36;1mDeleting $(NAME)\n"

re: fclean all