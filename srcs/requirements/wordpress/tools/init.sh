#!/bin/bash

# if [ ! -f wp-config-sample.php ]; then
# fi
rm -r *
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --locale=ja --allow-root
wp config create --dbname=${WP_DB_NAME} --dbuser=${WP_ADMIN} --dbpass=${WP_ADMIN_PASSWORD} --dbhost=${WP_DB_HOST} --allow-root
wp core install --url=${WP_DOMAIN_NAME} --title="test Inception" --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --allow-root
/usr/sbin/php-fpm7.4 -F
