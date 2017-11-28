FROM phase2/devtools-build:php56
MAINTAINER Jad Sayegh <j.sayegh@eweev.com>

RUN mkdir -p /opt/drupalextenstion
COPY composer.json /opt/drupalextension
RUN composer install -d /opt/drupalextension && ln -s /opt/drupalextension/bin/behat /usr/local/bin/behat
