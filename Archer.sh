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
yes | sudo pacman -S xorg-server 
yes | sudo pacman -S xorg-xinit 
echo 
echo "DONE INSTALLING XORG! :)"
echo

# This section takes care of the DE/WM section. I wanted a WM only setup, but you can change the script to install a DE/WM of your choice. I chose i3. 
echo
echo "INSTALLING WINDOW MANAGER i3..."
echo
yes | sudo pacman -S i3
yes | sudo pacman -S dmenu 
yes | sudo pacman -S engrampa
yes | sudo pacman -S qdfview  
yes | sudo pacman -S firefox 
yes | sudo pacman -S lynx 
yes | sudo pacman -S ffmpeg 
yes | sudo pacman -S rxvt-unicode 
yes | sudo pacman -S thunar 
yes | sudo pacman -S htop 
yes | sudo pacman -S neofetch
yes | sudo pacman -S git 
yes | sudo pacman -S wget 
yes | sudo pacman -S xfce4-screenshooter 
echo
echo "DONE INSTALLING WINDOW MANAGER i3! :)"
echo

# This section now takes care of the Display Manager. I chose LightDM. Feel free to replace LightDM with your choice of Display Manager. 
echo
echo "INSTALLING DISPLAY MANAGER-LIGHTDM..."
echo
yes | sudo pacman -S lightdm 
yes | sudo pacman -S lightdm-gtk-greeter 
yes | sudo pacman -S lightdm-gtk-greeter-settings 
echo
echo "DONE INSTALLING DISPLAY MANAGER-LIGHTDM! :)"
echo

# This section takes care of the audio components now. 
echo 
echo "INSTALLING AUDIO COMPONENTS..."
echo
yes | sudo pacman -S alsa-utils 
yes | sudo pacman -S alsa-plugins 
yes | sudo pacman -S pulseaudio 
yes | sudo pacman -S pulseaudio-alsa 
yes | sudo pacman -S pavucontrol 
yes | sudo pacman -S volumeicon 
echo
echo "DONE INSTALLING AUDIO COMPONENTS! :)"
echo "======================================================================"
echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW REBOOT THE SYSTEM AND THEN LAUNCH THE CONFIGURATION SCRIPT FOR THE WM AND TERMINAL. :)"
echo
