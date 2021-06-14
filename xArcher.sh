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

yes | sudo pacman -Syyu     # Upgrade the system before the applications so as not to run into any errors 

#===================================================================
# This section takes care of the xorg server which is responsible for handling the programs that handle Graphical User Interfaces(GUIs).
echo
echo "INSTALLING XORG..."
echo
yes | sudo pacman -S xorg-server --noconfirm
yes | sudo pacman -S xorg-xinit --noconfirm
echo 
echo "DONE INSTALLING XORG! :)"
echo


#===================================================================
# This section takes care of the DE/WM section. In the original script, I wanted to go with a window manager only setup, however, I changed my mind, and decided to go with a desktop environment setup(this is the reason why the original script[Archer.sh] is lacking a bit. Once I get some more time on my hands, I'll update the i3 script as well). This script will install the XFCE DE. The original Archer script has i3 as the window manager. Of course, you can hack this script to use something like Gnome, KDE, LXDE and so on. I chose XFCE because it's simple and fast, plus it's easy on system resources too. 
echo
echo "INSTALLING DESKTOP ENVIRONMENT XFCE..."
echo
# The System-------------------------------------------------------- 
sudo pacman -S linux-lts                                            # Long Term Support Linux Kernel(Secondary boot option)
yes | sudo pacman -S xf86-input-libinput --noconfirm                # Trackpoint Drivers (I'm making this script with my thinkpad in mind. For those of y'all that are curious, it's a T470 with an i5)

# The Desktop Environment-------------------------------------------
yes | sudo pacman -S xfce4 --noconfirm                              # XFCE Desktop Environment
yes | sudo pacman -S xfce4-goodies --noconfirm                      # XFCE Desktop Environment extras
yes | sudo pacman -S networkmanager --noconfirm                     # Network Connection Manager 
yes | sudo pacman -S networkmanager-applet --noconfirm              # System tray icon
yes | sudo pacman -S engrampa --noconfirm                           # Archive Manager

# Terminal Shizz----------------------------------------------------
yes | sudo pacman -S rxvt-unicode  --noconfirm                      # Terminal Emulator
yes | sudo pacman -S urxvt-perls --noconfirm                        # Perl Scripts for URXVT
yes | sudo pacman -S wget  --noconfirm                              # The non-interactive network Downloader
yes | sudo pacman -S curl --noconfirm                               # Remote content retrieval
yes | sudo pacman -S scrot--noconfirm                               # Command Line based Screenshot utility
yes | sudo pacman -S htop  --noconfirm                              # System Resource Monitor
yes | sudo pacman -S bashtop --noconfirm                            # Another Resource Monitor. Looks better than htop in my opinion..
yes | sudo pacman -S unrar --noconfirm                              # RAR Compression program
yes | sudo pacman -S unzip --noconfirm                              # Zip Compression Program
yes | sudo pacman -S zip --noconfirm                                # Zip Compression Program
yes | sudo pacman -S neofetch --noconfirm                           # Shows system information in the Terminal(AKA an Arch Linux User's badge of honour XD)

# Development-------------------------------------------------------
yes | sudo pacman -S --needed base-devel git                        #                        
yes | sudo pacman -S git                                            # Version Control System
yes | sudo pacman -S gcc                                            # C/C++ Compiler
yes | sudo pacman -S glibc                                          # C libraries
yes | sudo pacman -S vim                                            # Text editor

# Productivity------------------------------------------------------
yes | sudo pacman -S libreoffice --noconfirm                        # LibreOffice Suite
yes | sudo pacman -S mousepad --noconfirm                           # Graphical text editor
yes | sudo pacman -S qdfview   --noconfirm                          # Tabbed PDF Viewer. Browsers make great pdf viewers too, so you can totally ditch this.

# Disk Utilities----------------------------------------------------
yes | sudo pacman -S autofs --noconfirm                             # Auto-mounter
yes | sudo pacman -S gparted --noconfirm                            # Disk Utility

# Graphics and Design-----------------------------------------------
yes | sudo pacman -S gimp --noconfirm                               # Photo Editing
yes | sudo pacman -S gcolor2 --noconfirm                            # Color Picker
yes | sudo pacman -S inkscape --noconfirm                           # Vector Image Creation

# Communications----------------------------------------------------
yes | sudo pacman -S irssi --noconfirm                              # Terminal Based IRC Client
yes | sudo pacman -S hexchat --noconfirm                            # Multi Format Chat Client
yes | sudo pacman -S discord --noconfirm                            # Voice And text Chat

# Internet/Web Tools------------------------------------------------
yes | sudo pacman -S lynx  --noconfirm                              # Terminal Based Web Browser
yes | sudo pacman -S firefox  --noconfirm                           # Web Browser

# Fonts and Themes--------------------------------------------------
yes | sudo pacman -S gnome-themes-extra --noconfirm                 # Extra themes. Contains the Adwaita-dark Theme. 
yes | sudo pacman -S adobe-source-han-sans-otc-fonts --noconfirm    # Fonts for Languages like Chinese, Japanese, Vietnamese, Mandarin and so on and so forth. 
yes | sudo pacman -S noto-fonts-emoji --noconfirm                   # Emoji Fonts

#Miscellaneous------------------------------------------------------
yes | sudo pacman -S calibre --noconfirm                            # Ebook Management
yes | sudo pacman -S vlc --noconfirm                                # Video Player
yes | sudo pacman -S ffmpeg  --noconfirm                            # Video Converter (Mental Outlaw has a great video on youtube on how you can record your screen from the terminal via ffmpeg!)

echo
echo "DONE INSTALLING DESKTOP ENVIRONMENT XFCE! :)"
echo


#===================================================================
# This section now takes care of the Display Manager. I chose LightDM. Feel free to replace LightDM with your choice of Display Manager. 
echo
echo "INSTALLING DISPLAY MANAGER-LIGHTDM..."
echo
yes | sudo pacman -S lightdm  --noconfirm                           # Display/Login Manager
yes | sudo pacman -S lightdm-gtk-greeter  --noconfirm               # Gtk Greeter
yes | sudo pacman -S lightdm-gtk-greeter-settings  --noconfirm      # Settings for Lightdm
echo
echo "DONE INSTALLING DISPLAY MANAGER-LIGHTDM! :)"
echo


#===================================================================
# This section takes care of the audio components now. 
echo 
echo "INSTALLING AUDIO COMPONENTS..."
echo
yes | sudo pacman -S alsa-utils  --noconfirm        # ALSA(Advanced Linux Sound Architechure) Components
yes | sudo pacman -S alsa-plugins  --noconfirm      # ALSA Plugins
yes | sudo pacman -S pulseaudio  --noconfirm        # Pulse Audio sound Components
yes | sudo pacman -S pulseaudio-alsa  --noconfirm   # ALSA configuration for pulse audio
yes | sudo pacman -S pavucontrol  --noconfirm       # Pulse Audio volume control
yes | sudo pacman -S volumeicon  --noconfirm        # System tray volume control

echo
echo "DONE INSTALLING AUDIO COMPONENTS! :)"


#===================================================================
# This section takes care of the components required for printing
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
echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW LAUNCH THE CONFIGURATION SCRIPT FOR THE SYSTEM. :)"

