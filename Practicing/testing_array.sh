#!/bin/bash

echo "List of Configuration Status"
file1=$(git config --list)

for i in $file1;
do

	details=$(echo $i)
	declare -a myArray
	myArray=$details
done
	function f1
	{
		for i in "${myArray[@]}"
		do
			echo $i
		done
	}

	f1

