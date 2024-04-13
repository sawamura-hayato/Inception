# SPECIFIE LA DISTRIBUTION
FROM debian:buster

RUN apt-get update && apt install php-fpm  -y

RUN mkdir /run/php

COPY ./config/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/index.php /var/www/html/

EXPOSE 9000 

ENTRYPOINT ["/usr/sbin/php-fpm7.3","-F" ]
