#!/bin/sh

if [ ! -f /etc/nginx/ssl/nginx.crt ]; then
	openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=bdurmus.42.fr";
fi

exec "$@"