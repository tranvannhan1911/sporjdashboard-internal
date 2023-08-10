FROM php:fpm

RUN apt-get update -y

RUN apt-get install curl nano -y

RUN docker-php-ext-install pdo pdo_mysql

RUN docker-php-ext-install mysqli

COPY php.ini /usr/local/etc/php/php.ini

COPY ./web /app