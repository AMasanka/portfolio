#!/bin/bash
read -p "Type the name of the folder you would like to create" folderName # user to type the folder name
mkdir $folderName # To create the folder
read -sp 'Password: ' pass_var # User to type the secret password
echo $pass_var | sha256sum > ./$folderName/secret.txt # To save the password in the file