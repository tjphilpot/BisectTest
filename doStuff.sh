#!/bin/bash

incrementFile()
{
	MY_NUMBER=`cat theFile.txt`
	((THE_NUM=MY_NUMBER + 2))
	echo $THE_NUM > theFile.txt
}

#commitFile()
# {
#	git add theFile.txt
#	git commit -m "Updating the file."
#}

# Create the file if it doesn't exist
if [[ ! -f theFile.txt ]]
then
	echo 0 > theFile.txt;
fi

incrementFile

#commitFile