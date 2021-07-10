#fdisk on cmd
LFS_DISK="$1"

#o-create new partition table
#n-new partition
#p-primary / print tabke
#a-make partition bootable
sudo fdisk "$LFS_DISK" << EOF
o
n
p
1

+100M
a
n
p
2


p
w
q
EOF
