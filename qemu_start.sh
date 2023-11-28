#!/bin/bash


# Path to your disk image
DISK_IMG="<path_to_your_disk_image>"

# Path to your QEMU binary
QEMU_BIN="<path_to_your_qemu_binary>"

# Network configuration
NET_CONFIG="-netdev user,id=vmnic -device virtio-net,netdev=vmnic"

# Start QEMU VM
$QEMU_BIN -m 1024 -hda $DISK_IMG $NET_CONFIG