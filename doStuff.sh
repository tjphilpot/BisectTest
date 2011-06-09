#!/bin/bash

# Use the first parameter passed the script, otherwise, use theFile.txt as the filename.
MY_FILE=${1:-theFile.txt}

incrementFile() {
	MY_NUMBER=`tail -n 1 $MY_FILE`
	((THE_NUM=MY_NUMBER + 2))
	echo $THE_NUM >> $MY_FILE
}

# Create the file if it doesn't exist
createFile() {
if [[ ! -f $MY_FILE ]]
then
	echo 0 > $MY_FILE;
fi
}

createFile
incrementFile
