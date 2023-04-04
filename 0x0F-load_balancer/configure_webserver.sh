#!/usr/bin/env bash
# This script configures a web server

# Install Nginx
sudo apt-get update
sudo apt-get -y install nginx

# Set up custom HTTP response header
sudo sed -i 's/^# server_tokens off;/server_tokens off;\n        add_header X-Served-By $121750-web-01;\n/' /etc/nginx/nginx.conf

# Restart Nginx
sudo service nginx restart
