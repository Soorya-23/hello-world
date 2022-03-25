#!/bin/sh

#METHOD 1
echo "METHOD 1"
for var1 in 1 2 3 4 5 
do
   for var2 in 0 5
   do
      if [ $var1 -eq 3 -a $var2 -eq 0 ]
      then
         break 2
      else
         echo "$var1 $var2"
      fi
   done
done

echo -e "\n"


#METHOD 2
echo "METHOD 2"
NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
   Q=`expr $NUM % 2`
   if [ $Q -eq 0 ]
   then
      echo -e "Number "$NUM" is an even number!!" "\n"
      continue
   fi
   echo -e "Number "$NUM" is an odd number!!" "\n"
done
