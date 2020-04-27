#!/bin/bash

if [ ! $# -eq 2 ]; then
  echo "Two arguments needed"
  exit 1
fi

# If the last ARG [of let] evaluates to 0, let returns 1; let returns 0 otherwise.
let RESULT=$1*$2

echo "$1 * $2 = $RESULT"
