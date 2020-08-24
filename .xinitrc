#!/bin/sh
sxhkd &
xrdb -I$HOME ~/.Xresources
# devmon &
exec bspwm
