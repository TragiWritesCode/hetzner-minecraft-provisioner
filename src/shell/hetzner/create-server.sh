#!/bin/bash

hcloud server create --name mc-luki-1 --without-ipv4 --datacenter 2 --firewall fw-minecraft --image debian-11 --type cx21 --ssh-key fedora-dev-vm --primary-ipv6 primary-ipv6-1