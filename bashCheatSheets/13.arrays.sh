#! /usr/bin/bash
car=('BMW' 'TOYOTA' 'HONDA' 'SUZUKI')
echo ${car[@]} #@ prints entire array
# printing by index
unset car[2] #to remove a particular value
car[2]='MERCEDES'
echo ""
for i in {0..2}; do
	echo ${car[$i]}
done
echo ${!car[@]} #prints the indices

echo ""
for i in ${!car[@]}; do
	echo ${car[$i]}
done
echo ${!car[@]} #prints the indices
echo ""
echo ${#car[@]} #prints the number of indices
