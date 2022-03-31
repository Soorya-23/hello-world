#!/bin/bash

#METHOD 1
echo -e "METHOD 1" "\n"
echo "Enter an Even Number :"
read n

i=$(expr $n % 2)

if [ $i -ne 0 ]
then
   echo "Its not Even!"
fi

echo -e "\n"

#METHOD 2
echo -e "METHOD 2" "\n"
echo "Enter a Natural Number :"
read n

i=$(expr $n % 2)

if [ $i -eq 0 ]
then

	echo "Its Even!"
	
else

	echo "Its Odd!"

fi

echo -e "\n"

#METHOD 3
echo -e "METHOD 3" "\n"
echo "Enter any Number :"
read n

if [ $n -lt 0 ]
then

	echo "Its Negative!"

elif [ $n -eq 0 ]
then

	echo "Its Neither Positive Nor Negative!!"

else

	echo "Its Positive!"

fi

echo -e "\n"
