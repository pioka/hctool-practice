#!/bin/sh

APT_REGION=jp

# ダウンロード高速化のためパッケージミラー取得元を変更
sed -i "s/http:\/\/archive.ubuntu.com/http:\/\/${APT_REGION}.archive.ubuntu.com/g" /etc/apt/sources.list


# HashiCorpツールとDockerを入れる
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

apt update && apt install -y docker.io nomad consul vault waypoint boundary


# vagrantユーザでdocker叩けるようにする(別にやらなくても動く. 確認しやすいようにするため.)
gpasswd -a vagrant docker


# CNIプラグインをインストール & ブリッジ有効化
curl -sLo /tmp/cni-plugins.tgz https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-amd64-v0.8.6.tgz
mkdir -p /opt/cni/bin
tar -C /opt/cni/bin -xzf /tmp/cni-plugins.tgz

echo 1 > /proc/sys/net/bridge/bridge-nf-call-arptables
echo 1 > /proc/sys/net/bridge/bridge-nf-call-ip6tables
echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables
