#!/bin/bash

#METHOD 1
a=0
while [ "$a" -lt 10 ]    # loop1
do
   echo -n "$a "
   a=`expr $a + 1`
done

echo -e "\n\n"

#METHOD 2
a=0
while [ "$a" -lt 10 ]    # loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done
