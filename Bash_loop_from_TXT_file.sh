#!/bin/bash
filename='ntag.txt'
filelines=`cat $filename`
echo Start
for line in $filelines ; do
    echo $line
done