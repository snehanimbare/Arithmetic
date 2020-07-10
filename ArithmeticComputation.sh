#!/bin/bash -x

read -p "Enter a :" a
read -p "Enter b :" b
read -p "Enter c :" c
echo "a=$a  b=$b  c=$c"

R1=$(($a+$b*$c))
echo $R1

R2=$(($a*$b*$c))
echo $R2

R3=$(($c+$a/$b))
echo $R3

R4=$(($a%$b+$c))
echo $R4

declare -A expressions
expressions[R1]=$R1
expressions[R2]=$R2
expressions[R3]=$R3
expressions[R4]=$R4
echo ${!expressions[@]}
echo ${expressions[@]}

