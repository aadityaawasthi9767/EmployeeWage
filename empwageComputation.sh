#! /bin/bash 

declare -a SalaryRecord

#CONSTANTS
MAX_WORKING_DAYS=20;
WAGE_PER_HOUR=20;
FULL_TIME=8;
HALF_TIME=4;
sum=0;
counter=0;

for(( i=0 ; i<=$MAX_WORKING_DAYS ; i++ ))
do
	emp=$((RANDOM%3));
				case $emp in
								0)
						 			dailyWage=$(( WAGE_PER_HOUR * FULL_TIME ));
						 			SalaryRecord[((counter++))]=$dailyWage;;

								1)
									dailyWage=$(( WAGE_PER_HOUR * HALF_TIME ));
									SalaryRecord[((counter++))]=$dailyWage;;

								2)
						 			dailyWage=0;
									SalaryRecord[((counter++))]=$dailyWage;;

								*)
									echo "Wrong Input!";
				esac
done
echo "Wages per Day: "${SalaryRecord[@]};
for(( i=0 ; i<=${#SalaryRecord[@]} ; i++ ))
do
	sum=$((sum+SalaryRecord[i]))
done
	echo "Salary: "$sum;
