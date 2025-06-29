#!/bin/sh
grim -o HDMI-A-1 /tmp/lock.png
corrupter /tmp/lock.png /tmp/lock.png 
gtklock -d -s ~/.config/gtklock/style.css
