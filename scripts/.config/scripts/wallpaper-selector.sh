#!/usr/bin/env bash

function select-wall() {
    WALL=$(fzf --preview-window=right:70% \
        --preview 'chafa -s ${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES} {}')
    echo $WALL
}

TARGET_DIR="$HOME/.config/wallpapers"

cd $TARGET_DIR
SELECTED_WALL=$(select-wall)
awww img $SELECTED_WALL
wal -i $SELECTED_WALL -b "#000000"

# hyprctl dispatch killactive
