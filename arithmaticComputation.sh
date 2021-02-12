#!/bin/bash -x

echo "ENTER THE THREE NUMBERS: "
read a b c

result1=$(( $a + $b * $c ))

result2=$(( $a * $b +$c ))

echo $result1

echo $result2
