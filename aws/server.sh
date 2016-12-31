#!/bin/bash
#Updating server
sudo apt-get update -y

#Installing nginx
sudo apt-get install nginx -y

#Installing nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install -y build-essential

#Installing pm2 for process management
sudo npm install pm2 -g
