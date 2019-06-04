sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu cosmic main'
sudo apt update
sudo apt install mariadb-server
