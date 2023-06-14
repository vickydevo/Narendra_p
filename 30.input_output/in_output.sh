#!/usr/bin/bash
read  -p "Enter read input string:" my_name
read -p "enter default read value:"
read -p "enter default second read value:"
#my_name="vignan"
my_name_up=${my_name^^}

echo "echo is OUTPUT CMD $REPLY"
echo "default variable reply: $REPLY"
echo "your name in upper case is : $my_name_up"