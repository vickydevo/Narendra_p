#!/bin/bash
v="variables"
echo "welcome to $v clas"
echo "$v are reusable strings"
echo "we have to work with $v"
docker_status=$(systemctl status docker | awk '/Active/ {print $3 }' | tr -d "[()]")
docker_version=$(docker -v |awk '/version/ {print $3}'|tr -d ",")
echo "the docker status : $docker_status"
echo "the docker version : $docker_version" 
#simple shell script to practice with variables
# print docker status and version
# systemctl status docker | awk '/Active/ {print $3 }' 
# #(running)
# systemctl status docker | awk '/Active/ {print $3 }'| tr -d "(" | tr -d ")" 
#  # running
# systemctl status docker | awk '/Active/ {print $3 }' | tr -d "[()]"
# # running

# docker -v | cut -d " " -f "3" | tr -d ","
# docker -v |awk '/version/ {print $3}'|tr -d ","
