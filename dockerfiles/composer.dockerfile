FROM composer:latest

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
# RUN addgroup -g ${GID} laravel
# RUN adduser -G laravel -D -s /bin/sh -u ${UID} laravel

USER laravel

WORKDIR /var/www/html

ENTRYPOINT [ "composer" "--ignore-platform-reqs" ]