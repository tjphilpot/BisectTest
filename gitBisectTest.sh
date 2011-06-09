#!/bin/bash

failBadBuild() {
	echo "Couldn't run incrementBuildNumber.sh";
	exit 125;
}

rm buildNumber.txt

sh ./incrementBuildNumber.sh || failBadBuild
sh ./incrementBuildNumber.sh || failBadBuild

NUM_LINES=`wc -l buildNumber.txt | awk '{ print $1}'`

if [[ $NUM_LINES -gt 1 ]]
then
	echo "Got $NUM_LINES lines. Bad run.";
	exit 1;
else
	echo "Got 1 line. Good run.";
	exit 0;
fi