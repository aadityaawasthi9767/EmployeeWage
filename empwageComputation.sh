#! /bin/bash 

#CONSTANTS
WAGE_PER_HOUR=20;
FULL_TIME=8;
HALF_TIME=4;
MAX_DAY=20;
counter=0;
sum=0;

declare -a SalaryRecorder


for(( i=1 ; i<=$MAX_DAY ; i++ ))
do
	emp=$((RANDOM%3));

			case $emp in
							0)
								dailyWage=$(( WAGE_PER_HOUR * FULL_TIME ));
								SalaryRecorder[ ((counter++)) ]=$dailyWage;;

							1)
								dailyWage=$(( WAGE_PER_HOUR * HALF_TIME ));
								SalaryRecorder[ ((counter++)) ]=$dailyWage;;

							2)
						 		dailyWage=0;
								SalaryRecorder[ ((counter++)) ]=$dailyWage;;

			esac
done
echo "Salary records: "${#SalaryRecorder[@]};

for(( i=0 ; i<=${#SalaryRecorder[@]} ; i++ ))
do
	sum=$((sum+SalaryRecorder[i]));
done
echo "Salary: " $sum;

