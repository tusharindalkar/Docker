FROM ubuntu

RUN apt-get update 

RUN apt-get -y install sudo

# RUN sudo apt-get install -y wget 

# RUN sudo apt-get -y install vim 

# RUN sudo apt-cache search apache2

RUN sudo apt-get -y install apache2

# RUN sudo apt-get -y install php libapache2-mod-php php-mcrypt php-mysql

# RUN cd /var/www/html/

# RUN sudo apt-get -y install wget

# CMD sudo chmod 777 -R .

COPY adminer-4.7.3.php /var/www/html/

# RUN cd

# RUN sudo apt-get -y install php-pgsql

# CMD sudo apt -y install php libapache2-mod-php php-mysql
CMD echo"Geographic area: 6" 
CMD echo "Time zone: 44"
CMD sudo apt -y install php libapache2-mod-php php-mysql

# CMD rm /etc/php/7.0/apache2/dir.conf

COPY php.ini /etc/php/7.0/apache2/
CMD /etc/apache2/mods-enabled/
CMD sudo chmod 777 -R .
COPY dir.conf /etc/apache2/mods-enabled/
CMD sudo chmod 777 -R .
RUN service apache2 start

RUN service apache2 restart

