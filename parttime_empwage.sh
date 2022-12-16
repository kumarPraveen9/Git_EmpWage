Employee=$((RANDOM%3))
echo $Employee
WagePerHour=20
FullDayHour=8
if [ $Employee -eq 0 ]
then 
	echo " Employee is present"
	DailyWage=$(($WagePerHour * $FullDayHour))
	echo "daily wage is : " $DailyWage
elif [ $Employee -eq 1 ]
then
   echo " Employee is PartTime"
   WorkingHourOfPartTime=$(($FullDayHour / 2))
   echo "workin hour part time is : "$WorkingHourOfPartTime
   WageOfPartTime=$(($WorkingHourOfPartTime * $WagePerHour))
   echo "WageOfPartTime is :"  $WageOfPartTime
else
	echo "Employee is Absent"
fi
