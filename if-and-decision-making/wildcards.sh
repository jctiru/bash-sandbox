#!/bin/bash

echo "Show all ending in .sh"
ls -l *.sh

echo "Show all starting with if and file extension in either txt or sh"
ls -l if*.{txt,sh}

###########

# Create destination folder
DATE=$(date +%Y-%m-%d_%H_%M_%S)
PROD_FOLDER=$(dirname $0)/prod
DEST_FOLDER=$(dirname $0)/backup/$DATE
mkdir -p $DEST_FOLDER

# Copy from prod to dest
echo "Starting backup"
cp $PROD_FOLDER/*.pdf $DEST_FOLDER

# Test exit status of copy command
if [ $? -eq 0 ]; then
  echo "Backup ok"
else
  echo "Backup failed"
fi
