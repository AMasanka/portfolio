#!/bin/bash

getNumber()
{
    REPLY=0
    until [ $REPLY -eq 42 ]; do
    read -p "$1: "
     if [ $REPLY -eq 42 ]; then
       echo "Correct!"
       exit 0
     elif [ $REPLY -gt 42 ]; then
       echo "Too High!"
     else
       echo "Too Low!"
     fi
    done
}

echo "This is the start of the script"
getNumber "Please type a number between 1 and 100"
echo "Thank you"