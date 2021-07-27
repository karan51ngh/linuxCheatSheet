#! /usr/bin/bash
n1=4
n2=20
# method 1
echo $((n1 + n2))
echo $((n1 - n2))
echo $((n1 * n2))
echo $((n1 / n2)) #returns int not float
echo $((n1 % n2))
echo ""
# method 2
echo $(expr $n1 + $n2)
echo $(expr $n1 - $n2)
echo $(expr $n1 \* $n2) # cant use * directly
echo $(expr $n1 / $n2)
echo $(expr $n1 % $n2)
