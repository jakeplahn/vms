vagrant init bento/ubuntu-18.04
sed -i -e '/Vagrant.configure("2") do |config|/a\'$'\n''\ \ config.vm.network :forwarded_port, guest: 22, host: 2229, id: "ssh"\
\ \ config.vm.provider "vmware_fusion" do |vmware|\
\ \ \ \ vmware.memory = "1024"\
\ \ \ \ vmware.clone_directory = "."\
\ \ \ \ vmware.vmx["ethernet0.pcislotnumber"] = "32"\
\ \ end\
' Vagrantfile
vagrant up --provider vmware_fusion
vagrant ssh -c "sudo apt-get update && sudo apt-get -y upgrade"
vagrant ssh -c "mkdir ~/repos"
vagrant ssh -c "git clone https://github.com/jakeplahn/vms.git ~/repos/vms"
vagrant ssh -c "chmod +x ~/repos/vms/setupvm.sh"
vagrant ssh -c "~/repos/vms/setupvm.sh $1 \"$2\""
