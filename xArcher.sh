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

yes | sudo pacman -Syyu --noconfirm    # Upgrade the system before the applications so as not to run into any errors 

#===================================================================
# This section takes care of the xorg server which is responsible for handling the programs that handle Graphical User Interfaces(GUIs).
echo
echo "INSTALLING XORG..."
echo
yes | sudo pacman -S xorg-server --noconfirm        # XOrg Server
yes | sudo pacman -S xorg-xinit --noconfirm         # XOrg init
yes | sudo pacman _S xorg-apps --noconfirm          # XOrg apps group
yes | sudo pacman -S xf86-video-intel --noconfirm   # Open Source video drivers for Intel
echo 
echo "DONE INSTALLING XORG! :)"
echo


#===================================================================
# This section takes care of the DE/WM section. In the original script, I wanted to go with a window manager only setup, however, I changed my mind, and decided to go with a desktop environment setup(this is the reason why the original script[Archer.sh] is lacking a bit. Once I get some more time on my hands, I'll update the i3 script as well). This script will install the XFCE DE. The original Archer script has i3 as the window manager. Of course, you can hack this script to use something like Gnome, KDE, LXDE and so on. I chose XFCE because it's simple and fast, plus it's easy on system resources too. 

# The System-------------------------------------------------------- 
yes | sudo pacman -S ntp --noconfirm                                # Package to set the time via network
yes | sudo pacman -S xf86-input-libinput --noconfirm                # Trackpoint Drivers (I'm making this script with my thinkpad in mind. For those of y'all that are curious, it's a T470 with an i5)


echo "INSTALLING DESKTOP ENVIRONMENT XFCE..."
# The Desktop Environment-------------------------------------------
yes | sudo pacman -S xfce4 --noconfirm                              # XFCE Desktop Environment
yes | sudo pacman -S networkmanager --noconfirm                     # Network Connection Manager 
yes | sudo pacman -S network-manager-applet --noconfirm             # System tray icon
yes | sudo pacman -S nm-connection-editor --noconfirm               # GUI for Network Manager
yes | sudo pacman -S engrampa --noconfirm                           # Archive Manager

# I don't usually use all of the XFCE goodies, so I just install what I use.  
sudo pacman -S mousepad --noconfirm 
sudo pacman -S thunar-archive-plugin --noconfirm 
sudo pacman -S thunar-media-tags-plugin --noconfirm 
sudo pacman -S xfburn --noconfirm 
sudo pacman -S xfce4-battery-plugin --noconfirm 
sudo pacman -S xfce4-clipman-plugin --noconfirm 
sudo pacman -S xfce4-cpugraph-plugin --noconfirm 
sudo pacman -S xfce4-datetime-plugin --noconfirm 
sudo pacman -S xfce4-mount-plugin --noconfirm 
sudo pacman -S xfce4-mpc-plugin --noconfirm 
sudo pacman -S xfce4-netload-plugin --noconfirm 
sudo pacman -S xfce4-notifyd --noconfirm 
sudo pacman -S xfce4-pulseaudio-plugin --noconfirm 
sudo pacman -S xfce4-screenshooter --noconfirm 
sudo pacman -S xfce4-systemload-plugin --noconfirm 
sudo pacman -S xfce4-taskmanager --noconfirm 
sudo pacman -S xfce4-wavelan-plugin --noconfirm
sudo pacman -S thunar-volman                                        # Thunar Volume management
sudo pacman -S gvfs                                                 # GNOME Virtual Filesystem(you need this for thunar to automoumt!!!)
sudo pacman -S xfce4-whiskermenu-plugin --noconfirm 
echo
echo "DONE INSTALLING DESKTOP ENVIRONMENT XFCE! :)"
echo


