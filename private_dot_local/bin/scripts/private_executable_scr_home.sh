#!/bin/sh
xrandr --output eDP --mode 1920x1080 --pos 5120x0 --rotate normal --output DisplayPort-0 --off --output DisplayPort-1 --off --output DisplayPort-2 --mode 2560x1440 --pos 2560x0 --rotate normal --output DisplayPort-3 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DisplayPort-4 --off
setbg ~/.local/share/bg
xinput --map-to-output 'Wacom HID 52AE Pen stylus'
xinput --map-to-output 'Wacom HID 52AE Pen eraser'
xinput --map-to-output 'Wacom HID 52AE Finger touch'
