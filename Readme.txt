1. Dockerize the application
2. Create a Kubernetes deployment config
3. Provision an EKS using terraform





# FROM php:7.2-apache

# COPY . /var/www/html/

# COPY index.php /var/www/html/index.php
# EXPOSE 80
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

#Copy Application Files
#Open port 80

#Start Apache service

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

