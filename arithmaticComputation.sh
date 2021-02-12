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

arr[0]=$((dict[1]))
arr[1]=$((dict[2]))
arr[2]=$((dict[3]))
arr[3]=$((dict[4]))

echo ${arr[@]}

for (( a=0; a<3; a++ ))
do
	for (( c=0; c<3; c++ ))
	do
		if [ ${arr[$c]} -le ${arr[$(($c+1))]} ]
		then
			temp=${arr[$c]}
			arr[$c]=${arr[$(($c+1))]}
			arr[$(($c+1))]=$temp
		fi
	done
done

echo ${arr[@]}
