#!/usr/bin/env bash

sudo apt update
sudo apt install python2.7 python2.7-dev python-setuptools python-pip build-essential openssh-server curl apt-transport-https net-tools -y
sudo swapoff -a
sudo pip install --upgrade pip
sudo pip install -I ansible==2.6

cd ~/workstation
./provision.sh
