#!/bin/bash

finder() {

echo "Enter the 1st number: "
        read num1
echo "Enter the 2nd number: "
	read num2
if [[ $num1 -gt $num2  ]]; then
	x=0
else 
	x=1
fi

if [[ $num1 -gt $num2 ]]; then
	if [[ $(expr $num1 % $num2) == 0 ]]; then
		denominator=$num2
	else
		for (( i=$(expr $num2-1); i != 1; i-- )); do
			if [[ $(expr $num1 % $i) == 0 && $(expr $num2 % $i) == 0 ]]; then
				denominator=$i
				break
			fi
		done
	fi
fi

if [[ $num2 -gt $num1 ]]; then
	if [[ $(expr $num2 % $num1) == 0 ]]; then
                denominator=$num1
	else
                for (( i=$(expr $num1-1); i != 1; i-- )); do
                        if [[ $(expr $num2 % $i) == 0 && $(expr $num1 % $i) == 0 ]]; then
				denominator=$i
				break
                        fi
                done
	fi
fi
echo $denominator
}
finder
