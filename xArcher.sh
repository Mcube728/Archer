#!/usr/bin/env bash
# Author: Mcube728
# Date: 07/05/2021
# Time: 11:48 PM
# This is a script meant to install a few necessary packages along with some minor configuration so that you can have a basic install of Arch linux.
clear
echo "                    _                "
echo "     /\            | |               "
echo "    /  \   _ __ ___| |__   ___ _ __  "
echo "   / /\ \ | '__/ __| '_ \ / _ \ '__| "
echo "  / ____ \| | | (__| | | |  __/ |    "
echo " /_/    \_\_|  \___|_| |_|\___|_|    "
echo
echo " Arch Linux Post Installation Script "
echo "_____________________________________"

# This section takes care of the xorg server which is responsible for handling the programs that handle Graphical User Interfaces(GUIs).
yes | sudo pacman -Syyu 
echo
echo "INSTALLING XORG..."
echo
yes | sudo pacman -S xorg-server --noconfirm
yes | sudo pacman -S xorg-xinit --noconfirm
echo 
echo "DONE INSTALLING XORG! :)"
echo

# This section takes care of the DE/WM section. I wanted a WM only setup, but you can change the script to install a DE/WM of your choice. I chose i3. 
echo
echo "INSTALLING DESKTOP ENVIRONMENT XFCE..."
echo
yes | sudo pacman -S xfce4 --noconfirm
yes | sudo pacman -S xfce4-goodies --noconfirm
yes | sudo pacman -S networkmanager --noconfirm
yes | sudo pacman -S networkmanager-applet --noconfirm
yes | sudo pacman -S engrampa --noconfirm
yes | sudo pacman -S qdfview   --noconfirm
yes | sudo pacman -S firefox  --noconfirm
yes | sudo pacman -S lynx  --noconfirm
yes | sudo pacman -S ffmpeg  --noconfirm
yes | sudo pacman -S rxvt-unicode  --noconfirm
yes | sudo pacman -S htop  --noconfirm
yes | sudo pacman -S neofetch --noconfirm
yes | sudo pacman -S git  --noconfirm
yes | sudo pacman -S wget  --noconfirm
yes | sudo pacman -S scrot--noconfirm
yes | sudo pacman -S libreoffice --noconfirm
yes | sudo pacman -S calibre --noconfirm
yes | sudo pacman -S bashtop --noconfirm
yes | sudo pacman -S lxappearance --noconfirm
yes | sudo pacman -S gnome-themes-extra --noconfirm
yes | sudo pacman -S urxvt-perls --noconfirm
yes | sudo pacman -S adobe-source-han-sans-otc-fonts --noconfirm
yes | sudo pacman -S noto-fonts-emoji --noconfirm
yes | sudo pacman -S --needed base-devel git
yes | sudo pacman -S gcolor2 --noconfirm
yes | sudo pacman -S gimp --noconfirm
yes | sudo pacman -S mousepad --noconfirm
yes | sudo pacman -S hexchat --noconfirm
yes | sudo pacman -S irssi --noconfirm
yes | sudo pacman -S zip --noconfirm
yes | sudo pacman -S unzip --noconfirm
yes | sudo pacman -S unrar --noconfirm
yes | sudo pacman -S vlc --noconfirm
yes | sudo pacman -S xf86-input-libinput --noconfirm

echo
echo "DONE INSTALLING DESKTOP ENVIRONMENT XFCE! :)"
echo

# This section now takes care of the Display Manager. I chose LightDM. Feel free to replace LightDM with your choice of Display Manager. 
echo
echo "INSTALLING DISPLAY MANAGER-LIGHTDM..."
echo
yes | sudo pacman -S lightdm  --noconfirm
yes | sudo pacman -S lightdm-gtk-greeter  --noconfirm
yes | sudo pacman -S lightdm-gtk-greeter-settings  --noconfirm
echo
echo "DONE INSTALLING DISPLAY MANAGER-LIGHTDM! :)"
echo

# This section takes care of the audio components now. 
echo 
echo "INSTALLING AUDIO COMPONENTS..."
echo
yes | sudo pacman -S alsa-utils  --noconfirm
yes | sudo pacman -S alsa-plugins  --noconfirm
yes | sudo pacman -S pulseaudio  --noconfirm
yes | sudo pacman -S pulseaudio-alsa  --noconfirm
yes | sudo pacman -S pavucontrol  --noconfirm
yes | sudo pacman -S volumeicon  --noconfirm

echo
echo "DONE INSTALLING AUDIO COMPONENTS! :)"
echo 
echo "INSTALLING PRINTER COMPONENTS..."
echo 
yes | sudo pacman -S cups --noconfirm           # Open source printer drivers
yes | sudo pacman -S cups-pdf --noconfirm       # PDF support for cups
yes | sudo pacman -S ghostscript --noconfirm    # PostScript interpreter
yes | sudo pacman -S gsfonts --noconfirm        # Adobe Postscript replacement fonts
yes | sudo pacman -S hplip --noconfirm          # HP drivers 
yes | sudo pacman -S system-config-printer      # Printer setup utility
echo 
echo "DONE INSTALLING PRINTER COMPONENTS! :)"
echo "======================================================================"
sudo systemctl enable lightdm
echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW REBOOT THE SYSTEM AND THEN LAUNCH THE CONFIGURATION SCRIPT FOR THE WM AND TERMINAL. :)"
echo
