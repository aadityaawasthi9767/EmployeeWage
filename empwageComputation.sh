#!/bin/bash -x

declare -a arrDailyWage;

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HRS=20
MAX_HRS_IN_MONTH=4
NUM_WORKING_DAYS=20

totalEmpHrs=0
totalWorkingDays=0
counter=0;
sum=0;


function getWorkHrs()
{
         case $empCheck in
        $IS_FULL_TIME)empHrs=8;;
        $IS_PARK_TIME)empHrs=4;;
        *)empHrs=0;;
        esac
        echo $empHrs
 }

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        empHrs="$( getWorkHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs));
        DailyWage=$(( $totalEmpHrs * $EMP_RATE_PER_HRS ));
        arrDailyWage[ ((counter++)) ]=$DailyWage;
done
echo "DailyWages: "${arrDailyWage[@]};
echo "Lenght" ${#arrDailyWage[@]};

for(( i=0 ; i<=${#arrDailyWage[@]} ; i++ ))
do
	sum=$((sum+arrDailyWage[i]));
done
echo "Salary: "$sum;
