#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo ss -ntpl
sudo rm -rf /var/www/html*
sudo git clone https://github.com/Rubeena1997/lms.git
sudo cp -r /lms/webapp/dist/* /var/www/html