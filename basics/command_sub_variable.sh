#!/bin/bash

# $() or ``
START=$(date +%s) # Start time measurement
sleep 2
END=$(date +%s) # End time measurement
DIFFERENCE=$(( END - START ))
echo "Time elapsed: $DIFFERENCE seconds"
