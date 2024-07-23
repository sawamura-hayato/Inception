#!/bin/bash

service mysql start

mariadb -u root << EOF
CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE USER IF NOT EXISTS 'super'@'%' IDENTIFIED BY 'super';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'super'@'%';
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'user';
GRANT SELECT ON wordpress_db.* TO 'user'@'%';
FLUSH PRIVILEGES;
EOF

service mysql stop

mysqld
