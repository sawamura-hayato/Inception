include ./srcs/.env

.PHONY: setup up ps down stop rm log login-mariadb login-wordpress

setup: build up ps

build:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) build

up:
	mkdir -p /home/$(USER)/data
	mkdir -p /home/$(USER)/data/mariadb
	mkdir -p /home/$(USER)/data/wordpress
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) up -d

ps:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) ps

down: stop rm

stop:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) stop

rm:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) rm

log:
	 docker-compose -f ./$(SRCS)/$(COMPOSE_FILE) logs

login-mariadb:
	docker exec -it mariadb $(SHELL)

login-wordpress:
	docker exec -it	wordpress $(SHELL)
