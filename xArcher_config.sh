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

#------------------------------------------
echo 
echo "SETTING LAPTOP LID CLOSE TO SUSPEND..."
sudo sed -i -e 's|[# ]*HandleLidSwitch[ ]*=[ ]*.*|HandleLidSwitch=suspend|g' /etc/systemd/logind.conf
echo

#------------------------------------------
# I got this from Rick Ellis' ArcMatic Arch installation script. He installed an LTS(Long Term Support) Kernel and configured it as a second boot option. 
echo
echo "CONFIGURING LTS KERNEL AS A SECONDARY BOOT OPTION"
sudo cp /boot/loader/entries/arch.conf /boot/loader/entries/arch-lts.conf
sudo sed -i 's|Arch Linux|Arch Linux LTS Kernel|g' /boot/loader/entries/arch-lts.conf
sudo sed -i 's|vmlinuz-linux|vmlinuz-linux-lts|g' /boot/loader/entries/arch-lts.conf
sudo sed -i 's|initramfs-linux.img|initramfs-linux-lts.img|g' /boot/loader/entries/arch-lts.conf

#------------------------------------------
echo
echo "CONFIGURING CUPS SERVICE DAEMON FOR PRINTING..."
systemctl enable org.cups.cupsd.service
systemctl start org.cups.cupsd.service
echo

#------------------------------------------
echo
echo "ENABLING NETWORK TIME PROTOCOL SO THE CLOCK WILL BE SET VIA NETWORK..."
sudo ntpd -qg
sudo systemctl enable ntpd.service
sudo systemctl start ntpd.service
echo

#------------------------------------------
echo 
echo "CONFIGGURING VIM..."
cp -f vimrc ~/.vimrc
echo "CONFIGURED VIM :)"
echo

#------------------------------------------
echo
echo "CONFIGURING URXVT TERMINAL EMULATOR"
cp -f Xresources /home/mikhail/.Xresources
xrdb ~/.Xresources
echo "URxvt.geometry: 95x50" > ~/.Xdefaults
echo "CONFIGURED URXVT TERMINAL EMULATOR! :)"
echo

#------------------------------------------
echo "NETWORK CONFIGURATION"
echo "Find your network adapter:"
ip link
echo
echo "Enter your network adapter:" LINK
echo 
echo "DISABLING DHCP AND ENABLING NETWORK MANAGER DAEMON..."
echo 
sudo systemctl disable dhcpcd.service
sudo systemctl stop dhcpcd.service
sudo ip link set dev ${LINK} down
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
sudo ip link set dev ${LINK} up

#------------------------------------------
cp -r startpage ~/.config/
echo
echo
echo "THANK YOU FOR USING ARCHER!!"
echo "YOU CAN NOW REBOOT THE SYSTEM. :)"
