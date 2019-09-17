#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
if type "xrandr"; then
	if [[ $(xrandr --query | grep "HDMI-2 connected primary" | wc -l) == 1 ]]; then
  		MONITOR="HDMI-2" TRAYPOS="right" polybar --reload main &
  		#   MONITOR="eDP-1" TRAYPOS="none" polybar --reload main &
	elif [[ $(xrandr --query | grep " eDP-1 connected primary" | wc -l) == 1 ]]; then
		MONITOR="eDP-1"  TRAYPOS="right" polybar --reload main &
	else
  		MONITOR="eDP-1" TRAYPOS="right" polybar --reload main &
	fi

fi
