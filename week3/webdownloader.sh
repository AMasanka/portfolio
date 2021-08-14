#!/bin/bash
read -p 'Please type the URL of a file to download or type 'exit' to quit: ' myUrl
read -p "Enter the location to download " myloc
wget -O "$myloc" "$myUrl"