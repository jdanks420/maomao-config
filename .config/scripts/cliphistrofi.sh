#!/bin/bash
#
cliphist list | rofi -dmenu | cliphist decode | wl-copy
