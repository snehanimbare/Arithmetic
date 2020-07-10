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

arr[1]=${expressions[R1]}
arr[2]=${expressions[R2]}
arr[3]=${expressions[R3]}
arr[4]=${expressions[R4]}
echo ${arr[@]}

array=($(echo ${arr[@]} | tr " " "\n" | sort -nr ))
echo "Sorted array in Descending Order: ${array[@]}"

array=($(echo ${arr[@]} | tr " " "\n" | sort -n))
echo "Sorted array in ascending Order : ${array[@]}"


