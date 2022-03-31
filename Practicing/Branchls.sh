#!/bin/bash

#echo "List of Branches currently available:"

#list1=`git branch`

#echo "$list1"



current=$(git branch --show-current)
echo "The Current Branch is: $current"
