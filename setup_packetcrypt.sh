#!/bin/bash

# Install Docker on the VM
sudo su  "sudo snap install docker"

# Pull the PacketCrypt Docker image
sudo su "sudo docker pull thomasjp0x42/packetcrypt"

# Run PacketCrypt Docker container with the specified parameters
sudo su "sudo docker run -d thomasjp0x42/packetcrypt ann -p pSYxzbzwV4RAAnz29oedYBiHQFyE1e3dDn http://pool.pkt.world http://pool.pktpool.io"
