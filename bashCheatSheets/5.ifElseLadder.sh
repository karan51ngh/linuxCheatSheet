#! /usr/bin/bash
count=10
# always give spaces between  [ *** ]
if [ $count -eq 10 ]; then
	echo "eq 10"
elif [ $count -lt 10 ]; then
	echo "lt 10"
else
	echo "gt 10"
fi
