#! /bin/bash -x

#CONSTANTS
WAGE_PER_HOUR=20;
FULL_TIME=8;
HALF_TIME=4;

emp=$((RANDOM%3));
if [[ $emp -eq 0 ]]
then
	dailyWage=$(( WAGE_PER_HOUR * FULL_TIME ));
	echo "PRESENT for FULL TIME";
	echo "Wage Today: "$dailyWage;

elif [[ $emp -eq 1 ]]
then
	dailyWage=$(( WAGE_PER_HOUR * HALF_TIME ));
	echo "PRESENT for HALF TIME";
	echo "Wage Today: "$dailyWage;
else
	echo "ABSENT! Sorry NO WAGE.";
fi
