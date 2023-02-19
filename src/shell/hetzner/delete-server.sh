#!/bin/bash

# deletes the first server that "hcloud server list" outputs
hcloud server delete $(hcloud server list | tail -n +2 | awk '{print $1}')