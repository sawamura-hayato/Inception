# SPECIFIE LA DISTRIBUTION
FROM debian:buster

RUN apt-get update && apt install php-fpm  -y

# To create the PID file (/run/php/php7.3-fpm.pid)
RUN mkdir /run/php

# To allow external connections
COPY ./config/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir -p /var/www/html/wordpress
# To create index.php  
COPY ./tools/index.php /var/www/html/wordpress/

EXPOSE 9000 

ENTRYPOINT ["/usr/sbin/php-fpm7.3","-F" ]
