#!/bin/bash

#Method 1

distro=("redhat" "debian" "gentoo")

len=${#distro[@]}
echo -e "The length of the array is $len" "\n"

for (( i=0; i<$len; i++ )); do 
	echo "${distro[$i]}"
done

echo -e "\n"

#Method 2

# declare an array called array and define 3 values
array=( one two three )

echo ${array[0]}
echo ${array[1]}
echo -e ${array[2]} "\n"
echo -e ${array[@]} "\n"
echo -e ${#array[@]} "\n"
for i in "${array[@]}"
do
	echo $i
done

echo -e "\n"

#Method 3

declare -a messages=(
    "Hello"
    "World"
)

echo -e "${messages[@]}" "\n"

#Method 4

array=( one two three )
for i in "${array[@]}"
do
	echo $i
done

echo -e "\n"

#Method 5

declare -a arr=("element1" "element2" "element3")

for i in "${arr[@]}"
do
	echo $i
done

echo -e "\n"

#Method 6

declare -a array=("one" "two" "three")

arraylength=${#array[@]}

for (( i=0; i<${arraylength}; i++ ));
do
  echo "number: $i, value: ${array[$i]}"
done
