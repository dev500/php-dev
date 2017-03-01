FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 14AA40EC0831756756D7F66C4F4EA0AAE5267A6C \
        && echo deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main >> /etc/apt/sources.list \
        && apt-get update \
        && apt-get install -y --no-install-recommends \
                ca-certificates \
                unzip \
                git \
                curl \
                php5.6-cli \
                        php5.6-mbstring \
                        php5.6-xml \
                        php5.6-curl \
                        php5.6-sqlite \
                        php5.6-xdebug \
                php7.1-cli \
                        php7.1-mbstring \
                        php7.1-xml \
                        php7.1-curl \
                        php7.1-sqlite \
                        php7.1-xdebug \
        && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer \
        | php -- --install-dir=/usr/local/bin --filename=composer \
        && composer global require "fxp/composer-asset-plugin:^1.2.0" \
        && composer global require "hirak/prestissimo:^0.3.5" \
        && rm -r /root/.composer/cache/*

RUN echo '#!/bin/bash\n update-alternatives --set php /usr/bin/php5.6' > /usr/local/bin/to-php5.6
RUN echo '#!/bin/bash\n update-alternatives --set php /usr/bin/php7.1' > /usr/local/bin/to-php7.1

RUN chmod +x /usr/local/bin/to-php*
