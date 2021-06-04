#!/usr/bin/env bash
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
sudo pacman -Syyu -y
echo
echo "INSTALLING XORG..."
echo
sudo pacman -S xorg-server -y
sudo pacman -S xorg-xinit -y
echo 
echo "DONE INSTALLING XORG! :)"
echo

# This section takes care of the DE/WM section. I wanted a WM only setup, but you can change the script to install a DE/WM of your choice. I chose i3. 
echo
echo "INSTALLING WINDOW MANAGER i3..."
echo
sudo pacman -S i3 -y
sudo pacman -S dmenu -y
sudo pacman -S engrampa -y
sudo pacman -S qdfview -y 
sudo pacman -S firefox -y 
sudo pacman -S lynx -y 
sudo pacman -S ffmpeg -y
sudo pacman -S rxvt-unicode -y
sudo pacman -S thunar -y
sudo pacman -S htop -y
sudo pacman -S neofetch -y
sudo pacman -S git -y
sudo pacman -S wget -y
sudo pacman -S xfce4-screenshooter -y
echo
echo "DONE INSTALLING WINDOW MANAGER i3! :)"
echo

# This section now takes care of the Display Manager. I chose LightDM. Feel free to replace LightDM with your choice of Display Manager. 
echo
echo "INSTALLING DISPLAY MANAGER-LIGHTDM..."
echo
sudo pacman -S lightdm -y
sudo pacman -S lightdm-gtk-greeter -y
sudo pacman -S lightdm-gtk-greeter-settings -y
echo
echo "DONE INSTALLING DISPLAY MANAGER-LIGHTDM! :)"
echo

# This section takes care of the audio components now. 
echo 
echo "INSTALLING AUDIO COMPONENTS..."
echo
sudo pacman -S alsa-utils -y
sudo pacman -S alsa-plugins -y
sudo pacman -S pulseaudio -y
sudo pacman -S pulseaudio-alsa -y
sudo pacman -S pavucontrol -y
sudo pacman -S volumeicon -y
echo
echo "DONE INSTALLING AUDIO COMPONENTS! :)"
echo"======================================================================"
echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW REBOOT THE SYSTEM AND THEN LAUNCH THE CONFIGURATION SCRIPT FOR THE WM AND TERMINAL. :)"
echo
