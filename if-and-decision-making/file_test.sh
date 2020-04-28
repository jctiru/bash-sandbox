#!/bin/bash

# For provided file, print permission summary
# Ex: ./filetest.sh hello.txt
# READ: YES
# WRITE: NO
# EXECUTE: NO

if [ $# -ne 1 ]; then
  echo "Provide exactly one argument"
  exit 1
fi

if [ -f $1 ]; then
  # Default variables
  VAR_READ="NO"
  VAR_WRITE="NO"
  VAR_EXE="NO"

  if [ -r $1 ]; then
    VAR_READ="YES"
  fi

  if [ -w $1 ]; then
    VAR_WRITE="YES"
  fi

  if [ -x $1 ]; then
    VAR_EXE="YES"
  fi

  echo "===FILE: $1==="
  echo "READ: $VAR_READ"
  echo "WRITE: $VAR_WRITE"
  echo "EXECUTABLE: $VAR_EXE"
else
  if [ -d $1 ]; then
    echo "$1 is a directory"
  else
    echo "$1 file does not exists"
  fi
fi
