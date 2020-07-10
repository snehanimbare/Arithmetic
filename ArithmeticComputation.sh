#!/bin/bash -x

read -p "Enter a :" a
read -p "Enter b :" b
read -p "Enter c :" c
echo "a=$a  b=$b  c=$c"

R1=$(($a+$b*$c))
echo $R1

R2=$(($a*$b*$c))
echo $R2
