FROM m4rr/normal-php-apache
LABEL maintainer "Marat Saytakov <remarr+docker@gmail.com>"

RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN curl https://blogengine.ru/download/e2_distr_v3386.zip -o a.zip && unzip a.zip

EXPOSE 80
