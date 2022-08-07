#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector -c Chile -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Sy

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

sudo pacman -S --noconfirm xorg sddm plasma kde-applications simplescreenrecorder obs-studio papirus-icon-theme kdenlive materia-kde

sudo systemctl enable sddm
/bin/echo -e "\e[1;32mREINICIANDO EN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
