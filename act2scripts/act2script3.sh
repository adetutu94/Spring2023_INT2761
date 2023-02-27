#!/bin/bash

# Prompt user for their name
read -p "Enter your name: " name

# Get the current hour
hour=$(date +%H)

# Determine the appropriate greeting based on the time of day
case $hour in
  0[0-9]|1[0-1])
    greeting="Good morning";;
  1[2-6])
    greeting="Good afternoon";;
  *)
    greeting="Good evening";;
esac

# Print the greeting
echo "$greeting, $name!"
