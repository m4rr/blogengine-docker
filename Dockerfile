FROM php:5.6-apache

RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libmcrypt-dev unzip less \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mcrypt mbstring mysqli pdo_mysql zip

RUN a2enmod rewrite actions

COPY ./php.ini-production /usr/local/etc/php/php.ini

ENV VERSION 3254
ENV FILENAME e2_distr_v${VERSION}.zip
ENV URL https://blogengine.ru/download/${FILENAME}

RUN curl -c - -O $URL && unzip $FILENAME -d /var/www/html

RUN chown www-data:www-data /var/www/html/

EXPOSE 80
