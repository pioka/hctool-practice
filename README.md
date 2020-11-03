# hctool-practice

## About
Nomad+Consul+Dockerでのクラスタ構築するVagrantfile.  
HashiCorp製ツールお勉強用のVMとして使っているので若干余計なものが入っている.


## インストールされるもの
クラスタ動かすのに必須なもの

- nomad
- consul
- docker
- cni-plugin

とりあえずインストールしているもの
- vault
- waypoint
- boundary

設定内容

|Host|Consul(Server)|Consul(Client)|Nomad(Server)|Nomad(Client)|
|-:|:-:|:-:|:-:|:-:|
|server0|o|o|o|o|
|client0| |o| |o|
