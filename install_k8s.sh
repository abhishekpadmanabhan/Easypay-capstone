sudo su -
sudo apt-get update
sudo apt-get install curl
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update ; clear
sudo apt-get install -y docker-ce
sudo service docker start ; clear

### INSTALL KUBEADM,KUBELET,KUBECTL

sudo su -
sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update ; clear
sudo apt-get install -y kubelet kubeadm kubectl	
### check the version

docker -v  ;  echo "kubeadm version: "  'kubeadm version -o short';  echo " kubelet --version" 'kubelet --version' ; echo "kubectl version" ; kubectl version --short 


