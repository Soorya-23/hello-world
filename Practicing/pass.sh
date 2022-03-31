#!/bin/bash

function demo1()
{
echo -e "All Arguments to function demo1 : $*" "\n"
echo "First argument : $1"
echo "Second argument : $2"
echo -e "Third argument : $3" "\n\n"
return
}
#
# Call the function
#
demo1 -f foo bar

function demo2()
{
echo -e "All Arguments to function demo2 : $*" "\n"
echo "First argument : $1"
echo "Second argument : $2"
echo -e "Third argument : $3" "\n\n"
return
}
#
# Call the function
#
demo2 1st argument 2nd argument 3rd argument

function demo3()
{
echo -e "All Arguments to function demo3 : $*" "\n"
echo "First argument : $1"
echo "Second argument : $2"
echo -e "Third argument : $3" "\n\n"
return
}
#
# Call the function
#
demo3 "1st argument" "2nd argument" "3rd argument"
