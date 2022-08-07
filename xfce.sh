#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector -c Chile -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Sy

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4 xfce4-goodies simplescreenrecorder arc-gtk-theme arc-icon-theme obs-studio

sudo systemctl enable lightdm
/bin/echo -e "\e[1;32mREINCIANDO EN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
