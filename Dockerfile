FROM alpine:latest
LABEL maintainer "Marat Saytakov <remarr+docker@gmail.com>"

RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN curl https://blogengine.ru/download/e2_distr_v3576.zip -o a.zip && unzip a.zip && rm a.zip

# EXPOSE 80
