sudo apt-get update && sudo apt-get install -y ca-certificates curl software-properties-common apt-transport-https curl
curl -s https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | sudo apt-key add -
sudo cp ./kubernetes.list /etc/apt/sources.list.d/
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
