#!/usr/bin/env bash

sudo apt update
sudo apt install python2.7 python2.7-dev python-setuptools python-pip build-essential openssh-server curl apt-transport-https net-tools -y
sudo swapoff -a
pip install --upgrade pip
pip install ansible

#curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
#
#cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
#deb http://apt.kubernetes.io/ kubernetes-xenial main
#EOF
#
#apt update
#
#apt install docker.io kubeadm kubectl kubelet kubernetes-cni 

cd ~/workstation
./provision.sh
