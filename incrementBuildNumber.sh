#!/bin/bash

if [[ ! -f buildNumber.txt ]]
then
	echo 1 > buildNumber.txt
	exit;
fi

# Read in a build number from a file, update it and write it back out.
BUILD_NUMBER=`cat buildNumber.txt`
((NEW_NUMBER=BUILDNUMBER + 2))
echo $NEW_NUMBER > buildNumber.txt
