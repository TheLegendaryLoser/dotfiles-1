#!/bin/sh

if [ "$1" = "" ]
then
    echo usage: $0 [directory]
    exit
fi

file_amount=0
for i in $(ls "$1")
do
    file_amount="$(expr $file_amount + 1)"
done

random="$(shuf -i 1-$file_amount -n 1)"

file="$(ls "$1" | sed -n "$random"p)"

echo $1$file
