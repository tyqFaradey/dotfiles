#!/bin/bash

WallDir=$HOME/.wallpapers/

IMG_PATH=$HOME/.config/current_wallpaper

SELECTED=$WallDir$(ls ~/.wallpapers | grep -E "\.(jpg|gif|png)$" | rofi -dmenu -i -theme ~/.config/rofi/theme.rasi)

echo $SELECTED

ln -sf $SELECTED $IMG_PATH

hyprctl reload
swww img $IMG_PATH
wal -i $IMG_PATH
