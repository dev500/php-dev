# Docker PHP-DEV
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
use `update-alternatives --set php /usr/bin/php${version}` command in container. For example
`update-alternatives --set php /usr/bin/php5.6`
