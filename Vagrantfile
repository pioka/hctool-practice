Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"

  config.vm.provider "virtualbox" do |v|
    v.cpus = 4
    v.memory = 1024
  end

  config.vm.provision "shell", path: "provision/common.sh"

  config.vm.define "server0" do |s|
    s.vm.hostname = "server0"
    s.vm.network "private_network", ip: "192.168.222.22"
    s.vm.network :forwarded_port, host: 22222, guest: 22, id: "ssh"
    s.vm.provision "file", source: "provision/consul-server.hcl", destination: "/tmp/consul.hcl"
    s.vm.provision "file", source: "provision/nomad-server.hcl", destination: "/tmp/nomad.hcl"
    s.vm.provision "shell", path: "provision/after-hook.sh"
  end

  config.vm.define "client0" do |s|
    s.vm.hostname = "client0"
    s.vm.network "private_network", ip: "192.168.222.23"
    s.vm.network :forwarded_port, host: 22223, guest: 22, id: "ssh"
    s.vm.provision "file", source: "provision/consul-client.hcl", destination: "/tmp/consul.hcl"
    s.vm.provision "file", source: "provision/nomad-client.hcl", destination: "/tmp/nomad.hcl"
    s.vm.provision "shell", path: "provision/after-hook.sh"
  end
end
