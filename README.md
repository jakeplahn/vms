# vm setup
configuration files and setup instructions for vagrant dev vms
### base
1. Create directory in vms folder and navigate to it
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup.sh && chmod +x setup.sh && ./setup.sh

### minikube
1. vagrant halt
1. enable hypervisor applications in this virtual machine
1. sed -i -e 's/    vb.memory = "1024"/    vb.memory = "5120"/' Vagrantfile
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
1. curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
1. sudo apt-get install -y nodejs

postgresql
1. echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" | sudo tee --append /etc/apt/sources.list.d/pgdg.list
1. wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
1. sudo apt-get update
1. sudo apt-get install postgresql-11

phoenix
1. wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
1. sudo apt-get update
1. sudo apt-get install -y esl-erlang
1. sudo apt-get install -y elixir
1. mix local.hex
1. mix archive.install hex phx_new 1.4.0
1. follow node steps
