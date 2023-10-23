FROM debian:buster

RUN apt-get update && apt-get -y install \ 
	wget \  
	curl \
	php \
	php-mysql \
	php-fpm \
	&& apt-get clean

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir /run/php

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

COPY ./tools/create_wordpress.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/create_wordpress.sh
ENTRYPOINT ["/usr/local/bin/create_wordpress.sh"]

WORKDIR /var/www/html

EXPOSE 9000