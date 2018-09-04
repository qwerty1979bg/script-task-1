#!/usr/bin/env bash

# Test the output of our "Hello" script
output=$(./hello.sh)

if [ $output != "Hello" ]
then
echo "Expecting: 'Hello', received: '$output'"
exit 1
fi
echo "'Hello' script is good"

#Additionally test an nginx installation script

#run the nginx installation script
./nginx.sh

#check if the nginx has been sucessfully installed
which nginx && echo "nginx IS installed" || (echo "nginx is NOT installed" && exit 1)
exit 0
