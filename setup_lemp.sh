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
sudo apt install -y php7.3-fpm php7.3-mysql
sudo mkdir /etc/nginx/sites-available
sudo mkdir /etc/nginx/sites-enabled
sudo mkdir -p ~/repos/lorem.jakeplahn.com/site
sudo chown -R $USER:$USER ~/repos/lorem.jakeplahn.com/site
sudo chmod -R 755 ~/repos/lorem.jakeplahn.com/site
echo '<html><body><h3>lorem.jakeplahn.com</h3></body></html>' > ~/repos/lorem.jakeplahn.com/site/index.html
echo '<html><body><h3>lorem</h3><?php echo "hello jacob"?></body></html>' > ~/repos/lorem.jakeplahn.com/site/lorem.php
sudo curl -o /etc/nginx/sites-available/lorem.jakeplahn.com https://raw.githubusercontent.com/jakeplahn/vms/master/nginx/lorem.jakeplahn.com
sudo ln -s /etc/nginx/sites-available/lorem.jakeplahn.com /etc/nginx/sites-enabled/
sudo sed -i -e '$ i\    include /etc/nginx/sites-enabled/*;' /etc/nginx/nginx.conf
sudo usermod -a -G www-data nginx
sudo systemctl start nginx
curl localhost
curl localhost/lorem.php
