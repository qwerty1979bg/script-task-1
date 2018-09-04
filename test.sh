#!/usr/bin/env bash

output=$(./hello.sh)

if [ $output != "Hello" ]
then
echo "Expecting: 'Hello', received: '$output'"
exit 1
fi
echo "All is good"
