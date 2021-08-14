#!/bin/bash
#read -sp " Enter Your Password: " password_var
echo -e "\033[31m Enter your Password"
read -s password_var
hash1=`cat ./folder1/secret.txt`
hash2=`echo $password_var | sha256sum`
#hash1='cat ./folder1/secret.txt'
#hash2='echo $password_var | sha256sum'
if [ "$hash1" = "$hash2" ]; then
   echo -e "\033[32m Access Granted"
   exit 0
else
   echo "Access Denied"
   exit 1
fi
