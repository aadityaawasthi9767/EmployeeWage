#! /bin/bash -x

#CONSTANTS
WAGE_PER_HOUR=20;
FULL_DAY=6;


emp=$((RANDOM%2));
if [[ $emp -eq 0 ]]
then
	dailyWage=$(( WAGE_PER_HOUR * FULL_DAY ))
	echo "Present";
	echo "Wage Today: "$dailyWage;
else
	echo "Absent";
fi
