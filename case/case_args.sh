#!/bin/bash

# Script with params
# -f or --file will provide info about number of lines, words and chars
# -h or --help will provide usage message

while [ $# -gt 0 ]; do
  case "$1" in
  "-h" | "--help")
    echo "USAGE: $0 [-h] [--help] [-f file] [--file file]"
    shift # Throw away param
    exit 1
    ;;
  "-f" | "--file")
    if ! [ -f "$2" ]; then
      echo "File does not exists"
      exit 2
    fi

    LINES=$(cat "$2" | wc -l)
    WORDS=$(cat "$2" | wc -w)
    CHARS=$(cat "$2" | wc -m)

    echo "===FILE: $2==="
    echo "Lines: $LINES"
    echo "Words: $WORDS"
    echo "Characters: $CHARS"

    shift # Throw away param
    shift # Throw away param
    ;;
  *)
    echo "USAGE: $0 [-h] [--help] [-f file] [--file file]"
    exit 1
    ;;
  esac
done
