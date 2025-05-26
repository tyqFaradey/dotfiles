#!/bin/bush

if ! pgrep -x waybar > /dev/null; then 
	waybar -c ~/.config/waybar/config.json -s ~/.config/waybar/style.css
	exit;
fi

hyprctl dispatch exec pkill -SIGUSR2 waybar

