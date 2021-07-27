#! /usr/bin/bash
# @ means unlimited inputs
args=($@)                             #args is an array
echo ${args[0]} ${args[1]} ${args[2]} #args[0] is not $0
# echo $0
echo $@ #all inputs out
echo "length of the array is $#"
