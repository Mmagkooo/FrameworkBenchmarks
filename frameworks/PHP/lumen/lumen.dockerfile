FROM tfb/php7:latest

ADD ./ /lumen
WORKDIR /lumen

RUN composer.phar install --no-progress

RUN chmod -R 777 /lumen

CMD service php7.2-fpm start && \
    nginx -c /lumen/deploy/nginx.conf -g "daemon off;"
