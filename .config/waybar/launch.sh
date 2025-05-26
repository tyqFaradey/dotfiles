#!/bin/bush

if ! pgrep -x waybar > /dev/null; then 
	waybar
	exit;
fi

hyprctl dispatch exec pkill -SIGUSR2 waybar

