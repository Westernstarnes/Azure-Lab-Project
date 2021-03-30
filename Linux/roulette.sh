#!/bin/bash

filename= $1 $2 $3

cat $1 $2 $3 | sed 's/\s/ /g' | cut -d " " -f1,2,5,6

echo Finished
