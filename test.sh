#!/usr/bin/env bash

pole=$(( ( RANDOM % 10 ) +1 ))
function randomnum {
    num=$((RANDOM/10))
    echo "$num" >> file.txt
}
if [[ "$pole" -gt 5 ]]
then
    randomnum
    exit 0
else
    touch badfile.txt
    exit 1
fi

