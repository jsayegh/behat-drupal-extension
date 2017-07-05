FROM php:5.6
MAINTAINER Jad Sayegh <j.sayegh@eweev.com>

RUN curl -sS https://getcomposer.org/installer | php 
RUN mv composer.phar /usr/local/bin/composer
RUN mkdir -p /opt/drupalextenstion
ADD composer.json /opt/drupalextension
RUN ls /opt/drupalextension
RUN composer install -d /opt/drupalextension
RUN ln -s /opt/drupalextension/bin/behat /usr/local/bin/behat