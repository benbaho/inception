FROM debian:buster 

RUN apt-get update && apt-get install -y nginx openssl 

RUN	openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
    -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=bdurmus.42.fr"

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
