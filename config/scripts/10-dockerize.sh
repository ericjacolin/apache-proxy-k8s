#!/bin/bash
dockerize \
    -template /etc/php/7.4/cli/php.ini.tpl:/etc/php/7.4/cli/php.ini \
    -template /etc/php/7.4/apache2/php.ini.tpl:/etc/php/7.4/apache2/php.ini \
    -template /etc/msmtprc.tpl:/etc/msmtprc
