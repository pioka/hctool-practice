datacenter = "house"
bind_addr = "{{ GetInterfaceIP \"eth1\" }}"
data_dir = "/opt/consul"

client_addr = "0.0.0.0"

server = false
retry_join = ["192.168.222.22:8301"]
