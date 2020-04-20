docker ps | awk '{ print $1 }' | xargs docker stop
docker ps -a | awk '{ print $1 }' | xargs docker rm
ip link delete cni0
ip link delete flannel.1
mount | grep pod | awk '{ print $3} ' | xargs umount
rm -rf /etc/ceph \
       /etc/cni \
       /etc/kubernetes \
       /opt/cni \
       /opt/rke \
       /run/secrets/kubernetes.io \
       /run/calico \
       /run/flannel \
       /var/lib/calico \
       /var/lib/etcd \
       /var/lib/cni \
       /var/lib/kubelet \
       /var/lib/rancher/rke/log \
       /var/log/containers \
       /var/log/pods \
       /var/run/calico
