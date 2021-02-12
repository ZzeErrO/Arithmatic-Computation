#!/bin/bash -x

echo "ENTER THE THREE NUMBERS: "
read a b c

result=$(( $a + $b * $c ))

echo $result
