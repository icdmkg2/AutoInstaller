#!/bin/bash


server_name=$(hostname)
user_name=$(uname -r)

function update() {
    echo ""
	sudo apt-get update
	echo ""
}

function install-cockpit() {
    echo ""
	sudo apt-get update && sudo apt-get install cockpit -y && sudo apt-get install cockpit-machines -y && sudo apt-get install ufw && sudo ufw allow 9090/tcp && reboot
    echo ""
}

function install-ubuntudesk() {
    echo ""
    echo ""
	wget https://raw.githubusercontent.com/icdmkg2/AutoInstaller/main/desktop-env-installer.sh && bash desktop-env-installer.sh
    echo ""
}

function aboutme() {
    echo ""
	echo ""
	clear && echo " github.com/icdmkg2  ! ItzNoName#1681"
    echo ""
}

function info() {
    clear
    echo "Machine Name :" &&  hostname
	echo "User Name :" && uname -r
}

##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
red='\e[31m'
purple='\e[35m'

##
# Color Functions
##

ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}
ColorRed(){
    echo -ne $red$1$clear
}
ColorPurple(){
	echo -ne $purple$1$clear
}

menu(){
echo -ne "
$(ColorPurple '- Useful Staff Installer')
$(ColorGreen '1)') Update System
$(ColorGreen '2)') Install Cockpit [Open port 9090 in your firewall]
$(ColorGreen '3)') Install Ubuntu Desktop [Full Version]
$(ColorGreen '4)') About Me !
$(ColorGreen '5)') info
$(ColorRed '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) update ; menu ;;
	        2) install-cockpit ; menu ;;
	        3) install-ubuntudesk ; menu ;;
	        4) aboutme ; menu ;;
	        5) info ; menu ;;
		0) clear && echo "See you later :)";;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
