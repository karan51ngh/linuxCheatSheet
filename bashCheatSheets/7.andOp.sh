#! /usr/bin/bash
age=10
#  -o or || for or
# if [[ $age -gt 5  &&  $age -lt 15 ]];
# if [ $age -gt 5 -a $age -lt 15 ];
if [ $age -gt 5 ] && [ $age -lt 15 ]; then
	echo "True"
fi
