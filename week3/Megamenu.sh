#!/bin/bash
for i in "$myUrl" = "exit"
do
cd .. #change directory from week3 to portfolio
cd week2 #change directory from portfolio to week2
./passwordCheck.sh # run the passwordCheck.sh script that is saved in week2
if [ "$?" -eq 0 ]; then #condition to print the following menu if password enterde correctly
  echo -e "\033[34m Select an Option"
  echo -e "\033[33m 1. Create a folder"
  echo -e "\033[33m 2. Copy a folder"
  echo -e "\033[33m 3. Set a Password"
  echo -e "\033[33m 4.calculator"
  echo -e "\033[33m 5.Create Week Folders"
  echo -e "\033[33m 6.Check Filenames"
  echo -e "\033[33m 7.Download a File"
  echo "8.exit"
  read -p 'Please type the URL of a file to download or type 'exit' to quit: ' myUrl
  if [ "$myUrl" = "exit" ]; then #condition to download the URL or exit otherwise
  echo "Goodbye!"
  else
  read -p "Enter the location to download " myloc
  wget -O "$myloc" "$myUrl"
  fi

else
  echo "Incorrect Password"
  
fi
done

