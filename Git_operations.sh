#!/bin/bash

while :
do
	sleep 2
	echo
	echo -e "WELCOME TO GIT" "\n"
	echo -e "Select any one of the following options:" "\n"
	echo "1.Configurations"
	echo "2.Status"
	echo "3.Branch"
	echo "4.Add and Commit"
	echo "5.Git Log"
	echo "6.Push"
	echo "7.Pull"
	echo -e "8.Exit" "\n\n"

	read -p "Selected Option: " option
	echo

	

	if [ $option == 1 ]
	then	
		while :
		do
			sleep 2
			echo
			echo -e "Welcome to Configurations Section" "\n\n"
			echo "Select any one of the following options:"
			echo "1.Check Configuration Status"
			echo -e "2.Modify Configurations" "\n"
	
			read -p "Selected Option: " C1

			case $C1 in

			1)
				echo "List of Configuration Status"
				file1=$(git config --list)
				for i in $file1;
				do
					details=$(echo $i)
					echo $details
				done
				;;
		 
			2)
				echo "Modify Configurations"
				echo "1.Add User Name"
				echo "2.Add User Email"
				echo -e "3.Exit" "\n"

				echo "Select an Option: " 
				read Add


				while :
				do

					if [ $Add -eq 1 ]
					then
						read -p "Enter the User Name you want to add: " name
						$(git config --global user.name $name)
						echo "New User Name $name is Added Successfully"
					elif [ $Add -eq 2 ]
					then
						read -p "Enter the User Email you want to add: " email
						$(git config --global user.email $email)
						echo "New User Email "$email" is Added Successfully"
					elif [ $Add -eq 3 ]
					then
						echo "Exited from Modify Configuration Section"
						break
					else
						echo "Invalid Option. Select option 1 or 2"
					fi

				done
				;;

			*)	
				echo "Invalid Option. Please select number 1 or 2"
				;;

			esac

		done

	

	elif [ $option == 2 ]
	then
		echo -e "Welcome to the Status Section" "\n\n"
		declare -a state=$(git status)
		for i in "${state[@]}"
		do
			echo $i
		done
	


	elif [ $option == 3 ]
        then
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

	

	elif [ $option == 4 ]
        then
                echo -e "Welcome to the Git Add and Commit Section" "\n\n"
		read -p "Enter the commit message: " Message
		$(git add .)
		$(git commit -m "$Message")
		echo "The message "$Message" is Committed Successfully"



	elif [ $option == 5 ]
        then
		while :
		do

                	sleep 2
			echo -e "Welcome to the Git Log Section" "\n\n"
		
			echo "Select any one of the following:"				
			echo "1.Git Log in Full List"
			echo "2.Git Log in One Line"
			echo -e "3.Exit" "\n"
			
			read -p "Enter the number: " number
			echo
	
			case $number in
			1)
				echo "Git Log in Full List is Displayed"
				logg=`git log`
				echo $logg
				;;

			2)
				echo "Git Log represented in single line"
				one=`git log --oneline`
				echo $one
				;;

			3)
				echo "Exited from the Git Log Section"
				break
				;;

			*)
				echo "Invalid Option. Please enter the correct number"
				
			esac		

		done

	elif [ $option == 6 ]
        then

                echo -e "Welcome to the Push Section" "\n\n"
		read -p "Emter the branch name: " branch_name
		$(git push -u origin $branch_name)
		echo "Successfully pushed from the Local repo to GitHub repo"



	elif [ $option == 7 ]
	then
		echo -e "Welcome to the Pull Section" "\n\n"
		read -p "Enter the branch name: " branch_name
		$(git pull origin $branch_name --allow)
		 echo "Successfully pulled from the GitHub repo to our Local repo"


	 
	elif [ $option == 8 ]
	then

		echo "Exited from the GIT OPERATION page"
		break

	else

		echo "Invalid Option. Please enter correct option between 1 and 8"

	fi

done

