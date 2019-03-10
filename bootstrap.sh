#!/bin/bash -e

sudo apt update 
sudo apt install git -y
sudo apt install python2.7 python2.7-dev python-pip build-essential -y
sudo pip install --upgrade pip 
sudo pip install ansible

cd ~/workstation
. ./provision.sh
