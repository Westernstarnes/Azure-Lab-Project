#!/bin/bash

filename_with_date=$1
Time=$2
AMPM=$3

echo "Searching..."
echo -e "Found Dealer!\n"

cat $1 | sed 's/\s/ /g' | cut -d " " -f1,2,5,6 | awk -F " " '$0 ~ /'$2'/ && $0 ~ /'$3'/  {print}'
echo  "Was working at $2 $3"
