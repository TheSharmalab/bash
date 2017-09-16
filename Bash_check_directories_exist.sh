#!/bin/bash
ROOT="~/Scratch/shared/struc_354"


cd $ROOT

# Set counter to zero
counter=0


filename='~/Scratch/shared/bashscripts/ntag.txt'  # Load NTAGS
filelines=`cat $filename` #Get each line


for REM in $filelines ; do
	echo ""
	echo "Checking subject number: " $REM
	# Checks subject exists
	if ls $ROOT/$REM*/ 1> /dev/null 2>&1; then
		 echo "OK: Subject exists"
		 else
		 echo "ERROR: This SUBJECT does NOT exist"
		 counter=$((counter+1))
		 list+=($REM) # Adds the subject to a list that will be displayed at the end
		 continue
	fi
done
	
# Displays the list of directories that doesnt exist	
echo ""
echo "SUMMARY:"
echo ""
echo "There are " $counter "subjects missing"
echo ""
echo "These are:"

for item in ${list[*]}
	do
		printf "   %s\n" $item
done