#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d " " -f1); do
		echo "new"

		if [ "$(xrandr --query | grep "$m" | cut -d " " -f3)" == "primary" ]
		then
			MONITOR=$m TRAYPOS="right" polybar --reload main &
			MONITOR=$m TRAYPOS="right" polybar --reload top &
		else
			MONITOR=$m TRAYPOS="" polybar --reload main &
			MONITOR=$m TRAYPOS="" polybar --reload top &
		fi
	done
else
  MONITOR="eDP1" polybar --reload main &
  MONITOR="eDP1" polybar --reload top &
fi
