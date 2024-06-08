# !/bin/sh
sudo pacman -Syu
sudo pacman -S extra/flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

wget https://raw.githubusercontent.com/BachErik/PC/main/part-2.sh -P /home/$USER/tmp
sudo wget https://raw.githubusercontent.com/BachErik/PC/main/part-2.service -P /etc/systemd/system
sudo systemctl enable part-2.service
sudo reboot now