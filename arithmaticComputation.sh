#!/bin/bash -x

echo "ENTER THE THREE NUMBERS: "
read a b c

result1=$(( $a + $b * $c ))

result2=$(( $a * $b +$c ))

result3=$(( $c + $a / $b ))

echo $result1

echo $result2

echo $result3
