#!/bin/bash
ln -s /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/
apparmor_parser -R /etc/apparmor.d/usr.sbin.mysqld
mkdir /var/run/mysqld
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
systemctl start mysql
cd /var/www/app/sns/;
rake db:create RAILS_ENV=production
mysql -u root -ptoor -D bad_sns_production < /root/bad_sns_production.sql

systemctl daemon-reload
bundle exec unicorn_rails -c config/unicorn.rb -E production -D

