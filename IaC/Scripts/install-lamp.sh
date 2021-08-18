#!/bin/bash

apt-get -y update

# Silent MySQL install
export DEBIAN_FRONTEND=noninteractive

echo mysql-server-5.6 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.6 mysql-server/root_password_again password $dbpass | debconf-set-selections

# install LAMP stack
apt-get -y install apache2 mysql-server php7.3 libapache2-mod-php7.3 php7.3-mysql

# Write PHP info 
echo \<center\>\<h1\>Hello World!\</h1\>\<br/\>\</center\> > /var/www/html/helloworld.php
echo \<\?php phpinfo\(\)\; \?\> > /var/www/html/phpinfo.php

# Restart web server
apachectl restart

exit