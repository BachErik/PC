systemctl disable part-2.service
sudo rm /etc/systemd/system/part-2.service

flatpak install flathub org.gimp.GIMP
flatpak install flathub com.brave.Browser
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub com.spotify.Client
flatpak install flathub org.videolan.VLC
flatpak install flathub com.obsproject.Studio
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.lunarclient.LunarClient
# Termius installation
wget https://www.termius.com/download/linux/Termius.deb
ar x Termius.deb
rm -rf control.tar.gz debian-binary Termius.deb
tar xf data.tar.xz
rm -rf data.tar.xz ./etc/
sudo rsync -av ./opt/ /opt/
rm -rf ./opt/
sudo rsync -av ./usr/ /usr/
rm -rf ./usr/
chmod 777 /opt/Termius/termius-app
./opt/Termius/termius-app

# JetBrains app installation
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.3.2.31487.tar.gz
sudo tar -xzf jetbrains-toolbox-2.3.2.31487.tar.gz -C /opt
./opt/jetbrains-toolbox-2.3.2.31487/jetbrains-toolbox

pacman -S zsh
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

reboot