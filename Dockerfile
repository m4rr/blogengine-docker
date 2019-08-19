FROM m4rr/normal-php-apache

# COPY ./php.ini-production /usr/local/etc/php/php.ini
# COPY ./data/config/php/vhost.conf /etc/apache2/sites-available/000-default.conf

# VOLUME [ "/var/www/html" ]
# RUN chmod 777 -R /var/www/html
# RUN chown www-data:www-data /var/www/html

ENV VERSION 3386
ENV DIST e2_distr_v${VERSION}.zip
ENV URL https://blogengine.ru/download/${DIST}

RUN curl $URL --output $DIST && unzip -o $DIST -d /var/www/html

EXPOSE 80
