sudo swapoff -a

sudo timedatectl set-timezone Asia/Shanghai

sudo systemctl restart rsyslog 

sudo mkdir -r /etc/sysctl.d
cp ./k8s.conf /etc/sysctl.d/k8s.conf
sudo sysctl --system
sudo cp ./10-network-security.conf /etc/sysctl.d/10-network-security.conf
sudo sysctl --system
