#!/bin/bash

BUILD_NUMBER_FILE=${1:-buildNumber.txt}

function createFile() {
	if [[ ! -f $BUILD_NUMBER_FILE ]]
	then
		echo 1 > $BUILD_NUMBER_FILE
		echo "Created initial $BUILD_NUMBER_FILE file."
		exit;
	fi
}

createFile;

# Read in a build number from a file, update it and write it back out.
BUILD_NUMBER=`cat $BUILD_NUMBER_FILE`
((NEW_NUMBER=BUILD_NUMBER + 1))
echo $NEW_NUMBER > $BUILD_NUMBER_FILE
