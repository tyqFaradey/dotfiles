!/bin/bash

#	██╗    ██╗ █████╗ ██╗     ██╗     ██████╗  █████╗ ██████╗ ███████╗██████╗ 
#	██║    ██║██╔══██╗██║     ██║     ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗
#	██║ █╗ ██║███████║██║     ██║     ██████╔╝███████║██████╔╝█████╗  ██████╔╝
#	██║███╗██║██╔══██║██║     ██║     ██╔═══╝ ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗
#	╚███╔███╔╝██║  ██║███████╗███████╗██║     ██║  ██║██║     ███████╗██║  ██║
#	 ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝
                                                                          
#				███╗   ███╗███████╗███╗   ██╗██╗   ██╗                                    
#				████╗ ████║██╔════╝████╗  ██║██║   ██║                                    
#				██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║                                    
#				██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║                                    
#				██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝                                    
#				╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝                                     
                                                                          


wp_dir=~/.config/wallpapers/
curent_wp=~/.config/curent_wallpaper.image

theme=~/.config/rofi/wallpaper_menu/theme.rasi

function change_theme {
	swww img $1 > /dev/null
	wal -i $1 > /dev/null
	#wal-telegram --wal
}

selected_wp=$(for a in $wp_dir*.{jpg,png}; do echo -en "$(basename $a)\0icon\x1f$a\n" ; done | \
	rofi \
	-dmenu \
	-theme $theme)


if [ ! "$selected_wp" == "" ]; then
	new_wp=$wp_dir$selected_wp
	ln -sf $new_wp $curent_wp
	change_theme $new_wp
fi
