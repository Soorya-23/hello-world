#!/bin/bash

#Method1
echo -e "Let's see method 1" "\n"

foo="Hello"
foo="${foo} World"
echo -e "${foo}" "\n"

foo="Hello"
foo="$foo World"
echo -e "$foo" "\n"


A="Hello"
B="World"
c="$A and $B"
echo -e $c "\n"

nameofthestring="StringItself"
echo -e $nameofthestring "\n"

{ echo "The quick"; echo "brown fox"; } | tr "\n" " " 

echo -e "\n"

List="A B C D"
for I in $List
do
	OUT=${OUT:+$OUT}-$I
done

echo -e $OUT "\n\n"

#METHOD 2
echo -e "Let's see method 2" "\n"

VAR1="Hello,"
VAR2=" World"
VAR3="$VAR1$VAR2"
echo -e "$VAR3" "\n"

VAR1="Hello, "
VAR2="${VAR1}World"
echo -e "$VAR2" "\n"

VAR1="Hello, "
VAR2=2
VAR3=" Worlds"
VAR4="$VAR1$VAR2$VAR3"
echo -e "$VAR4" "\n"

VAR1="Hello, "
VAR1+=" World"
echo -e "$VAR1" "\n"

VAR=""
for ELEMENT in 'Hydrogen' 'Helium' 'Lithium' 'Beryllium'; do
  VAR+="${ELEMENT} "
done

echo -e "$VAR" "\n\n"

#METHOD 3
echo -e "Let's see method 3" "\n"
read -p "Enter First Name: " name  
read -p "Enter State: " state  
read -p "Enter Age: " age  
echo  

combine="$name,$state,$age"  
  
echo -e "Name, State, Age: $combine"  "\n\n"
