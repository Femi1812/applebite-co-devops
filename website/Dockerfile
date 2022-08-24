FROM php:7.2-apache

WORKDIR /var/www/html/
COPY . /var/www/html/

# COPY index.php /var/www/html/index.php
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]