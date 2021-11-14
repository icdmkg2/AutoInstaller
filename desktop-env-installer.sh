#!/bin/bash
#sudo apt-get update && sudo apt install gdm3 && sudo apt install tasksel && sudo tasksel install ubuntu-desktop && sudo apt install tightvncserver && vncserver && vncserver -kill :1 && cd ~/.vnc/ && rm xstartup && wget https://raw.githubusercontent.com/icdmkg2/AutoInstaller/main/vnc/gnome/xstartup && sudo reboot 
function gnome() {
    echo ""
	coming soon 
	echo ""
}

function mate() {
    echo ""
	sudo apt-get update -y && sudo apt install lightdm -y && sudo apt install tasksel -y && sudo tasksel install ubuntu-mate-desktop -y  && sudo apt install tightvncserver && vncserver && vncserver -kill :1 && rm xstartup && cd ~/.vnc/ && sudo wget https://raw.githubusercontent.com/icdmkg2/AutoInstaller/main/vnc/mate/xstartup && sudo reboot
	echo ""
}

function xfce4() {
    echo ""
	sudo apt-get update -y && sudo apt install xfce4 xfce4-goodies -y && sudo apt install tightvncserver -y && vncserver && vncserver -kill :1 && sudo apt-get install -y konsole && cd ~/.vnc/ && rm xstartup && sudo wget https://raw.githubusercontent.com/icdmkg2/AutoInstaller/main/vnc/xfce4/xstartup && sudo reboot
	echo ""
}

##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##

ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}

menu(){
echo -ne "
Ubuntu Desktop Installer
$(ColorGreen '1)') Install GNOME Desktop Env
$(ColorGreen '2)') Install MATE Desktop Env
$(ColorGreen '3)') Install XFCE4 Desktop Env
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) gnome ; menu ;;
	        2) mate ; menu ;;
	        3) xfce4 ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
