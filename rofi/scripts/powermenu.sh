#!/bin/bash

choice=$(echo -e "Poweroff\nReboot\nLock\nSuspend\nLogout" | rofi -dmenu)

case "$choice" in

    Poweroff)
        systemctl poweroff
        ;;

    Reboot)
        systemctl reboot
        ;;

    Lock)
        hyprlock
        ;;

    Suspend)
        hyprlock &
	sleep 1	
	systemctl suspend
        ;;

    Logout)
        hyprctl dispatch exit
        ;;

esac
