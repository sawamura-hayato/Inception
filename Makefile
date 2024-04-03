NAME := test_mariaDB

.PHONY: all

all: $(NAME)

$(NAME):
	apt-get update
	apt-get install -y mariadb-server
	rm -rf /var/lib/apt/lists/*
