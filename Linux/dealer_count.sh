#!/bin/bash

filename=$1
dealer=$2
cat $1 | awk -F " " '{print $3 $4}' | grep -i $2 | wc -l 
echo "::Total Dealer Shifts::" 

