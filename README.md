# vm setup
configuration files and setup instructions for vagrant dev vms
### create local box
1. vagrant package
1. vagrant box add --provider vmware_desktop --name ubuntu-18-1-0-local package.box

### base with local box
1. Create directory in vms folder and navigate to it
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup_local.sh && chmod +x setup_local.sh && ./setup_local.sh

### base
1. Create directory in vms folder and navigate to it
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup.sh && chmod +x setup.sh && ./setup.sh [tab param] [git user name]
1. [tab param] can be tabs or spaces to indicate what tab format vim uses. spaces indicates 2 space tabs

### lemp
1. run base steps
1. vagrant ssh
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup_lemp.sh && chmod +x setup_lemp.sh && ./setup_lemp.sh

### microk8s
1. run base
1. sed -i '' 's/vmware.memory = "1024"/vmware.memory = "4096"/' Vagrantfile
1. vagrant reload
1. vagrant ssh
1. sudo snap install microk8s --classic

### minikube
1. vagrant halt
1. enable hypervisor applications in this virtual machine
1. vagrant up
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup_minikube_from_host.sh && chmod +x setup_minikube_from_host.sh && ./setup_minikube_from_host.sh

### other
Selenium with JavaScript
1. follow node steps
1. npm install selenium-webdriver
1. wget https://github.com/mozilla/geckodriver/releases/download/v#.##.#/geckodriver-v#.##.#-linux64.tar.gz
1. tar --extract --file geckodriver-v#.##.#-linux64.tar.gz
1. sudo cp geckodriver /usr/local/bin/
1. sudo apt install -y firefox
1. run https://raw.githubusercontent.com/jakeplahn/selenium-javascript/master/async-wait.js

Node
1. run base steps
1. vagrant ssh
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup_nodejs.sh && chmod +x setup_nodejs.sh && ./setup_nodejs.sh

postgresql
1. echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" | sudo tee --append /etc/apt/sources.list.d/pgdg.list
1. wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
1. sudo apt-get update
1. sudo apt-get install -y postgresql-11

phoenix
1. wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
1. sudo apt-get update
1. sudo apt-get install -y esl-erlang
1. sudo apt-get install -y elixir
1. mix local.hex
1. mix archive.install hex phx_new 1.4.0
1. follow node steps
1. follow postgresql steps
1. sudo apt-get install -y inotify-tools
1. sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres'"

rails
1. sudo apt-get update
1. sudo apt-get install -y ruby-dev
1. sudo apt-get install -y libsqlite3-dev
1. sudo apt-get install -y sqlite3
1. curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
1. sudo apt-get install -y nodejs
1. sudo gem install rails --no-ri --no-rdoc
1. follow yarn steps
1. Vagrantfile - config.vm.network :forwarded_port, guest: 3000, host: 3000
1. start rails dev server with bin/rails s -b 0.0.0.0

yarn
1. curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
1. echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
1. sudo apt-get update && sudo apt-get install yarn

java
1. sudo apt install openjdk-11-jdk
1. https://maven.apache.org/install.html
1. https://spring.io/guides/gs/spring-boot/ (chrome - maven)

webpack
1. Node steps
1. sudo npm install --save-dev webpack
1. sudo npm install --save-dev webpack-cli
1. sudo npm install --global webpack

lando
1. install docker ce
1. wget https://github.com/lando/lando/releases/download/v3.0.0-rc.17/lando-v3.0.0-rc.17.deb
1. sudo dpkg -i lando-v3.0.0-rc.17.deb

docker latest version (steps from https://docs.docker.com/install/linux/docker-ce/ubuntu/)
1. run base steps
1. vagrant ssh
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup_docker.sh && chmod +x setup_docker.sh && ./setup_docker.sh
1. exit and vagrant reload

docker using apt-get
1. run base steps
1. vagrant ssh
1. sudo apt-get install docker.io
1. sudo usermod -aG docker ${USER}
1. exit and vagrant reload
