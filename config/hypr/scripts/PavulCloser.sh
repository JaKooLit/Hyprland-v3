#!/bin/bash

pavucontrol_active=false

while true; do
	active_window=$(hyprctl activewindow | grep class | awk '$1 { print $2 }')

	if [ "$active_window" == "pavucontrol" ]; then
		pavucontrol_active=true
	else
		pavucontrol_active=false
		pkill pavucontrol
	fi

	sleep 2
done
