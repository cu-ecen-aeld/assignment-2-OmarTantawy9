#!/bin/bash
writefile=$1
writedir="$(dirname $writefile)"
writestr=$2

if [ $# -ne 2 ]; then
	echo "Number of args should be 2"
	exit 1
fi

if [ ! -d $writedir ]; then
	mkdir -p $writedir
fi

echo $writestr > $writefile

if [ $? -ne 0 ]; then
	echo "File could not be created"
	exit 1
fi


