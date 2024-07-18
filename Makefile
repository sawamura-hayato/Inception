include ./srcs/.env

.PHONY: setup
setup: build up ps

.PHONY: host
host:
	sudo echo "127.0.0.1 user42.42.fr" >> /etc/hosts

.PHONY: build
build:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) build
	mkdir -p /Users/sawamurashun/data
	mkdir -p /Users/sawamurashun/data/mariadb
	mkdir -p /Users/sawamurashun/data/wordpress

# mkdir -p /home/$(USER)/data
# mkdir -p /home/$(USER)/data/mariadb
# mkdir -p /home/$(USER)/data/wordpress
.PHONY: run
run:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) up -d

.PHONY: ps
ps:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) ps

.PHONY: down
down: stop rm

.PHONY: stop
stop:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) stop

.PHONY: rm
rm:
	docker compose -f ./$(SRCS)/$(COMPOSE_FILE) rm

.PHONY: log
log:
	 docker-compose -f ./$(SRCS)/$(COMPOSE_FILE) logs

.PHONY: login-mariadb
login-mariadb:
	docker exec -it mariadb $(SHELL)

.PHONY: login-wordpress
login-wordpress:
	docker exec -it	wordpress $(SHELL)

.PHONY: login-nginx
login-nginx:
	docker exec -it nginx $(SHELL)

.PHONY: clean
clean: down
	docker volume rm srcs_db srcs_wp
	docker network rm srcs_front srcs_back
	rm -rf /Users/sawamurashun/data

.PHONY: fclean
fclean: clean
	sudo sed -i '' '/127.0.0.1 user42.42.fr/d' /etc/hosts
