FROM lavoweb/php-8.3:composer

ADD composer.json .
RUN composer install --ignore-platform-reqs
ADD ruleset.xml vendor/avra911/Magekube/ruleset.xml
RUN vendor/bin/phpcs --config-set installed_paths ../../avra911/Magekube/,../../magento/php-compatibility-fork
RUN vendor/bin/phpcs --config-set default_standard vendor/avra911/Magekube/ruleset.xml
