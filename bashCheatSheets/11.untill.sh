#! /usr/bin/bash
num=1
# until means, until the condition is met, the loop runs
until [ $num -eq 10 ]; do
	echo "$num"
	num=$((num + 1))
done
