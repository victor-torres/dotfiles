# archlinux.fr
if [ -n "grep archlinuxfr /etc/pacman.conf" ] ; then
    sudo sh -c "cat <<EOF >> /etc/pacman.conf
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/x86_64
EOF"
fi

# Pacman packages
sudo pacman -Sy yaourt
sudo pacman -S python-pip
sudo pacman -S postgresql
sudo pacman -S libmariadbclient
sudo pacman -S swig
sudo pacman -S rsync
sudo pacman -S exfat-utils

# Python packages
sudo pip install virtualenvwrapper
sudo pip install wakatime
sudo pip install mercurial

# Desktop
if [ $DESKTOP ] ; then
    # Pacman packages
    sudo pacman -S gnome-tweak-tool
    sudo pacman -S transmission-gtk

    # Yaourt packages
    yaourt -S arc-gtk-theme
    yaourt -S slack-desktop
    yaourt -S google-chrome
    yaourt -S chrome-gnome-shell-git

fi
