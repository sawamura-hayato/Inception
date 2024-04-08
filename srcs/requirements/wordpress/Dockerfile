FROM debian:buster

RUN apt update -y && apt install \ 
	php-fpm \ 
	php-mysql \
	curl -y

COPY ./tools/init.sh /
RUN chomod +x init.sh

COPY ./config/wp-config-docker.php /

CMD [ './init.sh' ]
