#!/bin/bash

# Provide one word/sentence as an arg to script.
# If in that sentence there is an ip address, find out if that ip address is reachable or not.

# Argument check
if [ $# -ne 1 ]; then
  echo "Provide exactly one argument"
  exit 1
fi

REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"

# Regex check
if ! [[ $1 =~ $REGEX ]]; then
  echo "No IP address provided"
  exit 2
fi

IP=${BASH_REMATCH[0]}

# Find if ip address is reachable or not
ping -n 1 $IP 1> /dev/null # Redirect only STDOUT
if [ $? -eq 0 ]; then
  STATUS="ALIVE"
else
  STATUS="DEAD"
fi

echo "IP found: $IP ($STATUS)"
