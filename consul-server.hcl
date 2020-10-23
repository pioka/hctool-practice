data_dir = "/opt/consul"
bind_addr = "{{ GetInterfaceIP \"eth1\" }}"
datacenter = "inhouse"

client_addr = "0.0.0.0"

server = true
bootstrap_expect = 1
ui = true
