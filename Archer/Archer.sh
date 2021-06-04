#!/bin/bash
# Author: Mcube728
# Date: 07/05/2021
# Time: 11:48 PM
# This is a script meant to install a few necessary packages along with some minor configuration so that you can have a basic install of Arch linux.
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
echo
echo "INSTALLING XORG..."
echo
sudo pacman -S xorg-server
sudo pacman -S xorg-xinit
echo 
echo "DONE INSTALLING XORG! :)"
echo

# This section takes care of the DE/WM section. I wanted a WM only setup, but you can change the script to install a DE/WM of your choice. I chose i3. 
echo
echo "INSTALLING WINDOW MANAGER i3..."
echo
sudo pacman -S i3
sudo pacman -S dmenu
sudo pacman -S engrampa
sudo pacman -S qdfview
sudo pacman -S firefox
sudo pacman -S lynx
sudo pacman -S ffmpeg
sudo pacman -S rxvt-unicode
sudo pacman -S thunar
sudo pacman -S htop
sudo pacman -S neofetch
sudo pacman -S git
sudo pacman -S wget
sudo pacman -S xfce4-screenshooter
echo
echo "DONE INSTALLING WINDOW MANAGER i3! :)"
echo

# This section now takes care of the Display Manager. I chose LightDM. Feel free to replace LightDM with your choice of Display Manager. 
echo
echo "INSTALLING DISPLAY MANAGER-LIGHTDM..."
echo
sudo pacman -S lightdm
sudo pacman -S lightdm-gtk-greeter
sudo pacman -S lightdm-gtk-greeter-settings
echo
echo "DONE INSTALLING DISPLAY MANAGER-LIGHTDM! :)"
echo

# This section takes care of the audio components now. 
echo 
echo "INSTALLING AUDIO COMPONENTS..."
echo
sudo pacman -S alsa-utils
sudo pacman -S alsa-plugins
sudo pacman -S pulseaudio
sudo pacman -S pulseaudio-alsa
sudo pacman -S pavucontrol
sudo pacman -S volumeicon
echo
echo "DONE INSTALLING AUDIO COMPONENTS! :)"
echo"======================================================================"
echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW REBOOT THE SYSTEM AND THEN LAUNCH THE CONFIGURATION SCRIPT FOR THE WM AND TERMINAL. :)"
echo
