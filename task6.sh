#!/bin/bash

filename=$1
directory=$2
extension=$3


if [ ! -d $directory ]
then
	echo "Directory can't be read" 2 > file.err
else
	if [ ! -w $filename ]
	then
		echo "File can't be written" >&2
	else	
		cd $directory
		for file in *.$extension
		do
			echo $file >> $filename
		done;
	fi
fi
