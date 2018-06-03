FROM php:7.1-fpm
RUN apt-get update -y && apt-get install -y libpng-dev libsqlite3-dev
RUN docker-php-ext-install gd pdo pdo_sqlite exif pdo_mysql
 
RUN apt-get install -y libmagickwand-dev
RUN pecl install imagick-beta
RUN echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini
