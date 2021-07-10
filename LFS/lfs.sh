#!/bin/bash

export LFS=/mnt/lfs
export LFS_TGT=x86_64-lfs-linux-gnu
#x64 lfs vendor linux
#gnu-os
export LFS_DISK=/dev/usb2-4
#check for usb -> sudo dmesg

#don't want to format each time / partition each  time 
#dont want to redownload packages

if ! grep -q "$LFS" /proc/mounts; then
    source setupdisk.sh "$LFS_DISK"
fi



