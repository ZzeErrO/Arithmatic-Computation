#!/bin/bash -x

declare -A dict

echo "ENTER THE THREE NUMBERS: "
read a b c
result1=$(( $a + $b * $c ))

result2=$(( $a * $b +$c ))

result3=$(( $c + $a / $b ))

result4=$(( $a % $b + $c ))

dict[1]=$result1
dict[2]=$result2
dict[3]=$result3
dict[4]=$result4
echo ${dict[@]}
