#!/bin/sh

APT_REGION=jp

sed -i "s/http:\/\/archive.ubuntu.com/http:\/\/${APT_REGION}.archive.ubuntu.com/g" /etc/apt/sources.list

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

apt update && apt install -y docker.io nomad consul vault waypoint boundary

gpasswd -a vagrant docker
