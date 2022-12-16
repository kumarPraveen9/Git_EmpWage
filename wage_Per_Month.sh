Employee=$((RANDOM%3))
echo $Employee
WagePerHour=20
FullDayHour=8
DaysInMonth=30
if [ $Employee -eq 0 ]
then
	echo " Employee is present"
	DailyWage=$(($WagePerHour * $FullDayHour))
	monthWage=$(($DailyWage * $DaysInMonth))
	echo "full time employee wage per month is : " $monthWage
fi

if [ $Employee -eq 1 ]
then
   echo " Employee is PartTime"
   WorkingHourOfPartTime=$(($FullDayHour / 2))
   echo "working hours of partime employee : " $WorkingHourOfPartTime
   WageOfPartTime=$(($WorkingHourOfPartTime * $WagePerHour))
   monthWageOfPartTime=$(($WageOfPartTime * $DaysInMonth))
   echo "monthly wage per part time employee is : " $monthWageOfPartTime
fi

if [ $Employee -eq 2 ]
then
	echo "Employee is Absent"
fi
