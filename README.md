# dev500/php-dev

[![Docker Stars](https://img.shields.io/docker/pulls/dev500/php-dev.svg)](https://hub.docker.com/r/dev500/php-dev/)
[![Docker Stars](https://img.shields.io/docker/stars/dev500/php-dev.svg)](https://hub.docker.com/r/dev500/php-dev/)
[![Docker Stars](https://img.shields.io/docker/automated/dev500/php-dev.svg)](https://hub.docker.com/r/dev500/php-dev/)

A Docker image for PHP development with multiple PHP version

 * unzip
 * git
 * curl
 * PHP5.6
 * PHP7.1
 * Composer with plugins
    * fxp/composer-asset-plugin
    * hirak/prestissimo

## How to change PHP version
use `to-php${version}` command in container, for example `to-php5.6`
