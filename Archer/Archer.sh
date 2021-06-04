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

XORG_PKGS={
	'xorg-server'	# XOrg Server
	'xorg-xinit'	# XOrg init
}

for XORG_PKG in "${XORG_PKGS[@]}"; do
	echo "Installing: ${XORG_PKG}"
	sudo pacman -S "$XORG_PKG" --noconfirm --needed
done

echo 
echo "DONE INSTALLING XORG! :)"
echo

# This section takes care of the DE/WM section. I wanted a WM only setup, but you can change the script to install a DE/WM of your choice. I chose i3. 
echo
echo "INSTALLING WINDOW MANAGER i3..."
echo

XFCE_PKGS={
	'i3'			# XFCE desktop environment
	'dmenu'			# Graphical Text editor
	'engrampa'		# Archive manager
	'qpdfview'		# Tabbed PDF Viewer
	'firefox' 		# Web-Browser
	'lynx'			# Terminal Web-Browser
	'ffmpeg'	
	'rxvt-unicode' 		# Terminal Emulator
	'thunar' 		# File Manager
	'htop' 			# System resource monitor
	'neofetch' 		# Shows system info
	'git' 
	'wget'
	'xfce4-screenshooter' 	# Screensot Application
}

for XFCE_PKG in "${XFCE_PKGS[@]}"; do
	echo "Installing: ${XFCE_PKG}"
	sudo pacman -S "$XFCE_PKG" --noconfirm --needed 
done

echo
echo "DONE INSTALLING WINDOW MANAGER i3! :)"
echo

# This section now takes care of the Display Manager. I chose LightDM. Feel free to replace LightDM with your choice of Display Manager. 
echo
echo "INSTALLING DISPLAY MANAGER-LIGHTDM..."
echo

LIGHT_PKGS={
	'lightdm'			# LightDM Display Manager
	'lightdm-gtk-greeter'		# LightDM Greeter
	'lightdm-gtk-greeter-settings'	# LightDM Greeter Settings
}

for LIGHT_PKG in "${LIGHT_PKGS[@]}"; do
	echo "Installing: ${LIGHT_PKG}"
	sudo pacman -S "$LIGHT_PKG" --noconfirm --needed
done

echo
echo "DONE INSTALLING DISPLAY MANAGER-LIGHTDM! :)"
echo

# This section takes care of the audio components now. 
echo 
echo "INSTALLING AUDIO COMPONENTS..."
echo

AUDIO_PKGS={
	'alsa-utils' 		# ALSA componenets. https://alsa.opensrc.org
	'alsa-plugins'	 	# ALSA plugins
	'pulseaudio' 		# Pulse Audio Sound Components
	'pulseaudio-alsa' 	# ALSA configuration for pulse audio
	'pavucontrol' 		# Pulse Audio Volume Control
	'volumeicon' 		# System tray volume control
}

for AUDIO_PKG in "${AUDIO_PKGS[@]}"; do
	echo "Installing: ${AUDIO_PKG}"
	sudo pacman -S "$AUDIO_PKG" --noconfirm --needed
done

echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW REBOOT THE SYSTEM AND THEN LAUNCH THE CONFIGURATION SCRIPT FOR THE WM AND TERMINAL. :)"
echo
