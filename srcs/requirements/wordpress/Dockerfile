FROM debian:buster

RUN apt update -y && apt install \ 
	php-fpm \ 
	php-mysql \
	curl -y

COPY ./tools/script.sh /
COPY ./config/wp-config-docker.php /


CMD [ 'bash', 'script.sh' ]
