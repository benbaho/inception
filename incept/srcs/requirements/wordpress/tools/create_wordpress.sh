#!/bin/sh

if [ -f ./wp-config.php ]
then
	echo "Wordpress has been already downloaded."
else

	wget http://wordpress.org/latest.tar.gz
	tar xfz latest.tar.gz
	mv wordpress/* .
	rm -rf latest.tar.gz wordpress wp-config.php

	sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
	sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
	sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
	sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config-sample.php

	cp wp-config-sample.php wp-config.php
	wp core install --allow-root --url=${DOMAIN_NAME} --title=${MYSQL_USER} --admin_user=${WP_ROOT_LOGIN} --admin_password=${MYSQL_ROOT_PASSWORD} --admin_email=${WP_ROOT_EMAIL}
	wp user create ${MYSQL_USER} ${WP_USER_EMAIL} --user_pass=${MYSQL_PASSWORD} --role=author --allow-root
	wp theme install inspiro --activate --allow-root

fi

/usr/sbin/php-fpm7.3 -F
