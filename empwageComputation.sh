#! /bin/bash -x

#CONSTANTS
WAGE_PER_HOUR=20;
FULL_TIME=8;
HALF_TIME=4;

emp=$((RANDOM%3));
	case $emp in
					0)
						 dailyWage=$(( WAGE_PER_HOUR * FULL_TIME ));
						 echo "PRESENT for FULL TIME";
   					 echo "Wage Today: "$dailyWage;;

					1)
						dailyWage=$(( WAGE_PER_HOUR * HALF_TIME ));
						echo "PRESENT for HALF TIME";
						echo "Wage Today: "$dailyWage;;

					2)
						 echo "ABSENT! Sorry NO WAGE.";;

					*)
						echo "Wrong Input!";
	esac
