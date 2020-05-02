FROM ubuntu:16.04

RUN apt-get update 

RUN apt-get -y install sudo

RUN sudo apt-get -y install apache2

COPY adminer-4.7.3.php /var/www/html/

# RUN echo"Geographic area: 6" 

# RUN echo "Time zone: 44"

# CMD sudo apt -y install php libapache2-mod-php php-mysql
RUN DEBIAN_FRONTEND="noninteractive" apt -y install php libapache2-mod-php php-mysql

# CMD sudo apt-get -y install php libapache2-mod-php php-mcrypt php-mysql

COPY php.ini /etc/php/7.0/apache2/

CMD /etc/apache2/mods-enabled/

CMD sudo chmod 777 -R .

COPY dir.conf /etc/apache2/mods-enabled/


CMD sudo chmod 777 -R .

COPY apache-conf /etc/apache2/apache2.conf

CMD sudo chmod 777 -R .
# RUN sudo service apache2 start

EXPOSE 80
# CMD [“apachectl”, “-DFOREGROUND”]

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
# CMD /usr/sbin/apache2ctl -D FOREGROUND


