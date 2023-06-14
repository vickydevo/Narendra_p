#!/usr/bin/env bash
read -p "Enter the value of x:" x
read -p "Enter the value of y:" y
sum=$(bc<<<"$x+$y")
division=$(bc<<<"scale=5;$x/$y")
echo "the addition of $x and $y : $sum"
echo "the division of $x and $y: $division"