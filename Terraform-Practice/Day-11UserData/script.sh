#!/bin/bash

# Update the package manager and install necessary software
yum update -y
yum install -y httpd php

# Start and enable the Apache web server
systemctl start httpd
systemctl enable httpd

# Define the HTML content
cat <<EOT > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1abc9c, #2ecc71);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .welcome-box {
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            background: rgba(0, 0, 0, 0.5);
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
        }

        h1 {
            font-size: 3em;
            margin-bottom: 10px;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1.2em;
            color: white;
            background: #e67e22;
            border: none;
            border-radius: 50px;
            text-decoration: none;
            box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease-in-out;
        }

        a:hover {
            background: #d35400;
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>Welcome to the World of DevOps</h1>
        <p>This Server is Powered by Terraform</p>
        <a href="#">Server IP: $(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)</a>
    </div>
</body>
</html>
EOT

# Restart Apache to load the new configuration
systemctl restart httpd
