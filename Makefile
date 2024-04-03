NAME := test_mariaDB

.PHONY: all clean

all: $(NAME)

$(NAME):
	docker build -t mariadb srcs/container/mariadb/.
	docker run --name mariadb-container -e MYSQL_ROOT_PASSWORD=password -dp 3306:3306 mariadb

clean:
	docker stop mariadb-container
	docker rm mariadb-container

fclean: clean
	docker image rm mariadb

