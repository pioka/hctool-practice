datacenter = "house"
bind_addr = "{{ GetInterfaceIP \"eth1\" }}"
data_dir = "/opt/nomad/data"

client {
  enabled = true
}
