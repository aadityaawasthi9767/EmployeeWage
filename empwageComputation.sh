#! /bin/bash -x

declare -a SalaryRecord
declare -a EmployeeHoursArray

#CONSTANTS
MAX_WORKING_DAYS=20;
WAGE_PER_HOUR=20;
FULL_TIME=8;
HALF_TIME=4;
MAX_WORKING_HOURS=100;

#VARIABLES
totalWorkingHours=0;
totalNumberofDays=1;
sum=0;
counter=0;
counter2=0


while [[ $totalNumberofDays -le $MAX_WORKING_DAYS && $totalWorkingHours -le $MAX_WORKING_HOURS ]]
do
	((totalNumberofDays++))

	emp=$((RANDOM%3));
				case $emp in
								0)
									totalWorkingHours=$(( totalWorkingHours + FULL_TIME ))
						 			dailyWage=$(( WAGE_PER_HOUR * FULL_TIME ));
						 			SalaryRecord[ ((counter++)) ]=$dailyWage;
									EmployeeHoursArray[((counter2++))]=$totalWorkingHours;;

								1)
									totalWorkingHours=$(( totalWorkingHours + HALF_TIME ))
									dailyWage=$(( WAGE_PER_HOUR * HALF_TIME ));
									EmployeeHoursArray[((counter2++))]=$totalWorkingHours;
									SalaryRecord[((counter++))]=$dailyWage;;

								2)
									totalWorkingHours=$(( totalWorkingHours + 0 ))
						 			dailyWage=0;
									SalaryRecord[((counter++))]=$dailyWage;
									EmployeeHoursArray[((counter2++))]=$totalWorkingHours;;


								*)
									echo "Wrong Input!";
				esac
done
echo "Wages per Day: "${#SalaryRecord[@]};
for(( i=0 ; i<=${#SalaryRecord[@]} ; i++ ))
do
	sum=$(( sum + SalaryRecord[i] ))
done
	echo "Salary: "$sum;
	echo "Salary Records"${#SalaryRecord[@]}
