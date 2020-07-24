#!/bin/bash
# https://pimylifeup.com/raspberry-pi-nextcloud-server/
PHP_VER=7.3
apt install apache2
apt install php${PHP_VER} php{PHP_VER}-gd php${PHP_VER}-sqlite3 php${PHP_VER}-curl php${PHP_VER}-zip php${PHP_VER}-xml php${PHP_VER}-mbstring php${PHP_VER}-mysql php${PHP_VER}-bz2 php${PHP_VER}-intl php${PHP_VER}-smbclient php${PHP_VER}-imap php${PHP_VER}-gmp

apt install mariadb-server

sudo apt install php-mysql

# from here, it is needed to configure interactively 
sudo mysql_secure_installation
sudo mysql -u root -p


cd /var/www/
curl https://download.nextcloud.com/server/releases/latest.tar.bz2 | tar -jxv
mkdir -p /var/www/nextcloud/data
chown -R www-data:www-data /var/www/nextcloud/
chmod 750 /var/www/nextcloud/data
