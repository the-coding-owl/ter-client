FROM composer

RUN git clone https://github.com/helhum/ter-client.git .; git checkout v0.1.1; composer install
