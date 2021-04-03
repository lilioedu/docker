#########################################################
#################SCRIPT PARA INSTALAR DOCKER ############
#########################################################

#!/bin/bash
 
apt remove docker docker-engine docker.io containerd runc

apt update

apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

pub   4096R/0EBFCD88 2017-02-22
      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid                  Docker Release (CE deb) <docker@docker.com>
sub   4096R/F273FCD8 2017-02-22

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

#Instalar Docker Engine

apt update
apt install docker-ce docker-ce-cli containerd.io

apt-cache madison docker-ce

  docker-ce | 5:18.09.1~3-0~debian-stretch | https://download.docker.com/linux/debian stretch/stable amd64 Packages
  docker-ce | 5:18.09.0~3-0~debian-stretch | https://download.docker.com/linux/debian stretch/stable amd64 Packages
  docker-ce | 18.06.1~ce~3-0~debian        | https://download.docker.com/linux/debian stretch/stable amd64 Packages
  docker-ce | 18.06.0~ce~3-0~debian        | https://download.docker.com/linux/debian stretch/stable amd64 Packages
  ...

apt install docker-ce=<5:18.09.1~3-0~debian-stretch> docker-ce-cli=<5:18.09.1~3-0~debian-stretch> containerd.io

dpkg -i /path/to/package.deb






 
