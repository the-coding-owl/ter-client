FROM php:7.4-cli

RUN apt-get update && apt-get install -y libxml2-dev wget git zip libzip-dev
RUN docker-php-ext-install -j "$(nproc)" soap

COPY composer-installer.sh /composer-installer.sh
RUN chmod +x /composer-installer.sh
RUN /composer-installer.sh

RUN git clone https://github.com/helhum/ter-client.git app; cd app; git checkout v0.1.1; /composer.phar install
