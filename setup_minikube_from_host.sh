sed -i -e '/Vagrant.configure("2") do |config|/a\'$'\n''\ \ config.vm.provider "vmware_fusion" do |vb|\
\ \ \ \ vb.memory = "6144"\
\ \ \ \ vb.clone_directory = "."\
\ \ end\
' Vagrantfile
vagrant reload
vagrant ssh -c "~/repos/vms/setup_minikube.sh"
