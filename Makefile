include ./srcs/.env

.PHONY: setup up ps down stop rm login-$(MARIADB)

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

login-$(MARIADB):
	@docker exec -it $(MARIADB) $(SHELL)

