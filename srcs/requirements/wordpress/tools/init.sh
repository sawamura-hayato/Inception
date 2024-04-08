#!/bin/bash



# create directory to use in nginx container later and also to setup the wordpress conf
mkdir /var/www/
mkdir /var/www/html

cd /var/www/html


rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp


wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

mv /wp-config.php /var/www/html/wp-config.php

wp core install --url=$WORDPRESS_DOMAIN_NAME/ --title=HELLO --admin_user=$WORDPRESS_ADMIN --admin_password=password --admin_email=$WORDPRESS_ADMIN_EMAIL --skip-email --allow-root

wp user create $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=author --user_pass=password --allow-root

wp theme install astra --activate --allow-root

wp plugin install redis-cache --activate --allow-root

wp plugin update --all --allow-root

 
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php

wp redis enable --allow-root

/usr/sbin/php-fpm7.3 -F
