#!/bin/sh

cp /tmp/consul.hcl /etc/consul.d
systemctl enable consul
systemctl restart consul
