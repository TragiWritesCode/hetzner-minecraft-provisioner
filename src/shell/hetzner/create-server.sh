#!/bin/bash

# TODO: add arguments to script
# datacenters:
#ID   NAME        DESCRIPTION          LOCATION
#2    nbg1-dc3    Nuremberg 1 DC 3     nbg1
#3    hel1-dc2    Helsinki 1 DC 2      hel1
#4    fsn1-dc14   Falkenstein 1 DC14   fsn1
#5    ash-dc1     Ashburn DC1          ash
#6    hil-dc1     Hillsboro DC 1       hil

hcloud server create --name mc-luki-1 --without-ipv6 \
--datacenter 2 --firewall fw-minecraft --image debian-11 --type cx21 \
--ssh-key fedora-dev-vm --primary-ipv6 primary-ipv4-1 --volume volume-nbg1-1