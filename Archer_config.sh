#!/usr/bin/env bash
# Author: Mcube728
# Date: 04/06/2021
# Time: 3:48 PM
# This is a script for configuring the i3 WM and the URxvt Terminal. This is to be run after you reboot the system. 
clear
echo "                    _                "
echo "     /\            | |               "
echo "    /  \   _ __ ___| |__   ___ _ __  "
echo "   / /\ \ | '__/ __| '_ \ / _ \ '__| "
echo "  / ____ \| | | (__| | | |  __/ |    "
echo " /_/    \_\_|  \___|_| |_|\___|_|    "
echo
echo "   Arch Linux Configuration Script   "
echo "_____________________________________"

echo 
echo "CONFIGURING i3 WINDOW MANAGER..."
echo
cp -f i3_config ~/.config/i3/config
echo "CONFIGURED i3 WM! :)"
echo

echo
echo "CONFIGURING URXVT TERMINAL EMULATOR"
echo
cp Xresources /home/mikhail/.Xresources
xrdb ~/.Xresources
echo "CONFIGURED URXVT TERMINAL EMULATOR! :)"
mkdir ~/.config/home
cp -r Startpage ~/.config/home
cp -f Wallpaper.png ~/.config/home/Wallpaper.png

echo "DONE CONFIGURING SYSTEM!"
echo "THANK YOU FOR USING ARCHER!! :)"
