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

echo "Create link: gunicorn.conf to hello.py"
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py

if [ -f /etc/gunicorn.d/hello.py ]; then
  echo "Link was created"
fi

sudo gunicorn -c /etc/gunicorn.d/hello.py hello:app

#sudo /etc/init.d/gunicorn restart
