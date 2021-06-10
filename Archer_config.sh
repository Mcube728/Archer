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
cp -f i3_config ~/.config/i3/config
echo "CONFIGURED i3 WM! :)"
echo

echo 
echo "CONFIGGURING VIM..."
cp -f vimrc ~/.vimrc
echo "CONFIGURED VIM :)"

cp -f i3status ~/.i3status.conf

echo
echo "CONFIGURING URXVT TERMINAL EMULATOR"
cp Xresources /home/mikhail/.Xresources
xrdb ~/.Xresources
echo "CONFIGURED URXVT TERMINAL EMULATOR! :)"
cp -r startpage ~/.config/
echo
echo
echo "THANK YOU FOR USING ARCHER!! :)"
