#!/bin/bash

while :
do
	sleep 2
	echo -e "Welcome to the Branch Section" "\n\n"
	echo "Select any one of the following options:"
        echo "1.List the Branches"
	echo "2.Create a Branch"
	echo "3.Switch to a Branch"
	echo "4.Show Current Branch"
 	echo "5.Merge Branches"
        echo -e "6.Exit" "\n\n"
                
	read -p "Select any one option: " branch
	echo
       
	case $branch in        
			1|List|*ist)
                                echo "List of Branches currently available:"
                                branch_list=`git branch` 
                                echo -e "$branch_list" "\n\n"
        			;;
        
			2|Create)
                                echo "Creating a New Branch"
                                read -p "Enter the new Branch Name: " Branch_name
                                echo $(git branch $Branch_name)
                                echo -e "Branch named $Branch_name is Created Successfully" "\n\n"
                                ;;
                        
			3|'Switch Branch')
                                echo "Switch to a Branch"
                                read -p "Enter the branch name to switch: " Branch_name
                                echo $(git checkout $Branch_name)
                                echo -e "Successfully switched to Branch $Branch_name" "\n\n"
                                ;;

			4|'Show Current')
				show=$(git branch --show-current)
				echo -e "The Current Branch is: $show" "\n\n"
				;;
                        
			5|'Merge Branches')
                                echo "Merging of Branches"
                                read -p "Enter the name of the branch to be merged: " Branch_name
                                echo $(git merge $Branch_name)
                                echo -e "Successfully merged Branch name $Branch_name" "\n\n"
                                ;;
                        
			6|Exit)
                                echo -e "Exited from the Branch Section" "\n\n"
                                break
                                ;;
                        
			*)
                        	echo -e "INVALID OPTION. Please enter the correct number" "\n\n"
	
	esac
done

