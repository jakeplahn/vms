sudo sh -c "echo 'deb http://nginx.org/packages/ubuntu/ '$(lsb_release -cs)' nginx' > /etc/apt/sources.list.d/nginx.list"
sudo sh -c "echo 'deb-src http://nginx.org/packages/ubuntu/ '$(lsb_release -cs)' nginx' >> /etc/apt/sources.list.d/nginx.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
sudo apt-get update
sudo apt-get install nginx
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt install php7.3 php7.3-common php7.3-cli
