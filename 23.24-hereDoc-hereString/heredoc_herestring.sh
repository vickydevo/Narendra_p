#!/usr/bin/env bash
cat << DELIMITER
THE PRINTING JERE DOCKMETER : $USER
AND HERE STRING : $WHOAMI
IN THE MULTILINE
DELIMITER


# SEARCH FOR STRING
cat << VIGHAH  | grep PRINTING
THE PRINTING JERE DOCKMETER : $USER
AND HERE STRING : $WHOAMI
IN THE MULTILINE
VIGHAH

# HERE STRING

echo "hello world without here string" | tr [a-z] [A-Z]
   HELLO WORLD WITHOUT HERE STRING
 #WITH 
 tr [a-z] [A-Z] <<< "hello world without here string"  
    HELLO WORLD WITHOUT HERE STRING
# WITH VAR
 NAME="BASH SHELL SCRIPT"
 echo "$name" | tr  [A-Z] [a-z]

 tr  [A-Z] [a-z] <<< $name

 tr [a-z] [A-Z] <<<$(docker -v)
