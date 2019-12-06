#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# WORK_MODE="left"

if type "xrandr"; then
	if [[ $(xrandr --query | grep "HDMI2 connected" | wc -l) == 1 ]]; then
		if [[ "$WORK_MODE" == "left" ]]; then
			MONITOR="eDP1" polybar --reload main &
			TRAYPOS="right" MONITOR="HDMI2" polybar --reload main &
		elif [[ "$WORK_MODE" == "top" ]]; then
			MONITOR="HDMI2" polybar --reload main &
			TRAYPOS="right" MONITOR="eDP1" polybar --reload main &
		elif [[ "$WORK_MODE" == "dup" ]]; then
			# MONITOR="eDP1" polybar --reload main &
			TRAYPOS="right" MONITOR="HDMI2" polybar --reload main &
		fi
	else
		TRAYPOS="right" MONITOR="eDP1" polybar --reload main &
	fi
fi
