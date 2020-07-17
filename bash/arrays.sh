#!/bin/bash

echo "Define array with indices"

a[0]="val0"
a[1]="val1"

for i in "${a[@]}"
do
  echo $i
done

echo "Define array with round brackets"

b=("val0" "val1")

for i in "${b[@]}"
do
  echo $i
done

echo "Iterate over two array of same length"

a1=("a" "b" "c")
a2=("x" "y" "z")

no_elements=${#a1[*]}
for (( i=0; i<=$(( ${no_elements} -1 )); i++ ))
do
  echo "${a1[$i]} and ${a2[$i]}"
done
