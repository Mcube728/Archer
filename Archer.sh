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
echo "INSTALLING WINDOW MANAGER i3..."
echo
yes | sudo pacman -S i3 --noconfirm
yes | sudo pacman -S dmenu --noconfirm
yes | sudo pacman -S engrampar --noconfirm
yes | sudo pacman -S qdfview   --noconfirm
yes | sudo pacman -S firefox  --noconfirm
yes | sudo pacman -S lynx  --noconfirm
yes | sudo pacman -S ffmpeg  --noconfirm
yes | sudo pacman -S rxvt-unicode  --noconfirm
yes | sudo pacman -S thunar  --noconfirm
yes | sudo pacman -S htop  --noconfirm
yes | sudo pacman -S neofetch --noconfirm
yes | sudo pacman -S git  --noconfirm
yes | sudo pacman -S wget  --noconfirm
yes | sudo pacman -S xfce4-screenshooter  --noconfirm
yes | sudo pacman -S libreoffice --noconfirm
yes | sudo pacman -S foliate --noconfirm
yes | sudo pacman -S feh --noconfirm
echo
echo "DONE INSTALLING WINDOW MANAGER i3! :)"
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
echo "======================================================================"
echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW REBOOT THE SYSTEM AND THEN LAUNCH THE CONFIGURATION SCRIPT FOR THE WM AND TERMINAL. :)"
echo
