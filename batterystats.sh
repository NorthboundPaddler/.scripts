#!/usr/bin/bash
GRN='\e[32m'
RED='\e[31m'
YELLOW='\e[33m'
CYN='\e[36m'
END='\e[0m'


BATTERY="BAT1"
CAP="$(cat /sys/class/power_supply/$BATTERY/capacity)"
STATE="$(cat /sys/class/power_supply/$BATTERY/status)"

if [[ $CAP<30 ]]; then
	COLOR="$RED"
elif [[ $CAP<80 ]]; then
	COLOR="$YELLOW"
else
	COLOR="$GRN"
fi

echo -e "$STATE $BATTERY at $COLOR$CAP%$END"
