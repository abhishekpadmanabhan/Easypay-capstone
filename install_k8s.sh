sudo su -
apt-get update
apt-get install curl
apt-get install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update ; clear
apt-get install -y docker-ce
service docker start ; clear

### INSTALL KUBEADM,KUBELET,KUBECTL

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
apt-get update ; clear
apt-get install -y kubelet kubeadm kubectl	
### check the version

docker -v  ;  echo "kubeadm version: "  'kubeadm version -o short';  echo " kubelet --version" 'kubelet --version' ; 
echo "kubectl version" ; kubectl version --short 