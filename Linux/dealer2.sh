#!/bin/bash

filename=$1
time=$2
ampm=$3
time2=$4
ampm2=$5
time3=$6
ampm3=$7

cat $1 | sed 's/\s/ /g' | cut -d " " -f1,2,5,6 | awk -F " " '$0 ~ /'$2'/ && $0 ~ /'$3'/ || $0 ~ /'$4'/ && $0 ~ /'$5'/ || $0 ~ /'$6'/ && $0 ~ /'$7'/ && $0 ~ /'$8'/ {print}' 

echo ":::FINISHED:::"
echo "[---$1---]" 


