#!/usr/bin/env bash

# Test the output of our "Hello" script
output=$(./hello.sh)

if [ $output != "Hello" ]
	then
	echo "Expecting: 'Hello', received: '$output'"
	exit 1
fi

echo "'Hello' script is good"

#check if the nginx has been sucessfully installed
which nginx && echo "nginx IS installed" || (echo "nginx is NOT installed" && exit 1)
