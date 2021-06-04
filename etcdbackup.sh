   export RELEASE="3.3.13"
   wget https://github.com/etcd-io/etcd/releases/download/v${RELEASE}/etcd-v${RELEASE}-linux-amd64.tar.gz
   tar xvf etcd-v${RELEASE}-linux-amd64.tar.gz
   cd etcd-v${RELEASE}-linux-amd64
   sudo mv etcdctl /usr/local/bin

   mkdir /etcd-backup

ETCDCTL_API=3 etcdctl --endpoints={{masters ip}}:2379 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key snapshot save /etcd-backup/etcd-snapshot-latest.db