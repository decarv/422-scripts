#!/bin/sh

input="/dev/c0d1"
output=$(date +"%Y%m%d%H%M%S")
tmp="$output.txt"

mkdir $output

isodir -l $input > $tmp

while read line; 
do 
	f=$(echo $line | awk '{print $NF}')
	if [ $f = "." ] || [ $f = ".." ] || [ $f = "_iso." ]
	then
		continue
	else
		isoread $input $f > "$output/$f"
	fi
done < $tmp

rm $tmp
