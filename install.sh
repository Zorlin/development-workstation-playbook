#!/bin/bash
# Install Ansible and other tools
#sudo apt update
sudo apt install -y python3 python3-pip
sudo pip3 install ansible molecule
# Download mitogen
sudo wget -nc -c "https://github.com/mitogen-hq/mitogen/archive/v0.3.0-rc.0.zip" -O /opt/v0.3.0-rc.0.zip
sudo unzip -oq /opt/v0.3.0-rc.0.zip
sudo ln -s /opt/mitogen-0.3.0-rc.0/ /opt/mitogen
