#!/bin/bash
echo "this is current user: $(whoami)"
# advance usage of echo cmd
echo "this the first line"
echo "this the second line"
# printing above 2 line with single echo cmd
echo -e "  ----with -e option----- \nthe first line\nthe second line"

# \t option give tab
echo "ok\tfine"
echo -e "\033[0;31mok\tfine\ttab is given\033[0m"
# \v vertical tab
echo -e "okfine\vtab is given"
# \b one postion back
echo -e "\033[0;33mokfine\btab is given\033[0m"
# \r ur cursor will come to first position
echo -e "okfine\rtab is given"
# \ ESC
echo  "\033[0;32mthis is \"night\" boring"
echo -e "\033[0;32mokfine\\\rtab is given\033[0m"

#-n 
echo -n "this is line"
echo "ja;ldjfddfkj"
