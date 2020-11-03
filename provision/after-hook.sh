#!/bin/sh

cp /tmp/consul.hcl /etc/consul.d
cp /tmp/nomad.hcl /etc/nomad.d
systemctl enable consul
systemctl enable nomad
systemctl restart consul
systemctl restart nomad
