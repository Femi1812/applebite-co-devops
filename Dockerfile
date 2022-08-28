# FROM php:7.2-apache
FROM devopsedu/webapp
WORKDIR /var/www/html/
# COPY . /var/www/html/

# COPY index.php /var/www/html/index.php
# EXPOSE 80
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

#Copy Application Files
COPY . /var/www/html/

#Open port 80
EXPOSE 8009

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# Start Selenium Test
# COPY selenium-server-standalone-3.14.0.jar /tmp
# RUN nohup java -jar /tmp/selenium-server-standalone-3.14.0.jar &

# CMD ["/bin/bash"]




# FROM php:7.2-apache

# WORKDIR /var/www/html/
# COPY . /var/www/html/

# # COPY index.php /var/www/html/index.php
# EXPOSE 80
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]