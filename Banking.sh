#!/bin/bash

while :
do
echo "Select any one of the following options"
echo "1.Withdraw"
echo "2.Check Balance"
read option

if [ $option -eq 1 ]
then

echo
Balance="1000"
echo -e "Balance \$$Balance" "\n"
echo -e "Enter the Amount You want to Withdraw." "\n"
read a
echo

if [ $a -gt 1000 ]
then

echo -e "INSUFFICIENT BALANCE!" "\n\n"
continue

else

if [ $a -gt 950 ]
then

echo -e "WARNING! Keep "\$50" in your account to keep it ACTIVE!" "\n\n"
continue

elif [ $a -gt 50 -a $a -lt 950 ]
then

echo -e "AMOUNT of "\$$a" is WITHDRAWN" "\n"
Available=`expr $Balance - $a`
echo -e "AVAILABLE BALANCE "\$$Available"" "\n\n"
break
   	
fi

fi

elif [ $option -eq 2 ]
then
   echo "Current Balance: 1000 "
   break
else
   echo "Invalid Option"
fi

done
