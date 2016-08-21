echo " "
echo "_________________________________"
echo " "
echo "Install Mysql Engine"
sudo apt-get install python-mysql.connector
echo " "
echo "_________________________________"
echo " "
echo "Setup Mysql DB"
mysql -uroot -e"CREATE USER 'django'@'localhost' IDENTIFIED BY 'dj111'"
mysql -uroot -e"CREATE DATABASE djbase"
mysql -uroot -e"GRANT ALL PRIVILEGES ON djbase.* TO 'django'@'localhost'"

echo " "
echo "_________________________________"
echo " "
echo "Syncdb with Django project"
cd /home/box/web/ask
python manage.py syncdb
