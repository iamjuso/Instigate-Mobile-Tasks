#!/bin/bash
maxnum() {
	echo -n  "Enter numbers to compare: "
	read -a numbers
	max=${numbers[0]}
	size=${#numbers[@]}

for n in ${numbers[@]}; do

	if [[ $n =~ ^[0-9]+$ ]]; then
		statement=1
	fi
if ! [[ $statement -eq 1 ]]; then      
	echo "Not all inputs are numbers. Please enter an intager."	
	maxnum
	return 0

fi
done

for ((i = 0; i < size; i++)); do
	if [[ ${numbers[i]} -gt $max ]]; then
		max=${numbers[i]}  
	fi
done
	echo $max
}
maxnum
