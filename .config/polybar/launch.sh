#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# # Launch Polybar, using the first bar
# BAR=$(cat $HOME/.config/polybar/config | awk 'match($0, /\[bar\/(.*)\]/) {print substr($0, RSTART+5, RLENGTH-6)}')
# polybar ${BAR}

# Launch Polybar, using default config location ~/.config/polybar/config
polybar eDP-1 &

echo "Polybar launched..."