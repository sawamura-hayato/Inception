#!/bin/bash

# if [ ! -f wp-config-sample.php ]; then
# fi
rm -r *
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --locale=ja --allow-root
wp config create --dbname=wordpress_db --dbuser=user42 --dbpass=user42_password --dbhost=mariadb --allow-root
# wp config create --dbname=$WP_DB_NAME --dbuser=$WP_ADMIN --dbpass="your_password" --dbhost=$WP_DB_HOST --allow-root
# mv wp-config-sample.php wp-config.php
# wp core install --url=$WP_DOMAIN_NAME --title="test Inception" --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root
wp core install --url=user42.42.fr --title="test Inception" --admin_user=user42 --admin_password=user42_password --admin_email=user42@gmail.com --allow-root
/usr/sbin/php-fpm7.3 -F
