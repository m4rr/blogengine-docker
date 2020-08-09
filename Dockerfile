FROM m4rr/normal-php-apache
LABEL maintainer "Marat Saytakov <remarr+docker@gmail.com>"

RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN curl https://blogengine.ru/download/e2_distr_v3576.zip -o a.zip && unzip a.zip
#RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/ && \
#    cp /etc/apache2/mods-available/headers.load /etc/apache2/mods-enabled/
RUN a2enmod proxy \
&& a2enmod proxy_http \
&& a2enmod ssl \
&& a2enmod rewrite \
&& a2enmod headers

EXPOSE 80
