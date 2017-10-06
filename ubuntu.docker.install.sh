#!/bin/bash
echo "for more details, please bowser following links:https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository"
echo "Uninstall old versions..."
sudo apt-get remove docker docker-engine docker.io

echo "install linux header file..."
sudo apt update
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual

echo "Install using the repository..."
sudo apt update
echo "Install packages to allow apt to use a repository over HTTPS:"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

echo "Add Docker’s official GPG key:"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Verify that you now have the key with the fingerprint"
sudo apt-key fingerprint 0EBFCD88

echo "Use the following command to set up the stable repository."
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "INSTALL DOCKER CE"
sudo apt-get update
sudo apt-get install docker-ce





