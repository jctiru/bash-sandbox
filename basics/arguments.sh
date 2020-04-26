#!/bin/bash

# To see IFS - set | grep ^IFS
# Result usually IFS=$' \t\n'
IFS=","
echo "Script name: $0"
echo "First arg: $1"
echo "Second arg: $2"
echo "All args with \$@: $@"
echo "All args with \$*: $*" # Single string with first char of IFS
echo "Args count: $#"
