FROM debian:buster

RUN apt update -y && apt install \ 
	php-fpm \ 
	php-mysql \
	curl -y

COPY ./tools/init.sh /
RUN chmod +x init.sh

COPY ./config/wp-config.php /

CMD [ "./init.sh" ]
