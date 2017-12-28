# These commands should be executed inside arch installation

# Check internet connection
ping 8.8.8.8

# Check DNS
ping google.com

# Check available disks
fdisk -l

# Partition the disk
# You may create a new gpt schema disk
# You may have the following partitions:
#   - BIOS boot
#   - Linux filesystem
#   - Linux swap
cfdisk

# Format partitions
mkfs.exfat /dev/sda1
mkfs.ext4 /dev/sda2
mkswap /dev/sda3

# Activate swap
swapon /dev/sda3

# Mount root filesystem
mount /dev/sda2 /mnt

# (Optional) Mount home filesystem
# mount /dev/sdaX /mnt/home

# Install Arch
pacstrap /mnt base base-devel

# Generate fstab
genfstab /mnt>> /mnt/etc/fstab

# chroot to newly installed arch
arch-chroot /mnt/bin/bash

# Proceed to post installation steps
# arch-post-install.sh
