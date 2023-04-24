#! /bin/bash
sudo yum update -y
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install -y git nodejs
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000
sudo git clone https://github.com/nodejs/examples.git /opt/nodejs-app
cd /opt/nodejs-app/servers/express/api-with-express-and-handlebars
sudo npm install
sudo npm install pm2@latest -g
sudo pm2 start index.js --name node-app