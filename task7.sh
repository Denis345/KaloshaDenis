#!/bin/bash

original=$1;
compiled=$2;

gcc $original -o $compiled.exe

if [[ $? -eq 0 ]]
then
	./$compiled.exe
else
	echo "Check the type of your file"	
fi
