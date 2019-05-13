#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
if type "xrandr"; then
	if [[ $(xrandr --query | grep "HDMI2 connected primary" | wc -l) == 1 ]]; then
  		MONITOR="eDP1" TRAYPOS="right" polybar --reload main &
	elif [[ $(xrandr --query | grep " connected" | cut -d " " -f1 | wc -w) == 2 ]]; then
		MONITOR="eDP1"  TRAYPOS="right" polybar --reload main &
	else
  		MONITOR="eDP1" TRAYPOS="right" polybar --reload main &
	fi

fi
