sudo cp  ./source.list /etc/apt/source.list
sudo apt-get update
sudo apt-get install \
	    apt-transport-https \
	        ca-certificates \
		    curl \
		        gnupg-agent \
			    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	      $(lsb_release -cs) \
	         stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
#execute docker without sudo
sudo apt install acl
sudo usermod -aG docker $USER
sudo setfacl -m user:$USER:rw /var/run/docker.sock
#test docker install ok
sudo docker run hello-world