#===================================================================
# This section takes care of the additional software I use on a daily basis. You can add your own applications here...
echo "INSTALLING SOFTWARE..."
# Terminal Shizz----------------------------------------------------
yes | sudo pacman -S wget  --noconfirm                              # The non-interactive network Downloader
yes | sudo pacman -S curl --noconfirm                               # Remote content retrieval
yes | sudo pacman -S scrot--noconfirm                               # Command Line based Screenshot utility
yes | sudo pacman -S htop  --noconfirm                              # System Resource Monitor
yes | sudo pacman -S bpytop --noconfirm                            # Another Resource Monitor. Looks better than htop in my opinion..
yes | sudo pacman -S unrar --noconfirm                              # RAR Compression program
yes | sudo pacman -S unzip --noconfirm                              # Zip Compression Program
yes | sudo pacman -S zip --noconfirm                                # Zip Compression Program
yes | sudo pacman -S neofetch --noconfirm                           # Shows system information in the Terminal(AKA an Arch Linux User's badge of honour XD)

# Development-------------------------------------------------------
yes | sudo pacman -S --needed base-devel git --noconfirm            #                        
yes | sudo pacman -S git --noconfirm                                # Version Control System
yes | sudo pacman -S gcc --noconfirm                                # C/C++ Compiler
yes | sudo pacman -S glibc --noconfirm                              # C libraries
yes | sudo pacman -S vim --noconfirm                                # Text editor

# Productivity------------------------------------------------------
yes | sudo pacman -S libreoffice-fresh --noconfirm                        # LibreOffice Suite
yes | sudo pacman -S mousepad --noconfirm                           # Graphical text editor
yes | sudo pacman -S qpdfview   --noconfirm                          # Tabbed PDF Viewer. Browsers make great pdf viewers too, so you can totally ditch this.

# Disk Utilities----------------------------------------------------
yes | sudo pacman -S gparted --noconfirm                            # Disk Utility

# Graphics and Design-----------------------------------------------
yes | sudo pacman -S nomacs --noconfirm                             # Image Viewing 
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
yes | sudo pacman -S terminus-font --noconfirm                      # Terminus Font(I absolutely love this font)
yes | sudo pacman -S noto-fonts-emoji --noconfirm                   # Emoji Fonts
yes | sudo pacman -S terminus-font --noconfirm                      # Terminus font(I absolutely love this font!!)
yes | sudo pacman -S kvantum-qt5 --noconfirm                        # SVG-based theme engine for Qt5 (including config tool and extra themes)

# Miscellaneous-----------------------------------------------------
yes | sudo pacman -S calibre --noconfirm                            # Ebook Management
yes | sudo pacman -S vlc --noconfirm                                # Video Player
yes | sudo pacman -S nomacs --noconfirm                             # Image Viewer
yes | sudo pacman -S ffmpeg  --noconfirm                            # Video Converter (Mental Outlaw has a great video on youtube on how you can record your screen from the terminal via ffmpeg!)

# Backups
yes | sudo pacman -S rsync                                          # CLI filesync utility that can be used for backups
echo
echo "DONE INSTALLING SOFTWARE! :)"
echo

#===================================================================
# This section now takes care of the Display Manager. I chose LightDM. Feel free to replace LightDM with your choice of Display Manager. 
echo
echo "INSTALLING DISPLAY MANAGER-LIGHTDM..."
echo
yes | sudo pacman -S lightdm  --noconfirm                           # Display/Login Manager
yes | sudo pacman -S lightdm-gtk-greeter  --noconfirm               # Gtk Greeter
yes | sudo pacman -S lightdm-gtk-greeter-settings  --noconfirm      # Settings for Lightdm
sudo systemctl enable lightdm 
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

echo
echo "ENABLING NETWORK TIME PROTOCOL SO THE CLOCK WILL BE SET VIA NETWORK..."
sudo ntpd -qg
sudo systemctl enable ntpd.service
sudo systemctl start ntpd.service
echo

#===================================================================
# You may have noticed that I have not put a section for printer packages and services. Unfortunately, I do not have a printer, so these packages won't be of use to me. If I do have to print something, I put it on a usb drive and head over to a store with a  printing service. If you do have a printer of your own, you're free to hack this script and install the needed packages and services. :)
echo "======================================================================"
echo
echo
echo "DONE INSTALLING THE APPLICATIONS! YOU CAN NOW LAUNCH THE CONFIGURATION SCRIPT FOR THE SYSTEM. :)"
