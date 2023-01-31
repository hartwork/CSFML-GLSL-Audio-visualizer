##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## make build
##

SRC	=	*.c

NAME	=	test

ERROR = -W -Wall -Wextra

SFML = -lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system -lsfml-network -DGL_GLEXT_PROTOTYPES -lOpenGL

all:
	g++ -o $(NAME) $(SRC) $(SFML) $(ERROR) -lm
clean:
	rm -f $(CRITO) $(CRITA) unit-tests

fclean:
	rm -f $(NAME)

re:	fclean all

tests_run:
	g++ -o unit-tests ./lib/my/*.c ./tests/*.c $(SRC) -lriterion --coverage
	./unit-tests
