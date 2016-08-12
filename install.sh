#!/bin/bash

echo "Update/Upgrade/Install Nginx and gunicorn"

#sudo apt-get update
#sudo apt-get upgrade

echo " "
echo "_________________________________"
echo " "
echo "Install Nginx"
sudo apt-get install nginx

echo " "
echo "_________________________________"
echo " "
echo "Update/Upgrade/Install gunicorn"
sudo apt-get install gunicorn

echo " "
echo "_________________________________"
echo " "
echo "Install/Setup Mysql DB"
#sudo apt-get install python-mysql.connector #Mysql engine
mysql -uroot -e"CREATE USER 'django'@'localhost' IDENTIFIED BY 'dj111'"
mysql -uroot -e"CREATE DATABASE djbase"
mysql -uroot -e"GRANT ALL ON djbase.* TO 'django'@'localhost'"

echo " "
echo "_________________________________"
echo " "
echo "Syncdb with Django project"
cd /home/box/web/ask
python manage.py syncdb