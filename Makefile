NAME = libftprintf.a

SRC =	ft_form_c.c ft_form_di.c ft_form_p.c ft_form_s.c ft_form_u.c \
	ft_form_x.c ft_printf.c

OBJ = ${SRC:.c=.o}

FLAGS = -Wall -Werror -Wextra

all: ${NAME}

test: all
	@cc ${FLAGS} -o test main.c ${SRC} ${NAME}
	@make fclean -C libft/
	@make fclean
	@clear
	@./test

${NAME}: ${OBJ}
	ar -rcs $@ ${OBJ}

${OBJ}: ${SRC}
	cc ${FLAGS} -c ${SRC}

clean: 
	rm -f ${OBJ}

fclean: clean
	rm -f ${NAME}

re: clean fclean all

.PHONY: all clean fclean re
