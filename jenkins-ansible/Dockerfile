FROM jenkins/jenkins:latest
USER root
# Instalacion de Ansible en Jenkins
RUN apt-get update && apt-get install -y apt-utils &&\
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list &&\
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 &&\
    apt update && apt upgrade -y &&\
    apt-get install -y ansible
# LLave SSH
COPY remote-key /root/.ssh/remote-key
COPY remote-key.pub /root/.ssh/remote-key.pub
USER jenkins