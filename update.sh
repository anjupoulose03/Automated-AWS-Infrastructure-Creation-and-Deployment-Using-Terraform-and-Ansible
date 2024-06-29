#!/bin/bash
# Install Ansible only on the master node
if [ "$(hostname)" == "AnsibleMaster" ]; then
  sudo apt update 
  sudo apt install software-properties-common
  sudo add-apt-repository --yes --update ppa:ansible/ansible
  sudo apt install ansible

# Common setup for all nodes
sudo apt update
sudo apt install -y python3 python3-pip
pip3 install boto boto3
