#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
echo "Henks Nginx Server" > /var/www/html/index.htm