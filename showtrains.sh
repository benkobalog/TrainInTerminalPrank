#!/bin/bash

sl_params=(a F l)
while true
do
	#Randomise parameters
	rand_int1=$(shuf -i 0-3 -n 1)
	rand_int_array=$(shuf -i 0-2 -n ${rand_int1})
	params=""
	for i in $rand_int_array
	do
		param=${sl_params[$i]}
		params="$param$params"
	done
	echo "parameters: $params"
	echo "CHOO CHOO!!!"
	sl -$params
	#sleep .2
done
