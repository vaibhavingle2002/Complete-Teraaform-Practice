#!/bin/bash
sudo -s

# ----------------------------
# Update system
# ----------------------------
yum update -y

# ----------------------------
# Install required libs
# ----------------------------
yum install -y libatomic git nginx

systemctl start nginx
systemctl enable nginx

# ----------------------------
# Switch to ec2-user
# ----------------------------
su - ec2-user << 'EOF'

# ----------------------------
# Install NVM
# ----------------------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load NVM
source ~/.bashrc
source ~/.bash_profile

# ----------------------------
# Install NodeJS
# ----------------------------
nvm install node
nvm use node

node -v
npm -v

# ----------------------------
# Clone NodeJS App
# ----------------------------
cd /home/ec2-user
git clone https://github.com/vaibhavingle2002/AWS-DEMO-NodeJS-APP.git

cd AWS-DEMO-NodeJS-APP
npm install

# ----------------------------
# Run Node app on 3000
# ----------------------------
nohup npm start > app.log 2>&1 &

EOF

# ----------------------------
# Configure Nginx Reverse Proxy
# ----------------------------
cat << 'EOF' > /etc/nginx/conf.d/nodeapp.conf
server {
    listen 80;
    location / {
        proxy_pass http://127.0.0.1:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host \$host;
        proxy_cache_bypass \$http_upgrade;
    }
}
EOF

nginx -t
systemctl restart nginx