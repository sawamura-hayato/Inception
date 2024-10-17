FROM debian:bullseye

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

# test: vim
RUN apt-get update && apt install -y \
	php-fpm \
	wget \
	net-tools \
	php-mysqli \
	vim \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php && chmod -R 755 /run/php

COPY ./config/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/init.sh /usr/local/bin/
COPY ./tools/index.html /
RUN chmod +x /usr/local/bin/init.sh

EXPOSE 9000
EXPOSE 3306

ENTRYPOINT [ "init.sh" ]
