#!/bin/bash
# Install Ansible and other tools
sudo apt update
sudo apt install -y python3 python3-pip
sudo pip3 install ansible molecule
