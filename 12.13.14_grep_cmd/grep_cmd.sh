#search for a string using GREP cmd
  grep "above" test.txt # alway take quatations for strings
# search for multiple files
grep "line is " one.sh test.txt
grep "line is " *

#syntax grep 
  grep [optins] "string/pattern" files/files

  options
    # ignor -i ---> ignor case sensitivity
        grep -i "Above" test.txt
    # exact word -w
      grep -w "line" test.txt # i want word line not lines 

  #use grep on text
  echo " this a simple info" | grep "simple"
