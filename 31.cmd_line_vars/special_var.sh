#!/usr/bin/env bash

echo "$1"
echo "$2"
echo "$3"\
echo "----------------------------"
echo "ALL COMMAND LINE ARGUMENT : $@"
echo "----------------------------"
echo "ALL COMMAND LINE ARGUMENT : $*"
echo "----------------------------"
echo "HOW MANY CMD LINE ARGUMENT ARE PASSED: $#"
echo "$10" #it will not work
echo "${11}" # for two digit argument  this is syntax