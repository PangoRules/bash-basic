#!/bin/zsh

# read-integer: evaluate the value of an integer.

echo -n "Please enter an integer -> "
read val

if [[ "$val" =~ ^-?[0-9]+$ ]]; then
	if [ "$val" -eq 0 ]; then
		echo "$val is zero."
	else
		if [ "$val" -lt 0 ]; then
			echo "$val is negative."
		else
			echo "$val is positive."
		fi
		if [ $((val % 2)) -eq 0 ]; then
			echo "$val is even."
		else
			echo "$val is odd."
		fi
	fi
else
	echo "Input value is not an integer." >&2
	exit 1
fi
