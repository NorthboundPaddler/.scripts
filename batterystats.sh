#!/usr/bin/bash
GRN='\e[32m'
RED='\e[31m'
YELLOW='\e[33m'
CYN='\e[36m'
END='\e[0m'


BATTERY="BAT0"
CAP="$(cat /sys/class/power_supply/$BATTERY/capacity)"
STATE="$(cat /sys/class/power_supply/$BATTERY/status)"

if [[ $CAP<30 ]]; then
	echo "red"
	COLOR="$RED"
elif [[ $CAP<80 ]]; then
	echo "yellow"
	COLOR="$YELLOW"
else
	echo "green"
	COLOR="$GRN"
fi

echo -e "$STATE $BATTERY at $COLOR$CAP%$END"
