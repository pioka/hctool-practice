datacenter = "house"
bind_addr = "{{ GetInterfaceIP \"eth1\" }}"
data_dir = "/opt/consul"

client_addr = "0.0.0.0"

server = true
bootstrap_expect = 1
ui = true
