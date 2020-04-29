#!/bin/bash

addition() {
  local FIRST=$1
  local SECOND=$2
  let local RESULT=FIRST+SECOND
  echo "Result is: $RESULT"
}

# Do addition of two numbers;
echo -n "Enter first number: "
read FIRST
echo -n "Enter second number: "
read SECOND

addition $FIRST $SECOND
