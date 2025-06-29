#!/bin/bash

chosen=$(echo -e "Scroller\nTile\nGrid\nMonocle\nDwindle\nSpiral" | rofi -dmenu -theme ~/.config/rofi/mmsglayout.rasi)

if [[ $chosen = "Scroller" ]]; then
	mmsg -l 'S' && notify-send -t 900 "  Scroller Mode"
elif [[ $chosen = "Tile" ]]; then
	mmsg -l 'T' && notify-send -t 900 "  Tile Mode"
elif [[ $chosen = "Grid" ]]; then
	mmsg -l 'G' && notify-send -t 900 "󰋁  Grid Mode"
elif [[ $chosen = "Monocle" ]]; then
	mmsg -l 'M' && notify-send -t 900 "  Monocle Mode"
elif [[ $chosen = "Dwindle" ]]; then
	mmsg -l 'D' && notify-send -t 900 " Dwindle Mode"
elif [[ $chosen = "Spiral" ]]; then
	mmsg -l 'P' && notify-send -t 900 "󰑓  Spiral Mode"
fi
