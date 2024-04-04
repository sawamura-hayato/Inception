SRCS := srcs
COMPOSE_FILE := docker-compose.yml

.PHONY: setup up ps down stop rm mariadb

setup: up ps

build:
	@docker compose -f ./$(SRCS)/$(COMPOSE_FILE) build

up:
	@docker compose -f ./$(SRCS)/$(COMPOSE_FILE) up -d

ps:
	@docker compose -f ./$(SRCS)/$(COMPOSE_FILE) ps

down: stop rm

stop:
	@docker compose -f ./$(SRCS)/$(COMPOSE_FILE) stop

rm:
	@docker compose -f ./$(SRCS)/$(COMPOSE_FILE) rm

mariadb:
	docker build -t mariadb $(SRCS)/container/mariadb/.
	docker run --name mariadb-container -e MYSQL_ROOT_PASSWORD=password -dp 3306:3306 mariadb

