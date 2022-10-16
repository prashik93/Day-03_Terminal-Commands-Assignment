#! /bin/bash/ -x

echo "Enter Folder name which you want to create"
read usrInput

if [ -d "$usrInput" ]
then
	echo "Folder already exist"
else
	mkdir $usrInput
fi
