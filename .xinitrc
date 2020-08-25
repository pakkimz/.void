#!/bin/sh
sxhkd &
xrdb -I$HOME ~/.Xresources
exec bspwm
