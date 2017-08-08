#!/bin/bash
############################################################
# Let us Setup Apache2 for Ubuntu 16.04 with Php 7 and MySQL
############################################################
# Install Apache2
sudo apt-get update
sudo apt-get install -y --force-yes apache2
# Add PHP 7.0 Repository
sudo add-apt-repository -y ppa:ondrej/php
# Install PHP 7.0
sudo apt-get update
sudo apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-fpm php7.0-mysql
# Copy our virtual host template to sites-enabled overwriting the default site conf
sudo cp tests/_data/defaultsite.tpl /etc/apache2/sites-available/000-default.conf
# Enable mod rewrite module
sudo a2enmod rewrite
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.0-fpm
# Set ServerName Globally
sudo cp tests/_data/servername.tpl /etc/apache2/conf-available/servername.conf
# Add testing of Apache Bad Bot Blocker
sudo mkdir /etc/apache2/custom.d

sudo a2enconf servername
# Restart apache
sudo service apache2 restart
# Restart PHP
sudo service php7.0-fpm restart