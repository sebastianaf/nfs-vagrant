#!/bin/bash
sudo apt update
sudo apt install -y nfs-common
sudo mkdir -p /mnt/nfs_clientshare
sudo mount 192.168.34.10:/mnt/nfs_share  /mnt/nfs_clientshare
