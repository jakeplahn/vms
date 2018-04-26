# vms
configuration files and setup instructions for vagrant dev vms

1. Create directory in vms folder and navigate to it
1. vagrant init bento/ubuntu-17.10
1. set memory to 1024 in Vagrantfile
   1. vmware
   ```
   sed -i -e '/Vagrant.configure("2") do |config|/a\'$'\n''\ \ config.vm.provider "vmware_fusion" do |vb|\
   \ \ \ \ vb.memory = "1024"\
   \ \ end\
   ' Vagrantfile
   ```
1. vagrant up --provider vmware_fusion && vagrant ssh
1. mkdir ~/repos && cd ~/repos
1. git clone https://github.com/jakeplahn/vms.git && cd ~/repos/vms
1. chmod +x setupvm.sh && ./setupvm.sh

tools
- vim
- bash
- tmux
- tmuxinator
