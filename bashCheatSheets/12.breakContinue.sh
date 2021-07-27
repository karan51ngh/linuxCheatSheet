#! /usr/bin/bash
for i in {1..5..1}; do
	echo $i
	if [ $i -eq 3 ]; then
		break
	fi
done
echo ""
for i in {1..5..1}; do
	if [ $i -eq 3 ]; then
		continue
	fi
	echo $i
done
