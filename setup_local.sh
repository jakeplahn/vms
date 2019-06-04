vagrant init ubuntu-18-1-0-local
sed -i -e '/Vagrant.configure("2") do |config|/a\'$'\n''\ \ config.vm.provider "vmware_fusion" do |vb|\
\ \ \ \ vb.memory = "1024"\
\ \ \ \ vb.clone_directory = "."\
\ \ end\
' Vagrantfile
vagrant up --provider vmware_fusion
vagrant ssh -c "sudo apt-get update && sudo apt-get -y upgrade"
