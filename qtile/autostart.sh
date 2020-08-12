#!/usr/bin/bash

# A list of command that will be execute by the startuphook of Xmonad.

nitrogen --restore &
picom -b --config ~/.config/picom.conf &
nm-applet &
pamac-tray &
clipit &
start-pulseaudio-x11 &
pa-applet
