#!/bin/bash

# Go through all args and print them all
COUNT=1

for ARG in "$@"
do
  echo "$COUNT. arg: $ARG"
  let COUNT++
done
