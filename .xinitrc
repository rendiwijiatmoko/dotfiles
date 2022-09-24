#!/bin/bash

*.font:	monospace:pixelsize=14:antialias=true:autohint=true;
*.alpha: 0.8
*.color0: #111

# Autostart (STATIC)
feh --bg-fill ~/.config/backgrounds/wallhaven-lmxmxy.png &
picom -b &

# Autostart (DINAMIC)
slstatus &


# Execute DWM
while true; do 
	dwm >/dev/null 2>&1
done

exec dwm
