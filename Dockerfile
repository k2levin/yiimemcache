FROM yiisoftware/yii2-php:5.6-fpm

RUN apt-get update
RUN apt-get -y install libz-dev libmemcached-dev libmemcached11 libmemcachedutil2 build-essential
RUN pecl install memcached-2.2.0 && docker-php-ext-enable memcached
RUN apt-get -y install nginx vim
