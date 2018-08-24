vagrant init bento/ubuntu-18.04
sed -i -e '/Vagrant.configure("2") do |config|/a\'$'\n''\ \ config.vm.provider "vmware_fusion" do |vb|\
\ \ \ \ vb.memory = "1024"\
\ \ \ \ vb.clone_directory = "."\
\ \ end\
' Vagrantfile
vagrant up --provider vmware_fusion
vagrant ssh -c "sudo apt-get update && sudo apt-get upgrade"
vagrant ssh -c "mkdir ~/repos"
vagrant ssh -c "git clone https://github.com/jakeplahn/vms.git ~/repos/vms"
vagrant ssh -c "chmod +x ~/repos/vms/setupvm.sh"
vagrant ssh -c "~/repos/vms/setupvm.sh"
