#!/bin/bash
./passwordCheck.sh
if [ "$?" -eq 0 ]; then
  echo "1. Create a folder"
  echo "2. Copy a folder"
  echo "3. Set a Password"
else
  echo "Incorrect Password"
fi
