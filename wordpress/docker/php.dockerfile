FROM php:8.1-fpm-alpine

WORKDIR /var/www/html

COPY wordpress .

RUN docker-php-ext-install mysqli

RUN chown -R www-data:www-data /var/www/html