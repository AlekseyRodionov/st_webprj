#!/bin/bash

if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm /etc/nginx/sites-enabled/default
fi

# Nginx

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

# Gunicorn
# Remove old conf if exist
if [ -f /etc/gunicorn.d/hello.py ]; then
  sudo rm /etc/gunicorn.d/hello.py
fi

if [ -f /etc/gunicorn.d/hello.py ]; then
  sudo rm /etc/gunicorn.d/gunicorn_config.py
fi

echo "Create link: gunicorn_config.py & hello.py"
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/gunicorn_config.py /etc/gunicorn.d/gunicorn_config.py




gunicorn -c /etc/gunicorn.d/hello.py hello:app --daemon
cd /home/box/web/ask/
gunicorn -c /etc/gunicorn.d/gunicorn_config.py ask.wsgi --daemon

#sudo /etc/init.d/gunicorn restart

#killall gunicorn 		Остановить все процессы

