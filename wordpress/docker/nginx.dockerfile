FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY docker/conf/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY wordpress .