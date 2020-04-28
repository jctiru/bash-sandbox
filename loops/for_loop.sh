#!/bin/bash

# In all .txt files in current directory, add a new line with current date and first 5 lines of ps command
for FILE in *.txt
do
  echo $(date) >> $FILE
  ps -ef | head -5 >> $FILE
  echo "=================" >> $FILE
done
