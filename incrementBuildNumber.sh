#!/bin/bash

function createFile() {
	if [[ ! -f buildNumber.txt ]]
	then
		echo 1 > buildNumber.txt
		echo "Created initial buildNumber.txt file."
		exit;
	fi
}

createFile;

# Read in a build number from a file, update it and write it back out.
BUILD_NUMBER=`cat buildNumber.txt`
((NEW_NUMBER=BUILDNUMBER + 1))
echo $NEW_NUMBER > buildNumber.txt
