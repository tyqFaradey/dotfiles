#!/usr/bin/env bash

function select-wall() {
    WALL=$(fzf --preview-window=right:70% \
        --preview 'chafa -s ${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES} {}')
    echo $WALL
}

TARGET_DIR="$HOME/.config/wallpapers"

cd $TARGET_DIR
swww img $(select-wall)
