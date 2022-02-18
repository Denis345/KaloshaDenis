#!/bin/bash

original=$1;
compiled=$2;


gcc $original -o $compiled.exe && ./$compiled.exe
