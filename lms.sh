#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo git clone https://github.com/Rubeena1997/lms.git
cd lms

# frontend deployment

sudo rm -f /var/www/html/*
sudo cp -rf webapp/* /var/www/html/
sudo systemctl restart nginx
echo "frontend deployed"




#cd webapp
# Add the NodeSource repository for Node.js 16.x
# curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

# Install Node.js and npm
# sudo apt-get install -y nodejs
# npm install
#npm run build
# sudo cp -r dist/* /var/www/html