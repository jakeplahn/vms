sed -i '' 's/vb.memory = "1024"/vb.memory = "6144"/' Vagrantfile
vagrant reload
vagrant ssh -c "~/repos/vms/setup_minikube.sh"
