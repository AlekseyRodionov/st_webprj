#!/bin/bash

echo "Update/Upgrade/ pack"

sudo apt-get update
sudo apt-get upgrade

echo " "
echo "_________________________________"
echo " "
echo "Insatall Nginx"
sudo apt-get install nginx

echo " "
echo "_________________________________"
echo " "
echo "Update/Upgrade/Insatall gunicorn"
sudo apt-get install gunicorn

echo " "
echo "_________________________________"
echo " "
echo "Clone git repo"
git clone https://github.com/AlekseyRodionov/st_webprj.git /home/box/web
