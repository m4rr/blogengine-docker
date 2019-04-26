FROM php:7-apache

# RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev mysqli unzip git \
#     && rm -rf /var/lib/apt/lists/* \
#     && pecl install mcrypt-1.0.2 \
#     && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
#     && docker-php-ext-install gd mcrypt mbstring mysqli pdo_mysql zip

# RUN add-apt-repository ppa:ondrej/php

RUN apt-get update && apt-get install -y unzip \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	&& docker-php-ext-install -j$(nproc) iconv pecl phpize pdo pdo_mysql  mysqli \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-enable mysqli && apachectl restart

RUN a2enmod rewrite actions

ENV VERSION 3254
ENV DIST e2_distr_v${VERSION}.zip
ENV URL https://blogengine.ru/download/${DIST}

RUN curl -c - -O $URL && unzip $DIST -d /var/www/html

RUN chown www-data:www-data /var/www/html/

EXPOSE 80
