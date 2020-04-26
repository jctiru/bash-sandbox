#!/bin/bash

NUMBER=5

# let
# No $ and no space
let RESULT=NUMBER+5
echo "Result from let: $RESULT"

# (())
# No $ and with space
RESULT=$(( NUMBER + 5 ))
echo "Result from (()): $RESULT"

# []
# No $ and with space
RESULT=$[ NUMBER + 5 ]
echo "Result from []: $RESULT"

# expr
# Use $ and with space
# Can use `` instead of $()
RESULT=$(expr $NUMBER + 5)
echo "Result from expr: $RESULT"

# bc
# Use $ and with space
# Expression in double quotes
RESULT=`echo "$NUMBER * 1.9" | bc`
echo "Result from bc: $RESULT"
