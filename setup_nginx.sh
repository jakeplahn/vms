sudo sh -c "echo 'deb http://nginx.org/packages/ubuntu/ '$(lsb_release -cs)' nginx' > /etc/apt/sources.list.d/nginx.list"
sudo sh -c "echo 'deb-src http://nginx.org/packages/ubuntu/ '$(lsb_release -cs)' nginx' >> /etc/apt/sources.list.d/nginx.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
sudo apt-get update
sudo apt-get install nginx
nginx -v
