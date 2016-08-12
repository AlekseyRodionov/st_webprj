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