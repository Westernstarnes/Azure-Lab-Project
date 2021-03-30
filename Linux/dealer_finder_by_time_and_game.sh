#!/bin/bash

filename=$1
time=$2
AMPM=$3
game=$4

#!format for input should be $ ./script filename 00:00 AM/PM Game  

echo -e "searching for dealer...\n"

cat $1 | sed 's/\s/ /g' | awk -F " " '$0 ~ /'$2'/ && $0 ~ /'$3'/ {print}' | awk '{
	if ("Texas" ~ /'$4'/) {print $1 ,$2 ,$7, $8 " [Texas Hold em]"}
	else if ("Roulette" ~ /'$4'/) {print $1 , $2 ,$5, $6 " [Roulette]"}
	else if ("Blackjack" ~ /'$4'/) {print $1 , $2 ,$3, $4 " [Blackjack]"}
	}'
echo ":::FINISHED:::"
