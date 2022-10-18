#! /bin/bash/ -x


## 1.
echo "------ (a)  Employeee Name and Total Pay greater than 10,000-------"
showAllData=`cat data.csv`
echo "$showAllData"

echo "------ (b)  Employeee Name and Total Pay greater than 10,000-------"
EmpNameAndTotalPay=`cat data.csv | awk -v var="10000" '{$4>var}{print $2 "      " $7}'`
echo "$EmpNameAndTotalPay"


## 2.
echo "------Aggregate Total Pay of employees whose jobtitle is 'CAPTAIN'-------"
totalPayOfCaptain=`cat data.csv | grep -i captain | awk '{sum+=$7} END{print sum/NR}'`
echo "Aggregate total Pay of Captain :- $totalPayOfCaptain"


## 3.
echo "------JobTitle and Overtimepay is between 7000 and 10000-----"
jobTitleAndOvertimePay=`cat data.csv | awk '{print $3 " " $5}' | head -7 | tail -2`
echo "JobTitle and OverTimePay :- $jobTitleAndOvertimePay"


## 4.
echo "------Print average BasePay------"
averageBasePay=`cat data.csv | awk '{sum+=$4} END{print sum/NR}'`
echo "Average BasePay is :- $averageBasePay"
