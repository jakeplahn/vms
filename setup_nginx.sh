cd /tmp/ && wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
sudo sh -c "echo 'deb http://nginx.org/packages/stable/ubuntu/ '$(lsb_release -cs)' nginx' > /etc/apt/sources.list.d/Nginx.list"
sudo apt-get update
sudo apt-get install nginx
nginx -v
