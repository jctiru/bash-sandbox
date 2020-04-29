#!/bin/bash

# Read data from users and add option to recheck if data is correct

echo -n "Enter your name: "
read NAME
echo -n "Enter your age: "
read AGE
echo -n "Enter your department: "
read DEP

echo "You have entered following: "
echo "Name: $NAME"
echo "AGE: $AGE"
echo "Department $DEP"

CHECK=0
while [ $CHECK -eq 0 ]; do

  echo -n "Is that correct? [Y/n] "
  read ANS

  case "$ANS" in
  "Y" | "y")
    echo "Name: $NAME" >>empl.txt
    echo "AGE: $AGE" >>empl.txt
    echo "Department $DEP" >>empl.txt
    echo "Your data were saved into employee file"
    CHECK=1
    ;;
  "N" | "n")
    echo "Nothing was saved, run the script again if you want to add data to employee file"
    CHECK=1
    ;;
  *)
    echo "Wrong answer provided"
    ;;
  esac
done
