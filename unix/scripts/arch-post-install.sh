# These commands must be executed as root user
# These commands must be executed after arch-chroot

# Locale
echo "en_US.UTF-8 UTF-8" >> /etc/local.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

# Date and Time
ls -sf /usr/share/zoneinfo/America/Recife /etc/localtime
hwclock --systohc --utc
timedatectl set-ntp true

# Hostname
echo "varch" > /etc/hostname

# DHCP
systemctl enable dhcpcd

# Root password
passwd

# GRUB
pacman S grub os-prober
grub-install /dev/sda
grub-mkconfig o /boot/grub/grub.cfg


