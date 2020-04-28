#!/bin/bash

# Create script for printing files, which will also display line numbers

# Check arg
if [ $# -ne 1 ]; then
  echo "Exactly one argument needed"
  exit 1
fi

# Check if arg is file
if ! [ -f "$1" ]; then
  echo "File specified does not exists"
  exit 2
fi

COUNT=1

while read line; do
  echo "$COUNT: $line"
  let COUNT++
done <"$1"
