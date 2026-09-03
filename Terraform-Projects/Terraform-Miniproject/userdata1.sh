#!/bin/bash
sudo -s
# Update packages
yum update -y
# Install Apache
yum install -y httpd
# Install wget and unzip
yum install -y wget unzip
# Download website template
cd /tmp
wget https://templatemo.com/download/templatemo_400_polygon
# Unzip template
unzip templatemo_400_polygon.zip

# Copy website files to Apache root
cp -r templatemo_400_polygon/* /var/www/html/
# Start and enable Apache
systemctl enable httpd
systemctl start httpd
