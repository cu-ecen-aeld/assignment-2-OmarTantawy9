#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]; then
	echo "Number of args should be 2"
	exit 1

fi

if [ ! -d "$filesdir" ]; then
	echo "Directory $filesdir doesn't exist"
	exit 1
fi

echo "The number of files are $(ls -1 $filesdir | wc -l) and the number of matching lines are $(grep $searchstr $filesdir/* | wc -l)" 


