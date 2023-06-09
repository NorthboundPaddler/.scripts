#!/usr/bin/bash

# Check if user put input inline, otherwise prompt them
if [[ -z "$1" ]]; then
	read -p "Type your journal entry: " entry
else
	entry="$@"
fi

# Concatenate the date timestamp, a delimter, and input
dt=$(TZ=America/Chicago date +%Y-%m-%d %T) 
padding=" - "
line="$dt$padding$entry  " #Note the 2 spaces at EOL to parse as a newline

# Log the concatenated input to a file
#echo $line
echo $line >> ~/journal.md 
