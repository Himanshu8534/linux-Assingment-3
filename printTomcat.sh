#!/bin/bash

n=$1

if [ $((n%15)) -eq 0 ]; then
    echo "tomcat"

elif [ $((n%3)) -eq 0 ]; then
    echo "tom"

elif [ $((n%5)) -eq 0 ]; then
    echo "cat"

else
    echo "no output"
fi
