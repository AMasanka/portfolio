#!/bin/bash

for i in `cat filenames.txt`
do
    if [ -f $i ]; then
        echo "$i : That file exists"
    elif [ -d $i ]; then
        echo "$i : That is a directory"
    else
        echo "$i : I don't know what that is!"
    fi
done