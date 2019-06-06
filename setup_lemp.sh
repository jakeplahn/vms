sudo sh -c "echo 'deb http://nginx.org/packages/ubuntu/ '$(lsb_release -cs)' nginx' > /etc/apt/sources.list.d/nginx.list"
sudo sh -c "echo 'deb-src http://nginx.org/packages/ubuntu/ '$(lsb_release -cs)' nginx' >> /etc/apt/sources.list.d/nginx.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
sudo apt-get update
sudo apt-get install -y nginx
#
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu cosmic main'
sudo apt update
sudo apt install -y mariadb-server
#
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt install php7.3-fpm php7.3-mysql
mkdir /etc/nginx/sites-available
mkdir /etc/nginx/sites-enabled
sudo mkdir ~/repos/lorem.com/html
sudo chown -R $USER:$USER ~/repos/lorem.com/html
sudo chmod -R 755 ~/repos/lorem.com/html
echo '<html><body><h3>lorem.com</h3></body></html>' > ~/repos/lorem.com/html/index.html
sudo ln -s /etc/nginx/sites-available/lorem.com /etc/nginx/sites-enabled/
sudo systemctl start nginx
