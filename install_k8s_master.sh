sudo su -
apt install acl
kubeadm init  "--ignore-preflight-errors=Mem"
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config 
chown $(id -u):$(id -g) $HOME/.kube/config
## Weave
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=v1.21.1" 
kubectl get nodes