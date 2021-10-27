#!/bin/bash

echo "Venga, colega. ¡Vamos alla!"
echo ""
echo "=============================="
echo "||       Actualizando       ||"
echo "||   Paquetes disponibles   ||"
echo "||        desde APT         ||"
echo "=============================="


apt update

# apt install apache2 ufw
# sudo ufw allow "Apache Full"
# libapache2-mod-php

apt install -Y mariadb-server-10.1 mariadb-client-10.1 mariadb-client mariadb-server php7.2 php7.2-cli php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-mysql php7.2-xml php7.2-zip php7.2-xsl

######## MARIADB ###########

CREATE DATABASE miprimerwp;
CREATE USER 'pepi'@localhost IDENTIFIED BY 'usuario';
GRAN ALL ON miprimerwp miprimerwp.* TO 'pepi'@'localhost';

echo -e "<VirtualHost *:80> \n ServerAdmin webmaster@localhost \n ServerName wp.iaw.com \n DocumentRoot /var/www/wordpress/public \n ErrorLog /var/log/apache2/wp.iaw.com \n CustomLog /var/log/c-wp.iaw.com combined \n </VirtualHost> \n" > /etc/apache2/sites-available/wp.conf


wget https://wordpress.org/latest.tar.gz

tar xvzf latest.tar.gz

mv wordpress/ /var/www/wordpress
chmod -R 770 /var/www/wordpress

chmod -R www-data:www-data /var/www/wordpress