sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.30.0/minikube-linux-amd64
chmod +x minikube
sudo cp minikube /usr/local/bin/
rm minikube
sudo apt-get -y install gcc make linux-headers-$(uname -r) dkms
sudo apt-get install virtualbox
minikube start --memory 4096
kubectl get services
