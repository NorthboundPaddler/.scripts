#!/usr/bin/bash
#
state="`cat /sys/class/power_supply/BAT1/status`"
echo "$state"
if [ "$state"="Discharging" ]; then
	prefix="-"
else
	prefix="+"
fi

uw="`cat /sys/class/power_supply/BAT1/power_now`"
w=$((uw/1000000))

echo "$prefix$w Watts"

# awk '{print $1*10^-6 " W"}' /sys/class/power_supply/BAT1/power_now
