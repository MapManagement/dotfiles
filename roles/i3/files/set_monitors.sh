#!/bin/zsh

xrandr --output DP-1 --mode 3440x1440 --rate 75
xrandr --output HDMI-1 --mode 2560x1440 --rate 144 --right-of DP-1
