#!/bin/bash

primenums() {

x=0
echo "Insert the range's max number: "
read -a max


if [[ $max =~ ^[0-9]+$ ]]; then 
	x=1
fi

if [ $x -eq 0 ]; then
	echo "Not a number.  Please enter an intager."
	primenums
	return 0

fi

for (( i = 0; i < max; i++ )); do
        for (( j = 2; j < i; j++ )); do
                if [[ $(expr $i % $j) == 0 ]]; then
                        y=0
                        break
                else
                        result=$i
                        y=1
                fi
        done
        if [[ $y -eq 1 ]]; then
                echo $result
        else
                continue
        fi
done
}
primenums
