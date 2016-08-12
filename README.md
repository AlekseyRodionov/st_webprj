# st_webprj
Практическая часть курса, которая состоит в разработке web приложения на языке python c использованием фреймворка Django

# clone git repo
git clone https://github.com/AlekseyRodionov/st_webprj.git /home/box/web

# start mysql server
sudo /etc/init.d/mysql start

#setup database
bash /home/box/web/database.sh

#install nginx and gunicorn
bash /home/box/web/install.sh

#clone and run server
bash /home/box/web/init.sh
