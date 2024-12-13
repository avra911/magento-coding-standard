FROM lavoweb/php-8.3:composer

ADD composer.json .
RUN composer install --ignore-platform-reqs
ADD ruleset.xml vendor/avra911/magento-coding-standard/ruleset.xml
RUN vendor/bin/phpcs --config-set installed_paths ../../avra911/magento-coding-standard/,../../magento/php-compatibility-fork
