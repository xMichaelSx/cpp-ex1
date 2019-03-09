#!/bin/bash

find_dir=$1
program=$2
args=${@:3}

if [ -z "$*" ]; #TODO Change if to check at least 2 params
then
	echo "No arguments sent!"
	exit;
else 
	makefile_dir=$(dirname "$(find "$find_dir" -type f -name "Makefile" -exec realpath {} \;)");
       echo "makefiledir : "  $makefile_dir

	#TODO Check if the file was found
	cd "$makefile_dir" # TODO Check if can cd to $makefile_dir
	make
	if [ $? -gt 0 ];
	then
		echo "Compilation Failed"
		fi
	fi
