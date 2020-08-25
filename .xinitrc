#!/bin/sh
xrdb -I$HOME ~/.Xresources
/home/house/.config/polybar/launch.sh &
exec bspwm
