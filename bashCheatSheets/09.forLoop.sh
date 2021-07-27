#! /usr/bin/bash
for i in 1 2 3 4 5; do
	echo $i
done
echo""
for i in {0..5}; do
	echo $i
done
echo""
for i in {1..5..2}; do
	echo $i
done
echo""
for ((i = 0; i < 5; i++)); do
	echo $i
done
