#!/bin/bash

echo "Welcome to the Status Section"

variable=" "
state=$(git status)

for i in $state;
do
	echo $i
done > $variable
