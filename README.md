# vms
configuration files and setup instructions for vagrant dev vms

1. Create directory in vms folder and navigate to it
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup.sh && chmod +x setup.sh && ./setup.sh

setup minikube
1. vagrant halt
1. enable hypervisor applications in this virtual machine
1. curl -O https://raw.githubusercontent.com/jakeplahn/vms/master/setup_minikube_from_host.sh && chmod +x setup_minikube_from_host.sh && ./setup_minikube_from_host.sh

Selenium with JavaScript
1. follow node steps
1. npm install selenium-webdriver

Node
1. curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
1. sudo apt-get install -y nodejs
