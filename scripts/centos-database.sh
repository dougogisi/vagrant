#!/bin/bash

# MYSQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

/sbin/service mysqld start

mysql -u root -e "SHOW DATABASES";
