# Archer
This is a script to install a few basic programs in Arch Linux. I have made scripts for both desktop environment(XFCE) and window manager(i3) only setups, but you can hack the script to use your preferred Desktop Environment/Window Manager. 
These scripts have taken a lot of inspiration from Rick Ellis' <a href="https://github.com/rickellis/ArchMatic">Archmatic scripts</a>

Terminal -> rxvt-unicode<br>
web browser -> Firefox, Lynx<br>
Text editor -> vim<br>

NOTE: If you want the WM only setup, run the Archer and the Archer_config scripts. If you want the DE setup, run the xArcher and the xArcher_config scripts.

Note #2:xrdb will not work in the configuration scripts if you launch it before you've booted into the graphical environ, so launch it after you've booted into the graphical environment(for some reason the home directory gets wiped clean after booting into GUI, so you will need to re clone the repo)
