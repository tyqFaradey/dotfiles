#!/bin/bash

theme='~/.config/rofi/launcher/theme.rasi'

if pgrep -x rofi > /dev/null; then
	killall rofi;
fi

rofi \
    -show drun \
    -theme $theme
