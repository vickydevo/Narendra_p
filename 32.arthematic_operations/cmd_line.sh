#!/usr/bin/env bash
x=10
y=3
parathesis for integers only not for decimal or float
((sum=x+))
((sub=x-y))
((mul=x*Y))
((div=x/y))
((rem=x%y))
echo " sum is $sum"
echo " sub is $sub"
echo " rem is $rem"
echo " divide is $div"

# bash caluclator for float or decimals values use: bc
yum install bc -y
x=7.3
y=2.6
bc<<<$x+$y
bc <<<"scale=3;$x/$y "