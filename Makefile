# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pruiz-ca <pruiz-ca@student.42madrid.co>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/23 14:17:28 by pruiz-ca          #+#    #+#              #
#    Updated: 2021/06/08 11:20:44 by pruiz-ca         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libasm.a

S		=	src/
M		=	main/

SRCS		=	$Sft_strlen.s $Sft_read.s $Sft_write.s $Sft_strcmp.s \
			$Sft_strcpy.s $Sft_strdup.s $Sft_list_push_front.s \
			$Sft_list_size.s
OBJS		=	$(SRCS:.s=.o)

NASM		=	nasm -f macho64

all:		$(NAME)

$(NAME):	$(OBJS)
			@ar rcs $(NAME) $(OBJS)

%.o:		%.s
			@$(NASM) $<

clean:
			@rm -f $(OBJS) $(BONUS_OBJS)

fclean:		clean
			@rm -f $(NAME)

re:			fclean all

.PHONY:		clean fclean re
