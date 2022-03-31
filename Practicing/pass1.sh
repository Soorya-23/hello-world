#!/bin/bash

function cal()
{
n1=$1
op=$2
n2=$3
ans=0
echo "The Entered Values for n1 op and n2 are : $*"
if [ $# -eq 3 ]; then
  ans=$(( $n1 $op $n2 ))
  echo -e "$n1 $op $n2 = $ans" "\n\n"
  return $ans
else
  echo "Function cal requires atleast three args"
fi
 return
}

cal 5 + 10	#Addition
cal 10 - 2	#Subtraction
cal 10 \* 2	#Multiplication
cal 10 / 2	#Division
echo $?		#Used to retrieve and print the value returned by cal()
