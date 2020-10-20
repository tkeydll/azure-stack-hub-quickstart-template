#!/bin/sh
echo "Updating packages ..."
apt update
#apt upgrade -y

echo "Install docker ..."
apt install docker.io -y
