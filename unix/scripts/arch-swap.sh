# WARNING: UNDER DEVELOPMENT

# Make sure you have a swap partition or file

# Kernel mode
# TODO: edit /etc/mkinitcpio.conf
# HOOKS=(... resume ...)
sudo pacman -Sy filesystem linux
sudo mkinitcpio -p linux

# Grub config
# TODO: edit /etc/default/grub
# GRUB_CMDLINE_LINUX_DEFAULT="resume=/dev/disk/by-uuid/...
sudo grub-mkconfig -o /boot/grub/grub.cfg

# systemctl hibernate
