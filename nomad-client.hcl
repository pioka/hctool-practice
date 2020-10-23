# Full configuration options can be found at https://www.nomadproject.io/docs/configuration

data_dir = "/opt/nomad/data"
bind_addr = "{{ GetInterfaceIP \"eth1\" }}"

client {
  enabled = true
  servers = ["192.168.222.22:4646"]
}
