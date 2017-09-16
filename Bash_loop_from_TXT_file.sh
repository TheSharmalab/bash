#!/bin/bash
filename='ntag.txt'
filelines=`cat $filename` #Get each line
echo Start
for line in $filelines ; do
    echo $line
done