#!/usr/bin/bash

read -p "Type your journal entry: " entry
padding="- "
line="$padding$entry"
echo $line
# echo entry >> file
