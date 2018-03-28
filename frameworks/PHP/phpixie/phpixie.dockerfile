FROM tfb/php7:latest

ADD ./ /phpixie
WORKDIR /phpixie

RUN composer.phar install --no-progress

CMD service php7.2-fpm start && \
    nginx -c /phpixie/deploy/nginx.conf -g "daemon off;"
