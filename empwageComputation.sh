#! /bin/bash -x
emp=$((RANDOM%2));
if [[ $emp -eq 0 ]]
then
	echo "Present";
else
	echo "Absent";
fi
