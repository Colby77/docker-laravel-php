FROM php:8.1.12-fpm-alpine3.16

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql