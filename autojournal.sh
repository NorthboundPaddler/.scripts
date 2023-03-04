#!/usr/bin/bash

read -p "Type your journal entry: " entry
dt=$(TZ=America/Chicago date +%Y-%m-%d-%T) 
padding=" - "
line="$dt$padding$entry"
#echo $line
echo $line >> ~/journal.md 
