# !/bin/sh
sudo pacman -Syu
sudo pacman -S flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
wget https://raw.githubusercontent.com/BachErik/PC/main/part-2.sh -P /home/$USER/tmp
sudo echo <<EOF
[Unit]
Description=Starts part two of the installation

[Service]
Type=simple
User=$USER
ExecStart=/usr/bin/konsole -e /home/$USER/tmp/part-2.sh

[Install]
WantedBy=graphical.target
EOF > /etc/systemd/system/part-2.service
sudo systemctl enable part-2.service
sudo reboot now