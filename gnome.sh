#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector -c Chile -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Sy

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

sudo pacman -S --noconfirm xorg gdm gnome gnome-extra gnome-tweaks simplescreenrecorder arc-gtk-theme arc-icon-theme obs-studio dina-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji

sudo systemctl enable gdm
/bin/echo -e "\e[1;32mREINICIANDO EN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
