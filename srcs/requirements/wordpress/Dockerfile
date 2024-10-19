FROM debian:bullseye

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

# test: vim
RUN apt-get update && apt install -y \
	php-fpm \
	php-mysqli \
	wget \
	net-tools \
	vim \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php && \
	chmod -R 755 /run/php && \
	mkdir -p /var/log/php && \
	chown www-data:www-data /var/log/php

COPY ./config/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./tools/init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh

EXPOSE 9000
EXPOSE 3306

ENTRYPOINT [ "init.sh" ]
