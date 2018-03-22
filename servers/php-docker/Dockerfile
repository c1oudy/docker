FROM php:5.6-apache
MAINTAINER "Phuc Dat <phuc@dat.bich>"
RUN apt-get update && \
            apt-get install -y libfreetype6-dev libjpeg62-turbo-dev && \
            docker-php-ext-install mysqli && \
            docker-php-ext-install mbstring && \
            docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/  &&  \
            docker-php-ext-install gd
RUN docker-php-ext-install pdo pdo_mysql
ADD --chown=www-data:www-data [web-source] /var/www/html
COPY ./docker-php-ext-ixed.ini /usr/local/etc/php/conf.d
COPY ./ixed.5.6.lin /usr/local/lib/php/extensions/no-debug-non-zts-20131226