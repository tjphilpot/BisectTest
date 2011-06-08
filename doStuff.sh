#!/bin/bash

set -x

incrementFile() {
	MY_NUMBER=`tail -n 1 theFile.txt`
	((THE_NUM=MY_NUMBER + 2))
	echo $THE_NUM >> theFile.txt
}


# Create the file if it doesn't exist
createFile() {
if [[ ! -f theFile.txt ]]
then
	echo 0 > theFile.txt;
fi
}

createFile
incrementFile
