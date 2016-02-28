#!/bin/bash

# update CentOS with any patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
/sbin/service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start


# PHP
yum install -y php php-cli php-common php-devel php-mysql

# MYSQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

/sbin/service mysqld start

mysql -u root -e "SHOW DATABASES";


# Download Starter Content


/sbin/service httpd restart
