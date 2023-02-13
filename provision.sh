#!/bin/bash

# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y


# Install Nginx
sudo apt-get install nginx -y

# Enable or Start Nginx
sudo systemctl enable nginx -y


# Reverse proxy setup:
# Remove default nginx configuration
sudo rm /etc/nginx/sites-available/default
# Copy the reverse proxy file containing the relevant code into that location
sudo cp app/reverse_proxy /etc/nginx/sites-available/default
# Restart nginx to confirm changes
sudo systemctl restart nginx -y

# Install nodejs dependencies
sudo apt-get install python-software-properties

# Overwrite with desired version of nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# Install nodejs
sudo apt-get install nodejs -y

# Install pm2
sudo npm install pm2 -g

# Install app
cd app; npm install

# Environmental vabriable

echo 'export DB_HOST=mongodb://192.168.10.150:27017/posts' >> ~/.bashrc 
source .bashrc

# Enable reverse proxy
sudo systemctl restart nginx 

# Seed the database
node seeds/seed.js

