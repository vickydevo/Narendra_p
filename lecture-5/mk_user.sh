# creating user with passwd


useradd automation
   passwd automation  : automation
   Check UserHome: ls -lrt /home/automation
   if user home is not created then run below two commands:
	 mkdir -p /home/automation
         chown -R automation:automation /home/automation
How to change a shell for the user ?

echo $SHELL
  /bin/sh

cat /etc/shells
# /etc/shells: valid login shells
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/usr/bin/sh
/bin/dash
/usr/bin/dash
/usr/bin/tmux
/usr/bin/screen

simply run below command and provide the password and path of the required shell.
Command is: chsh
# permanently fix shell as bash
chsh
Password: 
Changing the login shell for automation
Enter the new value, or press ENTER for the default
        Login Shell [/bin/sh]: /bin/bash

Steps to create and execute a shell script:
============================================
Step1: Get Manual Commands for the requirement
Step2: Select any command line editor like vi, vim and nano to write a script.
Step3:  Write a Bash shell script
	- Now open a text file with anyName and with any extension but will take .sh just to represent that text file is a shell script.
        - Write first line as a shebang line.
        - Paste all required commands in a sequence
Step4: Executing Bash Shell Script
        - Provide the Execution Permission using 
          chmod +x script_name.sh
          chmod u+x script_name.sh # execution permission for user
        - Run with 
        ./script_name.sh  or <complete_path>/script_name.sh
==========================================================================
