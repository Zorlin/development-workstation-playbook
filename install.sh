#!/bin/bash
# Install Ansible and other tools
#sudo apt update
sudo apt install -y python3 python3-pip
sudo pip3 install ansible molecule
# Download mitogen
sudo wget -nc -c "https://github.com/mitogen-hq/mitogen/archive/v0.3.0-rc.0.zip" -O /opt/v0.3.0-rc.0.zip
sudo unzip -oq /opt/v0.3.0-rc.0.zip
sudo ln -s /opt/mitogen-0.3.0-rc.0/ /opt/mitogen
# Enable ssh
sudo apt install -y openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
sudo cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
# Scan the local key
sudo ssh-keyscan -H localhost >> ~/.ssh/known_hosts
