FROM wordpress:cli-php8.1

WORKDIR /var/www/html

ENTRYPOINT ["wp"]